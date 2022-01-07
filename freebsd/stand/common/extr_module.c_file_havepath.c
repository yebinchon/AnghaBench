
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* arch_getdev ) (int *,char const*,char const**) ;} ;


 TYPE_1__ archsw ;
 int * strchr (char const*,char) ;
 int stub1 (int *,char const*,char const**) ;

__attribute__((used)) static int
file_havepath(const char *name)
{
 const char *cp;

 archsw.arch_getdev(((void*)0), name, &cp);
 return (cp != name || strchr(name, '/') != ((void*)0));
}
