
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int interp_include (char*) ;
 int setenv (char*,char*,int) ;

void
interp_init(void)
{

 setenv("script.lang", "simple", 1);

 interp_include("/boot/loader.rc");
}
