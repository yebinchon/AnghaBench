
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int args ;
 int doit (char*) ;
 int exit (int ) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 scalar_t__ help_flag ;
 int initialize_asn1_error_table () ;
 int num_args ;
 int print_version (int *) ;
 int setprogname (char*) ;
 int usage (int) ;
 scalar_t__ version_flag ;

int
main(int argc, char **argv)
{
    int optidx = 0;

    setprogname (argv[0]);
    initialize_asn1_error_table ();
    if(getarg(args, num_args, argc, argv, &optidx))
 usage(1);
    if(help_flag)
 usage(0);
    if(version_flag) {
 print_version(((void*)0));
 exit(0);
    }
    argv += optidx;
    argc -= optidx;
    if (argc != 1)
 usage (1);
    return doit (argv[0]);
}
