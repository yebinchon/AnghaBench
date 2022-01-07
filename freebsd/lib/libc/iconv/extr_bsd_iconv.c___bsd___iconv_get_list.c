
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _citrus_esdb_get_list (char***,size_t*,int) ;
 int errno ;

int
__bsd___iconv_get_list(char ***rlist, size_t *rsz, bool sorted)
{
 int ret;

 ret = _citrus_esdb_get_list(rlist, rsz, sorted);
 if (ret) {
  errno = ret;
  return (-1);
 }

 return (0);
}
