
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_template {int offset; } ;


 int _asn1_copy (struct asn1_template const*,void const*,void*) ;
 int _asn1_free (struct asn1_template const*,void*) ;
 int memset (void*,int ,int ) ;

int
_asn1_copy_top(const struct asn1_template *t, const void *from, void *to)
{
    int ret;
    memset(to, 0, t->offset);
    ret = _asn1_copy(t, from, to);
    if (ret) {
 _asn1_free(t, to);
 memset(to, 0, t->offset);
    }
    return ret;
}
