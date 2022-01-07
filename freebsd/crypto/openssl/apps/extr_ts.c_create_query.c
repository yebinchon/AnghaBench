
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_5__* parameter; int * algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
struct TYPE_7__ {int type; } ;
typedef int TS_REQ ;
typedef int TS_MSG_IMPRINT ;
typedef int EVP_MD ;
typedef int BIO ;
typedef int ASN1_OBJECT ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_free (int *) ;
 int ASN1_OBJECT_free (int *) ;
 TYPE_5__* ASN1_TYPE_new () ;
 int BIO_printf (int ,char*) ;
 int ERR_print_errors (int ) ;
 int EVP_MD_type (int const*) ;
 int * EVP_get_digestbyname (char*) ;
 int NONCE_LENGTH ;
 int * OBJ_nid2obj (int ) ;
 int OPENSSL_free (unsigned char*) ;
 int TS_MSG_IMPRINT_free (int *) ;
 int * TS_MSG_IMPRINT_new () ;
 int TS_MSG_IMPRINT_set_algo (int *,TYPE_1__*) ;
 int TS_MSG_IMPRINT_set_msg (int *,unsigned char*,int) ;
 int TS_REQ_free (int *) ;
 int * TS_REQ_new () ;
 int TS_REQ_set_cert_req (int *,int) ;
 int TS_REQ_set_msg_imprint (int *,int *) ;
 int TS_REQ_set_nonce (int *,int *) ;
 int TS_REQ_set_policy_id (int *,int *) ;
 int TS_REQ_set_version (int *,int) ;
 int V_ASN1_NULL ;
 int X509_ALGOR_free (TYPE_1__*) ;
 TYPE_1__* X509_ALGOR_new () ;
 int bio_err ;
 int create_digest (int *,char const*,int const*,unsigned char**) ;
 int * create_nonce (int ) ;
 int * txt2obj (char const*) ;

__attribute__((used)) static TS_REQ *create_query(BIO *data_bio, const char *digest, const EVP_MD *md,
                            const char *policy, int no_nonce, int cert)
{
    int ret = 0;
    TS_REQ *ts_req = ((void*)0);
    int len;
    TS_MSG_IMPRINT *msg_imprint = ((void*)0);
    X509_ALGOR *algo = ((void*)0);
    unsigned char *data = ((void*)0);
    ASN1_OBJECT *policy_obj = ((void*)0);
    ASN1_INTEGER *nonce_asn1 = ((void*)0);

    if (md == ((void*)0) && (md = EVP_get_digestbyname("sha1")) == ((void*)0))
        goto err;
    if ((ts_req = TS_REQ_new()) == ((void*)0))
        goto err;
    if (!TS_REQ_set_version(ts_req, 1))
        goto err;
    if ((msg_imprint = TS_MSG_IMPRINT_new()) == ((void*)0))
        goto err;
    if ((algo = X509_ALGOR_new()) == ((void*)0))
        goto err;
    if ((algo->algorithm = OBJ_nid2obj(EVP_MD_type(md))) == ((void*)0))
        goto err;
    if ((algo->parameter = ASN1_TYPE_new()) == ((void*)0))
        goto err;
    algo->parameter->type = V_ASN1_NULL;
    if (!TS_MSG_IMPRINT_set_algo(msg_imprint, algo))
        goto err;
    if ((len = create_digest(data_bio, digest, md, &data)) == 0)
        goto err;
    if (!TS_MSG_IMPRINT_set_msg(msg_imprint, data, len))
        goto err;
    if (!TS_REQ_set_msg_imprint(ts_req, msg_imprint))
        goto err;
    if (policy && (policy_obj = txt2obj(policy)) == ((void*)0))
        goto err;
    if (policy_obj && !TS_REQ_set_policy_id(ts_req, policy_obj))
        goto err;


    if (!no_nonce && (nonce_asn1 = create_nonce(NONCE_LENGTH)) == ((void*)0))
        goto err;
    if (nonce_asn1 && !TS_REQ_set_nonce(ts_req, nonce_asn1))
        goto err;
    if (!TS_REQ_set_cert_req(ts_req, cert))
        goto err;

    ret = 1;
 err:
    if (!ret) {
        TS_REQ_free(ts_req);
        ts_req = ((void*)0);
        BIO_printf(bio_err, "could not create query\n");
        ERR_print_errors(bio_err);
    }
    TS_MSG_IMPRINT_free(msg_imprint);
    X509_ALGOR_free(algo);
    OPENSSL_free(data);
    ASN1_OBJECT_free(policy_obj);
    ASN1_INTEGER_free(nonce_asn1);
    return ts_req;
}
