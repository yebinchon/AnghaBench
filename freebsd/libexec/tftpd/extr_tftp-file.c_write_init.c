
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LOG_ERR ;
 int convert ;
 int errno ;
 int * fdopen (int,char*) ;
 int * file ;
 int strcmp (char const*,char*) ;
 int strerror (int) ;
 int tftp_log (int ,char*,int ) ;

int
write_init(int fd, FILE *f, const char *mode)
{

 if (f == ((void*)0)) {
  file = fdopen(fd, "w");
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
