
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LOG_ERR ;
 int convert ;
 int convert_to_net (int *,int ,int) ;
 int errno ;
 int * fdopen (int,char*) ;
 int * file ;
 int strcmp (char const*,char*) ;
 int strerror (int) ;
 int tftp_log (int ,char*,int ) ;

int
read_init(int fd, FILE *f, const char *mode)
{

 convert_to_net(((void*)0), 0, 1);
 if (f == ((void*)0)) {
  file = fdopen(fd, "r");
  if (file == ((void*)0)) {
   int en = errno;
   tftp_log(LOG_ERR, "fdopen() failed: %s",
       strerror(errno));
   return en;
  }
 } else
  file = f;
 convert = !strcmp(mode, "netascii");
 return 0;
}
