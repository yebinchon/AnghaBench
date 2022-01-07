
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* require_preauth; void* encode_as_rep_as_tgs_rep; void* tgt_use_strongest_session_key; void* preauth_use_strongest_session_key; void* svc_use_strongest_session_key; void* use_strongest_server_key; void* check_ticket_addresses; void* allow_null_ticket_addresses; void* allow_anonymous; void* enable_pkinit; void* pkinit_princ_in_cert; void* pkinit_require_binding; int digests_allowed; void* pkinit_dh_min_bits; void* pkinit_kdc_friendly_name; void* pkinit_kdc_ocsp_file; void* pkinit_kdc_revoke; void* pkinit_kdc_cert_pool; void* pkinit_kdc_anchors; void* pkinit_kdc_identity; scalar_t__ kdc_warn_pwexpire; void* trpolicy; void* max_datagram_reply_length; void* enable_kx509; int * kx509_template; int * kx509_ca; void* enable_digest; int * logf; scalar_t__ num_db; int * db; } ;
typedef TYPE_1__ krb5_kdc_configuration ;
typedef int krb5_error_code ;
typedef int krb5_context ;


 int ENOMEM ;
 void* FALSE ;
 void* TRPOLICY_ALLOW_PER_PRINCIPAL ;
 void* TRPOLICY_ALWAYS_CHECK ;
 void* TRPOLICY_ALWAYS_HONOUR_REQUEST ;
 void* TRUE ;
 int _kdc_digestunits ;
 TYPE_1__* calloc (int,int) ;
 int kdc_log (int ,TYPE_1__*,int ,char*,...) ;
 void* krb5_config_get_bool_default (int ,int *,void*,char*,char*,int *) ;
 void* krb5_config_get_int_default (int ,int *,int,char*,char*,int *) ;
 void* krb5_config_get_string (int ,int *,char*,char*,int *) ;
 char* krb5_config_get_string_default (int ,int *,char*,char*,char*,int *) ;
 void* krb5_config_get_strings (int ,int *,char*,char*,int *) ;
 scalar_t__ krb5_config_get_time_default (int ,int *,scalar_t__,char*,char*,int *) ;
 int krb5_set_error_message (int ,int ,char*) ;
 int parse_flags (char const*,int ,int ) ;
 scalar_t__ strcasecmp (char const*,char*) ;

