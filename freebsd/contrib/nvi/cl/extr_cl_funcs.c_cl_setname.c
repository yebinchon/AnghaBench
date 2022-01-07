
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GS ;


 int GO_TERM ;
 char* OG_STR (int *,int ) ;
 char* XTERM_RENAME ;
 int fflush (int ) ;
 int printf (char*,char*) ;
 int stdout ;

void
cl_setname(GS *gp, char *name)
{



 (void)printf("\033]0;%s\007", name == ((void*)0) ? OG_STR(gp, GO_TERM) : name);
 (void)fflush(stdout);

}
