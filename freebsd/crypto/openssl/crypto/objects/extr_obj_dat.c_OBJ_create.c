
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* sn; char* ln; int nid; } ;
typedef TYPE_1__ ASN1_OBJECT ;


 int ASN1_OBJECT_free (TYPE_1__*) ;
 scalar_t__ NID_undef ;
 int OBJ_F_OBJ_CREATE ;
 int OBJ_R_OID_EXISTS ;
 int OBJ_add_object (TYPE_1__*) ;
 scalar_t__ OBJ_ln2nid (char const*) ;
 int OBJ_new_nid (int) ;
 scalar_t__ OBJ_obj2nid (TYPE_1__*) ;
 scalar_t__ OBJ_sn2nid (char const*) ;
 TYPE_1__* OBJ_txt2obj (char const*,int) ;
 int OBJerr (int ,int ) ;

int OBJ_create(const char *oid, const char *sn, const char *ln)
{
    ASN1_OBJECT *tmpoid = ((void*)0);
    int ok = 0;


    if ((sn != ((void*)0) && OBJ_sn2nid(sn) != NID_undef)
            || (ln != ((void*)0) && OBJ_ln2nid(ln) != NID_undef)) {
        OBJerr(OBJ_F_OBJ_CREATE, OBJ_R_OID_EXISTS);
        return 0;
    }


    tmpoid = OBJ_txt2obj(oid, 1);
    if (tmpoid == ((void*)0))
        return 0;


    if (OBJ_obj2nid(tmpoid) != NID_undef) {
        OBJerr(OBJ_F_OBJ_CREATE, OBJ_R_OID_EXISTS);
        goto err;
    }

    tmpoid->nid = OBJ_new_nid(1);
    tmpoid->sn = (char *)sn;
    tmpoid->ln = (char *)ln;

    ok = OBJ_add_object(tmpoid);

    tmpoid->sn = ((void*)0);
    tmpoid->ln = ((void*)0);

 err:
    ASN1_OBJECT_free(tmpoid);
    return ok;
}
