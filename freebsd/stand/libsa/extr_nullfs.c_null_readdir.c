
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {int dummy; } ;
struct dirent {int dummy; } ;


 int EIO ;

int null_readdir(struct open_file *f, struct dirent *d)
{
 return EIO;
}
