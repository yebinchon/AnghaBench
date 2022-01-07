
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nid; unsigned char const* data; int length; int flags; int * ln; int * sn; } ;
typedef TYPE_1__ ASN1_OBJECT ;


 int ASN1_F_C2I_ASN1_OBJECT ;
 int ASN1_OBJECT_FLAG_DYNAMIC ;
 int ASN1_OBJECT_FLAG_DYNAMIC_DATA ;
 int ASN1_OBJECT_free (TYPE_1__*) ;
 TYPE_1__* ASN1_OBJECT_new () ;
 int ASN1_R_INVALID_OBJECT_ENCODING ;
 int ASN1err (int ,int) ;
 int ERR_R_MALLOC_FAILURE ;
 long INT_MAX ;
 int NID_undef ;
 TYPE_1__* OBJ_nid2obj (int) ;
 int OBJ_obj2nid (TYPE_1__*) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

ASN1_OBJECT *c2i_ASN1_OBJECT(ASN1_OBJECT **a, const unsigned char **pp,
                             long len)
{
    ASN1_OBJECT *ret = ((void*)0), tobj;
    const unsigned char *p;
    unsigned char *data;
    int i, length;






    if (len <= 0 || len > INT_MAX || pp == ((void*)0) || (p = *pp) == ((void*)0) ||
        p[len - 1] & 0x80) {
        ASN1err(ASN1_F_C2I_ASN1_OBJECT, ASN1_R_INVALID_OBJECT_ENCODING);
        return ((void*)0);
    }

    length = (int)len;




    tobj.nid = NID_undef;
    tobj.data = p;
    tobj.length = length;
    tobj.flags = 0;
    i = OBJ_obj2nid(&tobj);
    if (i != NID_undef) {





        ret = OBJ_nid2obj(i);
        if (a) {
            ASN1_OBJECT_free(*a);
            *a = ret;
        }
        *pp += len;
        return ret;
    }
    for (i = 0; i < length; i++, p++) {
        if (*p == 0x80 && (!i || !(p[-1] & 0x80))) {
            ASN1err(ASN1_F_C2I_ASN1_OBJECT, ASN1_R_INVALID_OBJECT_ENCODING);
            return ((void*)0);
        }
    }





    if ((a == ((void*)0)) || ((*a) == ((void*)0)) ||
        !((*a)->flags & ASN1_OBJECT_FLAG_DYNAMIC)) {
        if ((ret = ASN1_OBJECT_new()) == ((void*)0))
            return ((void*)0);
    } else
        ret = (*a);

    p = *pp;

    data = (unsigned char *)ret->data;
    ret->data = ((void*)0);

    if ((data == ((void*)0)) || (ret->length < length)) {
        ret->length = 0;
        OPENSSL_free(data);
        data = OPENSSL_malloc(length);
        if (data == ((void*)0)) {
            i = ERR_R_MALLOC_FAILURE;
            goto err;
        }
        ret->flags |= ASN1_OBJECT_FLAG_DYNAMIC_DATA;
    }
    memcpy(data, p, length);

    ret->data = data;
    ret->length = length;
    ret->sn = ((void*)0);
    ret->ln = ((void*)0);

    p += length;

    if (a != ((void*)0))
        (*a) = ret;
    *pp = p;
    return ret;
 err:
    ASN1err(ASN1_F_C2I_ASN1_OBJECT, i);
    if ((a == ((void*)0)) || (*a != ret))
        ASN1_OBJECT_free(ret);
    return ((void*)0);
}
