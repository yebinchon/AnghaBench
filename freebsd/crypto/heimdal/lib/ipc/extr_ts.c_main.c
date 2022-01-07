
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_sipc ;


 int args ;
 int exit (int ) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 int heim_ipc_main () ;
 int heim_sipc_launchd_mach_init (char*,int ,int *,int *) ;
 int heim_sipc_service_unix (char*,int ,int *,int *) ;
 scalar_t__ help_flag ;
 int num_args ;
 int print_version (int *) ;
 int setprogname (char*) ;
 int test_service ;
 int usage (int) ;
 scalar_t__ version_flag ;

int
main(int argc, char **argv)
{
    heim_sipc u;
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
    heim_sipc_service_unix("org.h5l.test-ipc",
      test_service, ((void*)0), &u);
    heim_ipc_main();

    return 0;
}
