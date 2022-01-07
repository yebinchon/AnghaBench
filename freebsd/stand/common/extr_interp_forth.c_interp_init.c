
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bf_init () ;
 int interp_include (char*) ;
 int setenv (char*,char*,int) ;

void
interp_init(void)
{

 setenv("script.lang", "forth", 1);
 bf_init();

 interp_include("/boot/loader.rc");
}
