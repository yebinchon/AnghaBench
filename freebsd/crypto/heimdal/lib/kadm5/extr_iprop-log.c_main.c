
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;


 int args ;
 int commands ;
 int context ;
 int errx (int,char*,int) ;
 int exit (int ) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 scalar_t__ help_flag ;
 int krb5_init_context (int *) ;
 int num_args ;
 int print_version (int *) ;
 int setprogname (char*) ;
 int sl_command (int ,int,char**) ;
 int usage (int) ;
 scalar_t__ version_flag ;
 int warnx (char*,char*) ;

int
main(int argc, char **argv)
{
    int optidx = 0;
    krb5_error_code ret;

    setprogname(argv[0]);

    if(getarg(args, num_args, argc, argv, &optidx))
 usage(1);
    if(help_flag)
 usage(0);
    if(version_flag) {
 print_version(((void*)0));
 exit(0);
    }
    argc -= optidx;
    argv += optidx;
    if(argc == 0)
 usage(1);

    ret = krb5_init_context(&context);
    if (ret)
 errx(1, "krb5_init_context failed with: %d\n", ret);

    ret = sl_command(commands, argc, argv);
    if(ret == -1)
 warnx ("unrecognized command: %s", argv[0]);
    return ret;
}
