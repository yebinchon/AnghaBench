
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_template {int offset; } ;


 int _asn1_decode (struct asn1_template const*,unsigned int,unsigned char const*,size_t,void*,size_t*) ;
 int _asn1_free (struct asn1_template const*,void*) ;
 int memset (void*,int ,int ) ;

int
_asn1_decode_top(const struct asn1_template *t, unsigned flags, const unsigned char *p, size_t len, void *data, size_t *size)
{
    int ret;
    memset(data, 0, t->offset);
    ret = _asn1_decode(t, flags, p, len, data, size);
    if (ret) {
 _asn1_free(t, data);
 memset(data, 0, t->offset);
    }

    return ret;
}
