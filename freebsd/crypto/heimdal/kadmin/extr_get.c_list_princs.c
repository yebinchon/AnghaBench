
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_options {int dummy; } ;
struct get_options {int dummy; } ;


 int context ;
 int getit (struct get_options*,char*,int,char**) ;
 int krb5_warnx (int ,char*) ;

int
list_princs(struct list_options *opt, int argc, char **argv)
{
    if(sizeof(struct get_options) != sizeof(struct list_options)) {
 krb5_warnx(context, "programmer error: sizeof(struct get_options) != sizeof(struct list_options)");
 return 0;
    }
    return getit((struct get_options*)opt, "list", argc, argv);
}
