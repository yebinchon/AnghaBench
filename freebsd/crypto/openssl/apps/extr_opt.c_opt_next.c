
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ossl_uintmax_t ;
typedef int ossl_intmax_t ;
struct TYPE_5__ {int retval; } ;
struct TYPE_4__ {char* name; char valtype; int retval; } ;
typedef TYPE_1__ OPTIONS ;


 int BIO_printf (int ,char*,int ,char*,...) ;
 int OPT_FMT_ANY ;
 int OPT_FMT_PDE ;
 int OPT_FMT_PDS ;
 int OPT_FMT_PEMDER ;
 int app_isdir (char*) ;
 char* arg ;
 char** argv ;
 int bio_err ;
 char* dunno ;
 char* flag ;
 int opt_format (char*,int ,int*) ;
 int opt_imax (char*,int *) ;
 size_t opt_index ;
 int opt_int (char*,int*) ;
 int opt_long (char*,long*) ;
 int opt_ulong (char*,unsigned long*) ;
 int opt_umax (char*,int *) ;
 TYPE_1__* opts ;
 int prog ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 TYPE_2__* unknown ;

int opt_next(void)
{
    char *p;
    const OPTIONS *o;
    int ival;
    long lval;
    unsigned long ulval;
    ossl_intmax_t imval;
    ossl_uintmax_t umval;


    arg = ((void*)0);
    p = argv[opt_index];
    if (p == ((void*)0))
        return 0;


    if (*p != '-')
        return 0;


    opt_index++;
    if (strcmp(p, "--") == 0)
        return 0;


    if (*++p == '-')
        p++;
    flag = p - 1;


    if ((arg = strchr(p, '=')) != ((void*)0))
        *arg++ = '\0';
    for (o = opts; o->name; ++o) {

        if (strcmp(p, o->name) != 0)
            continue;


        if (o->valtype == 0 || o->valtype == '-') {
            if (arg) {
                BIO_printf(bio_err,
                           "%s: Option -%s does not take a value\n", prog, p);
                return -1;
            }
            return o->retval;
        }


        if (arg == ((void*)0)) {
            if (argv[opt_index] == ((void*)0)) {
                BIO_printf(bio_err,
                           "%s: Option -%s needs a value\n", prog, o->name);
                return -1;
            }
            arg = argv[opt_index++];
        }


        switch (o->valtype) {
        default:
        case 's':

            break;
        case '/':
            if (app_isdir(arg) > 0)
                break;
            BIO_printf(bio_err, "%s: Not a directory: %s\n", prog, arg);
            return -1;
        case '<':

            break;
        case '>':

            break;
        case 'p':
        case 'n':
            if (!opt_int(arg, &ival)
                    || (o->valtype == 'p' && ival <= 0)) {
                BIO_printf(bio_err,
                           "%s: Non-positive number \"%s\" for -%s\n",
                           prog, arg, o->name);
                return -1;
            }
            break;
        case 'M':
            if (!opt_imax(arg, &imval)) {
                BIO_printf(bio_err,
                           "%s: Invalid number \"%s\" for -%s\n",
                           prog, arg, o->name);
                return -1;
            }
            break;
        case 'U':
            if (!opt_umax(arg, &umval)) {
                BIO_printf(bio_err,
                           "%s: Invalid number \"%s\" for -%s\n",
                           prog, arg, o->name);
                return -1;
            }
            break;
        case 'l':
            if (!opt_long(arg, &lval)) {
                BIO_printf(bio_err,
                           "%s: Invalid number \"%s\" for -%s\n",
                           prog, arg, o->name);
                return -1;
            }
            break;
        case 'u':
            if (!opt_ulong(arg, &ulval)) {
                BIO_printf(bio_err,
                           "%s: Invalid number \"%s\" for -%s\n",
                           prog, arg, o->name);
                return -1;
            }
            break;
        case 'c':
        case 'E':
        case 'F':
        case 'f':
            if (opt_format(arg,
                           o->valtype == 'c' ? OPT_FMT_PDS :
                           o->valtype == 'E' ? OPT_FMT_PDE :
                           o->valtype == 'F' ? OPT_FMT_PEMDER
                           : OPT_FMT_ANY, &ival))
                break;
            BIO_printf(bio_err,
                       "%s: Invalid format \"%s\" for -%s\n",
                       prog, arg, o->name);
            return -1;
        }


        return o->retval;
    }
    if (unknown != ((void*)0)) {
        dunno = p;
        return unknown->retval;
    }
    BIO_printf(bio_err, "%s: Option unknown option -%s\n", prog, p);
    return -1;
}
