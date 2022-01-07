
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {int dummy; } ;


 int EINVAL ;

int null_open (const char *path, struct open_file *f)
{
 return EINVAL;
}
