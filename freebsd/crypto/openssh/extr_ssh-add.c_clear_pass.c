
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int explicit_bzero (int *,int ) ;
 int free (int *) ;
 int * pass ;
 int strlen (int *) ;

__attribute__((used)) static void
clear_pass(void)
{
 if (pass) {
  explicit_bzero(pass, strlen(pass));
  free(pass);
  pass = ((void*)0);
 }
}
