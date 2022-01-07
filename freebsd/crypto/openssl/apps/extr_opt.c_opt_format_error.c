
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long retval; scalar_t__ name; } ;
typedef TYPE_1__ OPT_PAIR ;


 int BIO_printf (int ,char*,scalar_t__,...) ;
 unsigned long OPT_FMT_PEMDER ;
 int bio_err ;
 TYPE_1__* formats ;
 int prog ;

int opt_format_error(const char *s, unsigned long flags)
{
    OPT_PAIR *ap;

    if (flags == OPT_FMT_PEMDER) {
        BIO_printf(bio_err, "%s: Bad format \"%s\"; must be pem or der\n",
                   prog, s);
    } else {
        BIO_printf(bio_err, "%s: Bad format \"%s\"; must be one of:\n",
                   prog, s);
        for (ap = formats; ap->name; ap++)
            if (flags & ap->retval)
                BIO_printf(bio_err, "   %s\n", ap->name);
    }
    return 0;
}
