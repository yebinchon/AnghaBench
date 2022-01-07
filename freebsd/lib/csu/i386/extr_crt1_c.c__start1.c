
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fptr ;


 int _DYNAMIC ;
 int _init_tls () ;
 int _mcleanup ;
 int atexit (int ) ;
 int eprol ;
 int etext ;
 int exit (int ) ;
 int handle_argv (int,char**,char**) ;
 int handle_static_init (int,char**,char**) ;
 int main (int,char**,char**) ;
 int monstartup (int *,int *) ;
 int process_irelocs () ;

void
_start1(fptr cleanup, int argc, char *argv[])
{
 char **env;

 env = argv + argc + 1;
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
