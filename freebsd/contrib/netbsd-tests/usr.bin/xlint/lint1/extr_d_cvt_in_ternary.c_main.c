
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filecore_direntry {size_t len; int member_0; } ;



int
main(void)
{
 struct filecore_direntry dirent = { 0 };
 size_t uio_resid = 0;
 size_t bytelen = (((dirent.len)<(uio_resid))?(dirent.len):(uio_resid));
 return bytelen;
}
