
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UPRINTF (char*,char*) ;
 int code ;
 int controlediting () ;
 int editing ;
 int fputs (char*,int ) ;
 int togglevar (int,char**,int *,char*) ;
 int ttyout ;
 scalar_t__ verbose ;

void
setedit(int argc, char *argv[])
{
 code = togglevar(argc, argv, &editing, "Editing mode");
 controlediting();

}
