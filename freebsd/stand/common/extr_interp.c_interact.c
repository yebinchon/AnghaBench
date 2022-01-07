
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input ;


 int autoboot_maybe () ;
 int * getenv (char*) ;
 int interp_emit_prompt () ;
 int interp_init () ;
 int interp_run (char*) ;
 int ngets (char*,int) ;
 int printf (char*) ;
 int setenv (char*,char*,int) ;

void
interact(void)
{
 static char input[256];

 interp_init();

 printf("\n");




 autoboot_maybe();




 printf("\nType '?' for a list of commands, 'help' for more detailed help.\n");
 if (getenv("prompt") == ((void*)0))
  setenv("prompt", "${interpret}", 1);
 if (getenv("interpret") == ((void*)0))
  setenv("interpret", "OK", 1);

 for (;;) {
  input[0] = '\0';
  interp_emit_prompt();
  ngets(input, sizeof(input));
  interp_run(input);
 }
}
