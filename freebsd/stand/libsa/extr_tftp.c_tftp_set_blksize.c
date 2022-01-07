
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tftp_handle {int tftp_blksize; } ;


 int TFTP_MAX_BLKSIZE ;
 scalar_t__ strtol (char const*,char**,int ) ;

__attribute__((used)) static int
tftp_set_blksize(struct tftp_handle *h, const char *str)
{
 char *endptr;
 int new_blksize;
 int ret = 0;

 if (h == ((void*)0) || str == ((void*)0))
  return (ret);

 new_blksize =
     (unsigned int)strtol(str, &endptr, 0);






 if (*endptr == '\0' && new_blksize >= 8 &&
     new_blksize <= TFTP_MAX_BLKSIZE) {
  h->tftp_blksize = new_blksize;
  ret = 1;
 }

 return (ret);
}
