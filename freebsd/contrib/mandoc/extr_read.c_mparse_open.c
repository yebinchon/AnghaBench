
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mparse {int gzip; } ;


 int O_RDONLY ;
 int errno ;
 int free (char*) ;
 int mandoc_asprintf (char**,char*,char const*) ;
 int open (char const*,int ) ;
 int strcmp (char*,char*) ;
 char* strrchr (char const*,char) ;

int
mparse_open(struct mparse *curp, const char *file)
{
 char *cp;
 int fd, save_errno;

 cp = strrchr(file, '.');
 curp->gzip = (cp != ((void*)0) && ! strcmp(cp + 1, "gz"));



 if ((fd = open(file, O_RDONLY)) != -1)
  return fd;






 if ( ! curp->gzip) {
  save_errno = errno;
  mandoc_asprintf(&cp, "%s.gz", file);
  fd = open(cp, O_RDONLY);
  free(cp);
  errno = save_errno;
  if (fd != -1) {
   curp->gzip = 1;
   return fd;
  }
 }



 return -1;
}
