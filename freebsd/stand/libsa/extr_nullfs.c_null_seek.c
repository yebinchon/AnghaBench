
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {int dummy; } ;
typedef int off_t ;


 int EIO ;
 int errno ;

off_t null_seek (struct open_file *f, off_t offset, int where)
{
 errno = EIO;
 return -1;
}
