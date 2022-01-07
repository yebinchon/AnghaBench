
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct get_options {int dummy; } ;


 int getit (struct get_options*,char*,int,char**) ;

int
get_entry(struct get_options *opt, int argc, char **argv)
{
    return getit(opt, "get", argc, argv);
}
