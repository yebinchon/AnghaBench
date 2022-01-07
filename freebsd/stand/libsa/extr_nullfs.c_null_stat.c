
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct open_file {int dummy; } ;


 int EIO ;

int null_stat (struct open_file *f, struct stat *sb)
{
 return EIO;
}
