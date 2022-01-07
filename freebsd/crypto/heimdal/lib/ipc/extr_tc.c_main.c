
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int args ;
 int exit (int ) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 scalar_t__ help_flag ;
 int num_args ;
 int print_version (int *) ;
 int setprogname (char*) ;
 int test_ipc (char*) ;
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




    test_ipc("ANY:org.h5l.test-ipc");
    test_ipc("UNIX:org.h5l.test-ipc");

    return 0;
}