krb5_error_code
krb5_kdc_get_config(krb5_context context, krb5_kdc_configuration **config)
{
    krb5_kdc_configuration *c;

    c = calloc(1, sizeof(*c));
    if (c == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, "malloc: out of memory");
 return ENOMEM;
    }

    c->require_preauth = TRUE;
    c->kdc_warn_pwexpire = 0;
    c->encode_as_rep_as_tgs_rep = FALSE;
    c->tgt_use_strongest_session_key = FALSE;
    c->preauth_use_strongest_session_key = FALSE;
    c->svc_use_strongest_session_key = FALSE;
    c->use_strongest_server_key = TRUE;
    c->check_ticket_addresses = TRUE;
    c->allow_null_ticket_addresses = TRUE;
    c->allow_anonymous = FALSE;
    c->trpolicy = TRPOLICY_ALWAYS_CHECK;
    c->enable_pkinit = FALSE;
    c->pkinit_princ_in_cert = TRUE;
    c->pkinit_require_binding = TRUE;
    c->db = ((void*)0);
    c->num_db = 0;
    c->logf = ((void*)0);

    c->require_preauth =
 krb5_config_get_bool_default(context, ((void*)0),
         c->require_preauth,
         "kdc", "require-preauth", ((void*)0));
    c->tgt_use_strongest_session_key =
 krb5_config_get_bool_default(context, ((void*)0),
         c->tgt_use_strongest_session_key,
         "kdc",
         "tgt-use-strongest-session-key", ((void*)0));
    c->preauth_use_strongest_session_key =
 krb5_config_get_bool_default(context, ((void*)0),
         c->preauth_use_strongest_session_key,
         "kdc",
         "preauth-use-strongest-session-key", ((void*)0));
    c->svc_use_strongest_session_key =
 krb5_config_get_bool_default(context, ((void*)0),
         c->svc_use_strongest_session_key,
         "kdc",
         "svc-use-strongest-session-key", ((void*)0));
    c->use_strongest_server_key =
 krb5_config_get_bool_default(context, ((void*)0),
         c->use_strongest_server_key,
         "kdc",
         "use-strongest-server-key", ((void*)0));

    c->check_ticket_addresses =
 krb5_config_get_bool_default(context, ((void*)0),
         c->check_ticket_addresses,
         "kdc",
         "check-ticket-addresses", ((void*)0));
    c->allow_null_ticket_addresses =
 krb5_config_get_bool_default(context, ((void*)0),
         c->allow_null_ticket_addresses,
         "kdc",
         "allow-null-ticket-addresses", ((void*)0));

    c->allow_anonymous =
 krb5_config_get_bool_default(context, ((void*)0),
         c->allow_anonymous,
         "kdc",
         "allow-anonymous", ((void*)0));

    c->max_datagram_reply_length =
 krb5_config_get_int_default(context,
        ((void*)0),
        1400,
        "kdc",
        "max-kdc-datagram-reply-length",
        ((void*)0));

    {
 const char *trpolicy_str;

 trpolicy_str =
     krb5_config_get_string_default(context, ((void*)0), "DEFAULT", "kdc",
        "transited-policy", ((void*)0));
 if(strcasecmp(trpolicy_str, "always-check") == 0) {
     c->trpolicy = TRPOLICY_ALWAYS_CHECK;
 } else if(strcasecmp(trpolicy_str, "allow-per-principal") == 0) {
     c->trpolicy = TRPOLICY_ALLOW_PER_PRINCIPAL;
 } else if(strcasecmp(trpolicy_str, "always-honour-request") == 0) {
     c->trpolicy = TRPOLICY_ALWAYS_HONOUR_REQUEST;
 } else if(strcasecmp(trpolicy_str, "DEFAULT") == 0) {

 } else {
     kdc_log(context, c, 0,
      "unknown transited-policy: %s, "
      "reverting to default (always-check)",
      trpolicy_str);
 }
    }

    c->encode_as_rep_as_tgs_rep =
 krb5_config_get_bool_default(context, ((void*)0),
         c->encode_as_rep_as_tgs_rep,
         "kdc",
         "encode_as_rep_as_tgs_rep", ((void*)0));

    c->kdc_warn_pwexpire =
 krb5_config_get_time_default (context, ((void*)0),
          c->kdc_warn_pwexpire,
          "kdc", "kdc_warn_pwexpire", ((void*)0));


    c->enable_pkinit =
 krb5_config_get_bool_default(context,
         ((void*)0),
         c->enable_pkinit,
         "kdc",
         "enable-pkinit",
         ((void*)0));


    c->pkinit_kdc_identity =
 krb5_config_get_string(context, ((void*)0),
          "kdc", "pkinit_identity", ((void*)0));
    c->pkinit_kdc_anchors =
 krb5_config_get_string(context, ((void*)0),
          "kdc", "pkinit_anchors", ((void*)0));
    c->pkinit_kdc_cert_pool =
 krb5_config_get_strings(context, ((void*)0),
    "kdc", "pkinit_pool", ((void*)0));
    c->pkinit_kdc_revoke =
 krb5_config_get_strings(context, ((void*)0),
    "kdc", "pkinit_revoke", ((void*)0));
    c->pkinit_kdc_ocsp_file =
 krb5_config_get_string(context, ((void*)0),
          "kdc", "pkinit_kdc_ocsp", ((void*)0));
    c->pkinit_kdc_friendly_name =
 krb5_config_get_string(context, ((void*)0),
          "kdc", "pkinit_kdc_friendly_name", ((void*)0));
    c->pkinit_princ_in_cert =
 krb5_config_get_bool_default(context, ((void*)0),
         c->pkinit_princ_in_cert,
         "kdc",
         "pkinit_principal_in_certificate",
         ((void*)0));
    c->pkinit_require_binding =
 krb5_config_get_bool_default(context, ((void*)0),
         c->pkinit_require_binding,
         "kdc",
         "pkinit_win2k_require_binding",
         ((void*)0));
    c->pkinit_dh_min_bits =
 krb5_config_get_int_default(context, ((void*)0),
        0,
        "kdc", "pkinit_dh_min_bits", ((void*)0));

    *config = c;

    return 0;
}
