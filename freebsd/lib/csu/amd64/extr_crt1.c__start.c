
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _DYNAMIC ;
 int _init_tls () ;
 void _mcleanup () ;
 int atexit (void (*) ()) ;
 int eprol ;
 int etext ;
 int exit (int ) ;
 int handle_argv (int,char**,char**) ;
 int handle_static_init (int,char**,char**) ;
 int main (int,char**,char**) ;
 int monstartup (int *,int *) ;
 int process_irelocs () ;

void
_start(char **ap, void (*cleanup)(void))
{
 int argc;
 char **argv;
 char **env;

 argc = *(long *)(void *)ap;
 argv = ap + 1;
 env = ap + 2 + argc;
 handle_argv(argc, argv, env);

 if (&_DYNAMIC != ((void*)0)) {
  atexit(cleanup);
 } else {
  process_irelocs();
  _init_tls();
 }







 handle_static_init(argc, argv, env);
 exit(main(argc, argv, env));
}
