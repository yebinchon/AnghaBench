
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* hx509_context ;
struct TYPE_12__ {int default_trust_anchors; int et_list; int ocsp_time_diff; } ;


 int ENGINE_add_conf_module () ;
 int ENOMEM ;
 int HX509_DEFAULT_ANCHORS ;
 int HX509_DEFAULT_OCSP_TIME_DIFF ;
 int OpenSSL_add_all_algorithms () ;
 int _hx509_ks_dir_register (TYPE_1__*) ;
 int _hx509_ks_file_register (TYPE_1__*) ;
 int _hx509_ks_keychain_register (TYPE_1__*) ;
 int _hx509_ks_mem_register (TYPE_1__*) ;
 int _hx509_ks_null_register (TYPE_1__*) ;
 int _hx509_ks_pkcs11_register (TYPE_1__*) ;
 int _hx509_ks_pkcs12_register (TYPE_1__*) ;
 TYPE_1__* calloc (int,int) ;
 int hx509_certs_init (TYPE_1__*,int ,int ,int *,int *) ;
 int initialize_asn1_error_table_r (int *) ;
 int initialize_hx_error_table_r (int *) ;

int
hx509_context_init(hx509_context *context)
{
    *context = calloc(1, sizeof(**context));
    if (*context == ((void*)0))
 return ENOMEM;

    _hx509_ks_null_register(*context);
    _hx509_ks_mem_register(*context);
    _hx509_ks_file_register(*context);
    _hx509_ks_pkcs12_register(*context);
    _hx509_ks_pkcs11_register(*context);
    _hx509_ks_dir_register(*context);
    _hx509_ks_keychain_register(*context);

    ENGINE_add_conf_module();
    OpenSSL_add_all_algorithms();

    (*context)->ocsp_time_diff = HX509_DEFAULT_OCSP_TIME_DIFF;

    initialize_hx_error_table_r(&(*context)->et_list);
    initialize_asn1_error_table_r(&(*context)->et_list);






    return 0;
}
