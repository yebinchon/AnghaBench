
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int auto_solib_add ;
 int no_shared_libraries (int *,int) ;
 int solib_add (int *,int,int *,int ) ;

__attribute__((used)) static void
reload_shared_libraries (char *ignored, int from_tty)
{
  no_shared_libraries (((void*)0), from_tty);
  solib_add (((void*)0), from_tty, ((void*)0), auto_solib_add);
}
