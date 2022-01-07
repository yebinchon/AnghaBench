
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509V3_CTX ;
struct TYPE_7__ {int type_id; int * value; } ;
struct TYPE_5__ {TYPE_4__* otherName; } ;
struct TYPE_6__ {TYPE_1__ d; } ;
typedef TYPE_2__ GENERAL_NAME ;


 int ASN1_TYPE_free (int *) ;
 int * ASN1_generate_v3 (char*,int *) ;
 int OBJ_txt2obj (char*,int ) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strndup (char const*,int) ;
 TYPE_4__* OTHERNAME_new () ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int do_othername(GENERAL_NAME *gen, const char *value, X509V3_CTX *ctx)
{
    char *objtmp = ((void*)0), *p;
    int objlen;

    if ((p = strchr(value, ';')) == ((void*)0))
        return 0;
    if ((gen->d.otherName = OTHERNAME_new()) == ((void*)0))
        return 0;




    ASN1_TYPE_free(gen->d.otherName->value);
    if ((gen->d.otherName->value = ASN1_generate_v3(p + 1, ctx)) == ((void*)0))
        return 0;
    objlen = p - value;
    objtmp = OPENSSL_strndup(value, objlen);
    if (objtmp == ((void*)0))
        return 0;
    gen->d.otherName->type_id = OBJ_txt2obj(objtmp, 0);
    OPENSSL_free(objtmp);
    if (!gen->d.otherName->type_id)
        return 0;
    return 1;
}
