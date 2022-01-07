
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_OBJECT ;


 int ASN1_object_size (int ,int,int ) ;
 int ASN1_put_object (unsigned char**,int ,int,int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int NID_undef ;
 int OBJ_F_OBJ_TXT2OBJ ;
 int OBJ_ln2nid (char const*) ;
 int * OBJ_nid2obj (int) ;
 int OBJ_sn2nid (char const*) ;
 int OBJerr (int ,int ) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int V_ASN1_OBJECT ;
 int V_ASN1_UNIVERSAL ;
 int a2d_ASN1_OBJECT (unsigned char*,int,char const*,int) ;
 int * d2i_ASN1_OBJECT (int *,unsigned char const**,int) ;

ASN1_OBJECT *OBJ_txt2obj(const char *s, int no_name)
{
    int nid = NID_undef;
    ASN1_OBJECT *op;
    unsigned char *buf;
    unsigned char *p;
    const unsigned char *cp;
    int i, j;

    if (!no_name) {
        if (((nid = OBJ_sn2nid(s)) != NID_undef) ||
            ((nid = OBJ_ln2nid(s)) != NID_undef))
            return OBJ_nid2obj(nid);
    }


    i = a2d_ASN1_OBJECT(((void*)0), 0, s, -1);
    if (i <= 0) {




        return ((void*)0);
    }

    j = ASN1_object_size(0, i, V_ASN1_OBJECT);
    if (j < 0)
        return ((void*)0);

    if ((buf = OPENSSL_malloc(j)) == ((void*)0)) {
        OBJerr(OBJ_F_OBJ_TXT2OBJ, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    p = buf;

    ASN1_put_object(&p, 0, i, V_ASN1_OBJECT, V_ASN1_UNIVERSAL);

    a2d_ASN1_OBJECT(p, i, s, -1);

    cp = buf;
    op = d2i_ASN1_OBJECT(((void*)0), &cp, j);
    OPENSSL_free(buf);
    return op;
}
