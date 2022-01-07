
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int args ;
 int exit (int ) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 int heim_ipc_main () ;
 scalar_t__ help_flag ;
 int num_args ;
 int print_version (int *) ;
 int setprogname (char*) ;
 int setup_sockets () ;
 int usage (int) ;
 scalar_t__ version_flag ;

int
main(int argc, char **argv)
{
    int optidx = 0;

    setprogname(argv[0]);

    if (getarg(args, num_args, argc, argv, &optidx))
 usage(1);

    if (help_flag)
 usage(0);

    if (version_flag) {
 print_version(((void*)0));
 exit(0);
    }

    setup_sockets();

    heim_ipc_main();

    return 0;
}
