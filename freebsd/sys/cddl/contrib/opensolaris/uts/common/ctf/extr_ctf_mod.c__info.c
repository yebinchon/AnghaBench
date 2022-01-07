
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modinfo {int dummy; } ;


 int mod_info (int *,struct modinfo*) ;
 int modlinkage ;

int
_info(struct modinfo *mip)
{
 return (mod_info(&modlinkage, mip));
}
