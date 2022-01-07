
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int set; int object; } ;
typedef TYPE_1__ X509_ATTRIBUTE ;
typedef int ASN1_TYPE ;


 int ASN1_TYPE_free (int *) ;
 int * ASN1_TYPE_new () ;
 int ASN1_TYPE_set (int *,int,void*) ;
 int OBJ_nid2obj (int) ;
 int X509_ATTRIBUTE_free (TYPE_1__*) ;
 TYPE_1__* X509_ATTRIBUTE_new () ;
 int sk_ASN1_TYPE_push (int ,int *) ;

X509_ATTRIBUTE *X509_ATTRIBUTE_create(int nid, int atrtype, void *value)
{
    X509_ATTRIBUTE *ret = ((void*)0);
    ASN1_TYPE *val = ((void*)0);

    if ((ret = X509_ATTRIBUTE_new()) == ((void*)0))
        return ((void*)0);
    ret->object = OBJ_nid2obj(nid);
    if ((val = ASN1_TYPE_new()) == ((void*)0))
        goto err;
    if (!sk_ASN1_TYPE_push(ret->set, val))
        goto err;

    ASN1_TYPE_set(val, atrtype, value);
    return ret;
 err:
    X509_ATTRIBUTE_free(ret);
    ASN1_TYPE_free(val);
    return ((void*)0);
}
