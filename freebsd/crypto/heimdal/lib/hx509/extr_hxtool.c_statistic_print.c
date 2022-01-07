
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statistic_print_options {int type_integer; } ;


 int context ;
 int errx (int,char*) ;
 int hx509_query_unparse_stats (int ,int,int ) ;
 int * stat_file_string ;
 int stdout ;

int
statistic_print(struct statistic_print_options*opt, int argc, char **argv)
{
    int type = 0;

    if (stat_file_string == ((void*)0))
 errx(1, "no stat file");

    if (opt->type_integer)
 type = opt->type_integer;

    hx509_query_unparse_stats(context, type, stdout);
    return 0;
}
