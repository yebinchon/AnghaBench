
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODCTL_UNLOAD ;
 int __UNCONST (char const*) ;
 int modctl (int ,int ) ;

__attribute__((used)) static void
unload_cleanup(const char *name)
{

 (void)modctl(MODCTL_UNLOAD, __UNCONST(name));
}
