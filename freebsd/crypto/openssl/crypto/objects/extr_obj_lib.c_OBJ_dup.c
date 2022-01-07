
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; scalar_t__ length; int * sn; int * ln; int nid; int * data; } ;
typedef TYPE_1__ ASN1_OBJECT ;


 int ASN1_OBJECT_FLAG_DYNAMIC ;
 int ASN1_OBJECT_FLAG_DYNAMIC_DATA ;
 int ASN1_OBJECT_FLAG_DYNAMIC_STRINGS ;
 int ASN1_OBJECT_free (TYPE_1__*) ;
 TYPE_1__* ASN1_OBJECT_new () ;
 int ERR_R_ASN1_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int OBJ_F_OBJ_DUP ;
 int OBJerr (int ,int ) ;
 int * OPENSSL_memdup (int *,scalar_t__) ;
 void* OPENSSL_strdup (int *) ;

ASN1_OBJECT *OBJ_dup(const ASN1_OBJECT *o)
{
    ASN1_OBJECT *r;

    if (o == ((void*)0))
        return ((void*)0);

    if (!(o->flags & ASN1_OBJECT_FLAG_DYNAMIC))
        return (ASN1_OBJECT *)o;

    r = ASN1_OBJECT_new();
    if (r == ((void*)0)) {
        OBJerr(OBJ_F_OBJ_DUP, ERR_R_ASN1_LIB);
        return ((void*)0);
    }



    r->flags = o->flags | (ASN1_OBJECT_FLAG_DYNAMIC |
                           ASN1_OBJECT_FLAG_DYNAMIC_STRINGS |
                           ASN1_OBJECT_FLAG_DYNAMIC_DATA);

    if (o->length > 0 && (r->data = OPENSSL_memdup(o->data, o->length)) == ((void*)0))
        goto err;

    r->length = o->length;
    r->nid = o->nid;

    if (o->ln != ((void*)0) && (r->ln = OPENSSL_strdup(o->ln)) == ((void*)0))
        goto err;

    if (o->sn != ((void*)0) && (r->sn = OPENSSL_strdup(o->sn)) == ((void*)0))
        goto err;

    return r;
 err:
    ASN1_OBJECT_free(r);
    OBJerr(OBJ_F_OBJ_DUP, ERR_R_MALLOC_FAILURE);
    return ((void*)0);
}
