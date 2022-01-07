
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pre ;
typedef int buf ;
typedef int SSL ;


 int UNBOUND_CONTROL_VERSION ;
 int printf (char*,char*) ;
 scalar_t__ remote_read (int *,int,char*,int) ;
 int remote_write (int *,int,char const*,int ) ;
 int send_eof (int *,int) ;
 int send_file (int *,int,int ,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int stdin ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
go_cmd(SSL* ssl, int fd, int quiet, int argc, char* argv[])
{
 char pre[10];
 const char* space=" ";
 const char* newline="\n";
 int was_error = 0, first_line = 1;
 int i;
 char buf[1024];
 snprintf(pre, sizeof(pre), "UBCT%d ", UNBOUND_CONTROL_VERSION);
 remote_write(ssl, fd, pre, strlen(pre));
 for(i=0; i<argc; i++) {
  remote_write(ssl, fd, space, strlen(space));
  remote_write(ssl, fd, argv[i], strlen(argv[i]));
 }
 remote_write(ssl, fd, newline, strlen(newline));

 if(argc == 1 && strcmp(argv[0], "load_cache") == 0) {
  send_file(ssl, fd, stdin, buf, sizeof(buf));
 }
 else if(argc >= 1 && (strcmp(argv[0], "local_zones") == 0 ||
  strcmp(argv[0], "local_zones_remove") == 0 ||
  strcmp(argv[0], "local_datas") == 0 ||
  strcmp(argv[0], "view_local_datas") == 0 ||
  strcmp(argv[0], "local_datas_remove") == 0)) {
  send_file(ssl, fd, stdin, buf, sizeof(buf));
  send_eof(ssl, fd);
 }

 while(1) {
  if(remote_read(ssl, fd, buf, sizeof(buf)) == 0) {
   break;
  }
  if(first_line && strncmp(buf, "error", 5) == 0) {
   printf("%s", buf);
   was_error = 1;
  } else if (!quiet)
   printf("%s", buf);

  first_line = 0;
 }
 return was_error;
}
