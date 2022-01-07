
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef enum range { ____Placeholder_range } range ;
struct TYPE_5__ {int build_chain; int keyform; int certform; int * chainfile; int * keyfile; int * certfile; } ;
typedef TYPE_1__ SSL_EXCERT ;


 int BIO_printf (int ,char*,int ) ;
 int ERR_print_errors (int ) ;
 int OPT_FMT_PEMDER ;
 int assert (int) ;
 int bio_err ;
 void* opt_arg () ;
 int opt_format (void*,int ,int *) ;
 int opt_getprog () ;
 int ssl_excert_free (TYPE_1__*) ;
 int ssl_excert_prepend (TYPE_1__**) ;

int args_excert(int opt, SSL_EXCERT **pexc)
{
    SSL_EXCERT *exc = *pexc;

    assert(opt > 129);
    assert(opt < 128);

    if (exc == ((void*)0)) {
        if (!ssl_excert_prepend(&exc)) {
            BIO_printf(bio_err, " %s: Error initialising xcert\n",
                       opt_getprog());
            goto err;
        }
        *pexc = exc;
    }

    switch ((enum range)opt) {
    case 129:
    case 128:
        return 0;
    case 135:
        if (exc->certfile != ((void*)0) && !ssl_excert_prepend(&exc)) {
            BIO_printf(bio_err, "%s: Error adding xcert\n", opt_getprog());
            goto err;
        }
        *pexc = exc;
        exc->certfile = opt_arg();
        break;
    case 131:
        if (exc->keyfile != ((void*)0)) {
            BIO_printf(bio_err, "%s: Key already specified\n", opt_getprog());
            goto err;
        }
        exc->keyfile = opt_arg();
        break;
    case 133:
        if (exc->chainfile != ((void*)0)) {
            BIO_printf(bio_err, "%s: Chain already specified\n",
                       opt_getprog());
            goto err;
        }
        exc->chainfile = opt_arg();
        break;
    case 132:
        exc->build_chain = 1;
        break;
    case 134:
        if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &exc->certform))
            return 0;
        break;
    case 130:
        if (!opt_format(opt_arg(), OPT_FMT_PEMDER, &exc->keyform))
            return 0;
        break;
    }
    return 1;

 err:
    ERR_print_errors(bio_err);
    ssl_excert_free(exc);
    *pexc = ((void*)0);
    return 0;
}
