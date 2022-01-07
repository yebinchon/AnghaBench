
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {unsigned int version; TYPE_2__* (* smeth ) () ;} ;
typedef TYPE_1__ version_info ;
struct TYPE_23__ {int legacy_version; TYPE_4__* pre_proc_exts; } ;
struct TYPE_22__ {int parsed; int data; scalar_t__ present; } ;
struct TYPE_21__ {int client_version; unsigned int version; scalar_t__ hello_retry_request; TYPE_2__ const* method; } ;
struct TYPE_20__ {int version; } ;
typedef TYPE_2__ SSL_METHOD ;
typedef TYPE_3__ SSL ;
typedef TYPE_4__ RAW_EXTENSION ;
typedef int PACKET ;
typedef int DOWNGRADE ;
typedef TYPE_5__ CLIENTHELLO_MSG ;


 int DOWNGRADE_NONE ;

 int PACKET_as_length_prefixed_1 (int *,int *) ;
 scalar_t__ PACKET_get_net_2 (int *,unsigned int*) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL3_VERSION ;
 scalar_t__ SSL_HRR_NONE ;
 int SSL_IS_DTLS (TYPE_3__*) ;
 int SSL_IS_TLS13 (TYPE_3__*) ;
 int SSL_R_BAD_LEGACY_VERSION ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_R_UNSUPPORTED_PROTOCOL ;
 int SSL_R_VERSION_TOO_LOW ;
 int SSL_R_WRONG_SSL_VERSION ;
 int TLS1_2_VERSION ;
 unsigned int TLS1_3_VERSION ;
 size_t TLSEXT_IDX_supported_versions ;

 int check_for_downgrade (TYPE_3__*,unsigned int,int *) ;
 TYPE_1__* dtls_version_table ;
 scalar_t__ ssl_method_error (TYPE_3__*,TYPE_2__ const*) ;
 scalar_t__ ssl_version_supported (TYPE_3__*,unsigned int,TYPE_2__ const**) ;
 TYPE_2__* stub1 () ;
 TYPE_1__* tls_version_table ;
 scalar_t__ version_cmp (TYPE_3__*,int,unsigned int) ;

int ssl_choose_server_version(SSL *s, CLIENTHELLO_MSG *hello, DOWNGRADE *dgrd)
{
    int server_version = s->method->version;
    int client_version = hello->legacy_version;
    const version_info *vent;
    const version_info *table;
    int disabled = 0;
    RAW_EXTENSION *suppversions;

    s->client_version = client_version;

    switch (server_version) {
    default:
        if (!SSL_IS_TLS13(s)) {
            if (version_cmp(s, client_version, s->version) < 0)
                return SSL_R_WRONG_SSL_VERSION;
            *dgrd = DOWNGRADE_NONE;







            return 0;
        }





    case 128:
        table = tls_version_table;
        break;
    case 129:
        table = dtls_version_table;
        break;
    }

    suppversions = &hello->pre_proc_exts[TLSEXT_IDX_supported_versions];


    if (!suppversions->present && s->hello_retry_request != SSL_HRR_NONE)
        return SSL_R_UNSUPPORTED_PROTOCOL;

    if (suppversions->present && !SSL_IS_DTLS(s)) {
        unsigned int candidate_vers = 0;
        unsigned int best_vers = 0;
        const SSL_METHOD *best_method = ((void*)0);
        PACKET versionslist;

        suppversions->parsed = 1;

        if (!PACKET_as_length_prefixed_1(&suppversions->data, &versionslist)) {

            return SSL_R_LENGTH_MISMATCH;
        }
        if (client_version <= SSL3_VERSION)
            return SSL_R_BAD_LEGACY_VERSION;

        while (PACKET_get_net_2(&versionslist, &candidate_vers)) {
            if (version_cmp(s, candidate_vers, best_vers) <= 0)
                continue;
            if (ssl_version_supported(s, candidate_vers, &best_method))
                best_vers = candidate_vers;
        }
        if (PACKET_remaining(&versionslist) != 0) {

            return SSL_R_LENGTH_MISMATCH;
        }

        if (best_vers > 0) {
            if (s->hello_retry_request != SSL_HRR_NONE) {




                if (best_vers != TLS1_3_VERSION)
                    return SSL_R_UNSUPPORTED_PROTOCOL;
                return 0;
            }
            check_for_downgrade(s, best_vers, dgrd);
            s->version = best_vers;
            s->method = best_method;
            return 0;
        }
        return SSL_R_UNSUPPORTED_PROTOCOL;
    }





    if (version_cmp(s, client_version, TLS1_3_VERSION) >= 0)
        client_version = TLS1_2_VERSION;





    for (vent = table; vent->version != 0; ++vent) {
        const SSL_METHOD *method;

        if (vent->smeth == ((void*)0) ||
            version_cmp(s, client_version, vent->version) < 0)
            continue;
        method = vent->smeth();
        if (ssl_method_error(s, method) == 0) {
            check_for_downgrade(s, vent->version, dgrd);
            s->version = vent->version;
            s->method = method;
            return 0;
        }
        disabled = 1;
    }
    return disabled ? SSL_R_UNSUPPORTED_PROTOCOL : SSL_R_VERSION_TOO_LOW;
}
