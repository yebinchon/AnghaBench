
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_22__ {int version; } ;
struct TYPE_21__ {TYPE_1__* enc_data; int version; } ;
struct TYPE_19__ {TYPE_12__* digest; TYPE_11__* encrypted; TYPE_10__* enveloped; TYPE_7__* signed_and_enveloped; int * data; TYPE_8__* sign; } ;
struct TYPE_20__ {TYPE_4__ d; int * type; } ;
struct TYPE_18__ {void* content_type; } ;
struct TYPE_17__ {void* content_type; } ;
struct TYPE_16__ {void* content_type; } ;
struct TYPE_15__ {int version; } ;
struct TYPE_14__ {TYPE_3__* enc_data; int version; } ;
struct TYPE_13__ {TYPE_2__* enc_data; int version; } ;
typedef TYPE_5__ PKCS7 ;
typedef int ASN1_OBJECT ;


 int ASN1_INTEGER_set (int ,int) ;
 int * ASN1_OCTET_STRING_new () ;






 void* OBJ_nid2obj (int const) ;
 TYPE_12__* PKCS7_DIGEST_new () ;
 TYPE_11__* PKCS7_ENCRYPT_new () ;
 TYPE_10__* PKCS7_ENVELOPE_new () ;
 int PKCS7_F_PKCS7_SET_TYPE ;
 int PKCS7_R_UNSUPPORTED_CONTENT_TYPE ;
 int PKCS7_SIGNED_free (TYPE_8__*) ;
 TYPE_8__* PKCS7_SIGNED_new () ;
 TYPE_7__* PKCS7_SIGN_ENVELOPE_new () ;
 int PKCS7err (int ,int ) ;

int PKCS7_set_type(PKCS7 *p7, int type)
{
    ASN1_OBJECT *obj;




    obj = OBJ_nid2obj(type);

    switch (type) {
    case 129:
        p7->type = obj;
        if ((p7->d.sign = PKCS7_SIGNED_new()) == ((void*)0))
            goto err;
        if (!ASN1_INTEGER_set(p7->d.sign->version, 1)) {
            PKCS7_SIGNED_free(p7->d.sign);
            p7->d.sign = ((void*)0);
            goto err;
        }
        break;
    case 133:
        p7->type = obj;
        if ((p7->d.data = ASN1_OCTET_STRING_new()) == ((void*)0))
            goto err;
        break;
    case 128:
        p7->type = obj;
        if ((p7->d.signed_and_enveloped = PKCS7_SIGN_ENVELOPE_new())
            == ((void*)0))
            goto err;
        if (!ASN1_INTEGER_set(p7->d.signed_and_enveloped->version, 1))
            goto err;
        p7->d.signed_and_enveloped->enc_data->content_type
            = OBJ_nid2obj(133);
        break;
    case 130:
        p7->type = obj;
        if ((p7->d.enveloped = PKCS7_ENVELOPE_new())
            == ((void*)0))
            goto err;
        if (!ASN1_INTEGER_set(p7->d.enveloped->version, 0))
            goto err;
        p7->d.enveloped->enc_data->content_type = OBJ_nid2obj(133);
        break;
    case 131:
        p7->type = obj;
        if ((p7->d.encrypted = PKCS7_ENCRYPT_new())
            == ((void*)0))
            goto err;
        if (!ASN1_INTEGER_set(p7->d.encrypted->version, 0))
            goto err;
        p7->d.encrypted->enc_data->content_type = OBJ_nid2obj(133);
        break;

    case 132:
        p7->type = obj;
        if ((p7->d.digest = PKCS7_DIGEST_new())
            == ((void*)0))
            goto err;
        if (!ASN1_INTEGER_set(p7->d.digest->version, 0))
            goto err;
        break;
    default:
        PKCS7err(PKCS7_F_PKCS7_SET_TYPE, PKCS7_R_UNSUPPORTED_CONTENT_TYPE);
        goto err;
    }
    return 1;
 err:
    return 0;
}
