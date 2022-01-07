
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* sn; char const* ln; unsigned char* data; int nid; int length; int flags; } ;
typedef TYPE_1__ ASN1_OBJECT ;


 int ASN1_OBJECT_FLAG_DYNAMIC ;
 int ASN1_OBJECT_FLAG_DYNAMIC_DATA ;
 int ASN1_OBJECT_FLAG_DYNAMIC_STRINGS ;
 TYPE_1__* OBJ_dup (TYPE_1__*) ;

ASN1_OBJECT *ASN1_OBJECT_create(int nid, unsigned char *data, int len,
                                const char *sn, const char *ln)
{
    ASN1_OBJECT o;

    o.sn = sn;
    o.ln = ln;
    o.data = data;
    o.nid = nid;
    o.length = len;
    o.flags = ASN1_OBJECT_FLAG_DYNAMIC | ASN1_OBJECT_FLAG_DYNAMIC_STRINGS |
        ASN1_OBJECT_FLAG_DYNAMIC_DATA;
    return OBJ_dup(&o);
}
