
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {int dummy; } ;


 int EROFS ;

int null_write (struct open_file *f, const void *buf, size_t size, size_t *resid)
{
 return EROFS;
}
