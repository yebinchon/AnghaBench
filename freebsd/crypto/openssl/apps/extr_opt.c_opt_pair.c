
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int retval; scalar_t__ name; } ;
typedef TYPE_1__ OPT_PAIR ;


 int BIO_printf (int ,char*,scalar_t__) ;
 int bio_err ;
 scalar_t__ prog ;
 scalar_t__ strcmp (scalar_t__,char const*) ;

int opt_pair(const char *name, const OPT_PAIR* pairs, int *result)
{
    const OPT_PAIR *pp;

    for (pp = pairs; pp->name; pp++)
        if (strcmp(pp->name, name) == 0) {
            *result = pp->retval;
            return 1;
        }
    BIO_printf(bio_err, "%s: Value must be one of:\n", prog);
    for (pp = pairs; pp->name; pp++)
        BIO_printf(bio_err, "\t%s\n", pp->name);
    return 0;
}
