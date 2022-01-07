
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int X509V3_EXT_METHOD ;
typedef int X509V3_CTX ;
struct TYPE_9__ {int * ia5; int * ip; int * rid; } ;
struct TYPE_10__ {int type; TYPE_1__ d; } ;
typedef TYPE_2__ GENERAL_NAME ;
typedef int ASN1_OBJECT ;


 int * ASN1_IA5STRING_new () ;
 int ASN1_STRING_set (int *,unsigned char*,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_add_error_data (int,char*,char const*) ;
 int GENERAL_NAME_free (TYPE_2__*) ;
 TYPE_2__* GENERAL_NAME_new () ;







 int * OBJ_txt2obj (char const*,int ) ;
 int X509V3_F_A2I_GENERAL_NAME ;
 int X509V3_R_BAD_IP_ADDRESS ;
 int X509V3_R_BAD_OBJECT ;
 int X509V3_R_DIRNAME_ERROR ;
 int X509V3_R_MISSING_VALUE ;
 int X509V3_R_OTHERNAME_ERROR ;
 int X509V3_R_UNSUPPORTED_TYPE ;
 int X509V3err (int ,int ) ;
 int * a2i_IPADDRESS (char const*) ;
 int * a2i_IPADDRESS_NC (char const*) ;
 int do_dirname (TYPE_2__*,char const*,int *) ;
 int do_othername (TYPE_2__*,char const*,int *) ;
 int strlen (char const*) ;

GENERAL_NAME *a2i_GENERAL_NAME(GENERAL_NAME *out,
                               const X509V3_EXT_METHOD *method,
                               X509V3_CTX *ctx, int gen_type, const char *value,
                               int is_nc)
{
    char is_string = 0;
    GENERAL_NAME *gen = ((void*)0);

    if (!value) {
        X509V3err(X509V3_F_A2I_GENERAL_NAME, X509V3_R_MISSING_VALUE);
        return ((void*)0);
    }

    if (out)
        gen = out;
    else {
        gen = GENERAL_NAME_new();
        if (gen == ((void*)0)) {
            X509V3err(X509V3_F_A2I_GENERAL_NAME, ERR_R_MALLOC_FAILURE);
            return ((void*)0);
        }
    }

    switch (gen_type) {
    case 128:
    case 132:
    case 133:
        is_string = 1;
        break;

    case 129:
        {
            ASN1_OBJECT *obj;
            if ((obj = OBJ_txt2obj(value, 0)) == ((void*)0)) {
                X509V3err(X509V3_F_A2I_GENERAL_NAME, X509V3_R_BAD_OBJECT);
                ERR_add_error_data(2, "value=", value);
                goto err;
            }
            gen->d.rid = obj;
        }
        break;

    case 131:
        if (is_nc)
            gen->d.ip = a2i_IPADDRESS_NC(value);
        else
            gen->d.ip = a2i_IPADDRESS(value);
        if (gen->d.ip == ((void*)0)) {
            X509V3err(X509V3_F_A2I_GENERAL_NAME, X509V3_R_BAD_IP_ADDRESS);
            ERR_add_error_data(2, "value=", value);
            goto err;
        }
        break;

    case 134:
        if (!do_dirname(gen, value, ctx)) {
            X509V3err(X509V3_F_A2I_GENERAL_NAME, X509V3_R_DIRNAME_ERROR);
            goto err;
        }
        break;

    case 130:
        if (!do_othername(gen, value, ctx)) {
            X509V3err(X509V3_F_A2I_GENERAL_NAME, X509V3_R_OTHERNAME_ERROR);
            goto err;
        }
        break;
    default:
        X509V3err(X509V3_F_A2I_GENERAL_NAME, X509V3_R_UNSUPPORTED_TYPE);
        goto err;
    }

    if (is_string) {
        if ((gen->d.ia5 = ASN1_IA5STRING_new()) == ((void*)0) ||
            !ASN1_STRING_set(gen->d.ia5, (unsigned char *)value,
                             strlen(value))) {
            X509V3err(X509V3_F_A2I_GENERAL_NAME, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    gen->type = gen_type;

    return gen;

 err:
    if (!out)
        GENERAL_NAME_free(gen);
    return ((void*)0);
}
