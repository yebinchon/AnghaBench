
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * login; TYPE_2__* user; } ;
typedef TYPE_1__ srpsrvparm ;
struct TYPE_4__ {int info; int v; int s; int g; int N; } ;
typedef int SSL ;


 int BIO_printf (int ,char*,int *,...) ;
 int SRP_user_pwd_free (TYPE_2__*) ;
 int SSL3_AL_FATAL ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_ERROR_NONE ;
 int * SSL_get_srp_username (int *) ;
 scalar_t__ SSL_set_srp_server_param (int *,int ,int ,int ,int ,int ) ;
 int bio_err ;

__attribute__((used)) static int ssl_srp_server_param_cb(SSL *s, int *ad, void *arg)
{
    srpsrvparm *p = (srpsrvparm *) arg;
    int ret = SSL3_AL_FATAL;

    if (p->login == ((void*)0) && p->user == ((void*)0)) {
        p->login = SSL_get_srp_username(s);
        BIO_printf(bio_err, "SRP username = \"%s\"\n", p->login);
        return -1;
    }

    if (p->user == ((void*)0)) {
        BIO_printf(bio_err, "User %s doesn't exist\n", p->login);
        goto err;
    }

    if (SSL_set_srp_server_param
        (s, p->user->N, p->user->g, p->user->s, p->user->v,
         p->user->info) < 0) {
        *ad = SSL_AD_INTERNAL_ERROR;
        goto err;
    }
    BIO_printf(bio_err,
               "SRP parameters set: username = \"%s\" info=\"%s\" \n",
               p->login, p->user->info);
    ret = SSL_ERROR_NONE;

 err:
    SRP_user_pwd_free(p->user);
    p->user = ((void*)0);
    p->login = ((void*)0);
    return ret;
}
