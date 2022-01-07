
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned long inh_flags; int flags; int iplen; int ip; int emaillen; int email; int hostflags; int * hosts; int policies; int check_time; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;


 int X509_TRUST_DEFAULT ;
 int X509_VERIFY_PARAM_set1_email (TYPE_1__*,int ,int ) ;
 int X509_VERIFY_PARAM_set1_ip (TYPE_1__*,int ,int ) ;
 int X509_VERIFY_PARAM_set1_policies (TYPE_1__*,int ) ;
 unsigned long X509_VP_FLAG_DEFAULT ;
 unsigned long X509_VP_FLAG_LOCKED ;
 unsigned long X509_VP_FLAG_ONCE ;
 unsigned long X509_VP_FLAG_OVERWRITE ;
 unsigned long X509_VP_FLAG_RESET_FLAGS ;
 int X509_V_FLAG_USE_CHECK_TIME ;
 int auth_level ;
 int depth ;
 int email ;
 int hosts ;
 int ip ;
 int policies ;
 int purpose ;
 int * sk_OPENSSL_STRING_deep_copy (int *,int ,int ) ;
 int sk_OPENSSL_STRING_pop_free (int *,int ) ;
 int str_copy ;
 int str_free ;
 scalar_t__ test_x509_verify_param_copy (int ,int *) ;
 int trust ;
 int x509_verify_param_copy (int ,int) ;

int X509_VERIFY_PARAM_inherit(X509_VERIFY_PARAM *dest,
                              const X509_VERIFY_PARAM *src)
{
    unsigned long inh_flags;
    int to_default, to_overwrite;
    if (!src)
        return 1;
    inh_flags = dest->inh_flags | src->inh_flags;

    if (inh_flags & X509_VP_FLAG_ONCE)
        dest->inh_flags = 0;

    if (inh_flags & X509_VP_FLAG_LOCKED)
        return 1;

    if (inh_flags & X509_VP_FLAG_DEFAULT)
        to_default = 1;
    else
        to_default = 0;

    if (inh_flags & X509_VP_FLAG_OVERWRITE)
        to_overwrite = 1;
    else
        to_overwrite = 0;

    x509_verify_param_copy(purpose, 0);
    x509_verify_param_copy(trust, X509_TRUST_DEFAULT);
    x509_verify_param_copy(depth, -1);
    x509_verify_param_copy(auth_level, -1);



    if (to_overwrite || !(dest->flags & X509_V_FLAG_USE_CHECK_TIME)) {
        dest->check_time = src->check_time;
        dest->flags &= ~X509_V_FLAG_USE_CHECK_TIME;

    }

    if (inh_flags & X509_VP_FLAG_RESET_FLAGS)
        dest->flags = 0;

    dest->flags |= src->flags;

    if (test_x509_verify_param_copy(policies, ((void*)0))) {
        if (!X509_VERIFY_PARAM_set1_policies(dest, src->policies))
            return 0;
    }


    if (test_x509_verify_param_copy(hosts, ((void*)0))) {
        sk_OPENSSL_STRING_pop_free(dest->hosts, str_free);
        dest->hosts = ((void*)0);
        if (src->hosts) {
            dest->hosts =
                sk_OPENSSL_STRING_deep_copy(src->hosts, str_copy, str_free);
            if (dest->hosts == ((void*)0))
                return 0;
            dest->hostflags = src->hostflags;
        }
    }

    if (test_x509_verify_param_copy(email, ((void*)0))) {
        if (!X509_VERIFY_PARAM_set1_email(dest, src->email, src->emaillen))
            return 0;
    }

    if (test_x509_verify_param_copy(ip, ((void*)0))) {
        if (!X509_VERIFY_PARAM_set1_ip(dest, src->ip, src->iplen))
            return 0;
    }

    return 1;
}
