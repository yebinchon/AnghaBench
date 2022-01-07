
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int dummy; } ;


 int __xuname (int,struct utsname*) ;

int
uname(struct utsname *name)
{
 return __xuname(32, name);
}
