
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int PJDLOG_ASSERT (int) ;
 int PJDLOG_MODE_STD ;
 int PJDLOG_MODE_SYSLOG ;
 scalar_t__ atoi (char*) ;
 int pjdlog_init (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int tls_exec_client (char*,scalar_t__,char*,char*,char*,char*,scalar_t__,scalar_t__) ;
 int tls_exec_server (char*,scalar_t__,char*,char*,scalar_t__) ;

__attribute__((used)) static int
tls_exec(int argc, char *argv[])
{

 PJDLOG_ASSERT(argc > 3);
 PJDLOG_ASSERT(strcmp(argv[0], "tls") == 0);

 pjdlog_init(atoi(argv[3]) == 0 ? PJDLOG_MODE_SYSLOG : PJDLOG_MODE_STD);

 if (strcmp(argv[2], "client") == 0) {
  if (argc != 10)
   return (EINVAL);
  tls_exec_client(argv[1], atoi(argv[3]),
      argv[4][0] == '\0' ? ((void*)0) : argv[4], argv[5], argv[6],
      argv[7], atoi(argv[8]), atoi(argv[9]));
 } else if (strcmp(argv[2], "server") == 0) {
  if (argc != 7)
   return (EINVAL);
  tls_exec_server(argv[1], atoi(argv[3]), argv[4], argv[5],
      atoi(argv[6]));
 }
 return (EINVAL);
}
