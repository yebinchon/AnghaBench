
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int EX_OSERR ;
 int err (int ,char*,char const*) ;
 size_t write (int,void*,size_t) ;

__attribute__((used)) static void
write_file(int fd, void *buffer, size_t buflen, const char *filename)
{
 ssize_t len;

 len = write(fd, buffer, buflen);
 if (len < 0)
  err(EX_OSERR, "write_file: %s", filename);
 if (len < buflen)
  err(EX_OSERR, "write_file: short write: %s", filename);
}
