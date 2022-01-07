
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int OBJ_obj2nid (int *) ;
 int * OBJ_txt2obj (char const*,int ) ;

int OBJ_txt2nid(const char *s)
{
    ASN1_OBJECT *obj;
    int nid;
    obj = OBJ_txt2obj(s, 0);
    nid = OBJ_obj2nid(obj);
    ASN1_OBJECT_free(obj);
    return nid;
}
