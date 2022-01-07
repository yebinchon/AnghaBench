
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int args ;
 int commands ;
 int context ;
 int errx (int,char*,int) ;
 int exit (int ) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 scalar_t__ help_flag ;
 int hx509_context_free (int *) ;
 int hx509_context_init (int *) ;
 int hx509_query_statistic_file (int ,scalar_t__) ;
 int num_args ;
 int print_version (int *) ;
 int setprogname (char*) ;
 int sl_command (int ,int,char**) ;
 scalar_t__ stat_file_string ;
 int usage (int) ;
 scalar_t__ version_flag ;
 int warnx (char*,char*) ;

int
main(int argc, char **argv)
{
    int ret, optidx = 0;

    setprogname (argv[0]);

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

    if (argc == 0)
 usage(1);

    ret = hx509_context_init(&context);
    if (ret)
 errx(1, "hx509_context_init failed with %d", ret);

    if (stat_file_string)
 hx509_query_statistic_file(context, stat_file_string);

    ret = sl_command(commands, argc, argv);
    if(ret == -1)
 warnx ("unrecognized command: %s", argv[0]);

    hx509_context_free(&context);

    return ret;
}
