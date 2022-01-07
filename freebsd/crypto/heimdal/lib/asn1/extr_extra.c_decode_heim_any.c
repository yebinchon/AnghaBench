
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t length; int * data; } ;
typedef TYPE_1__ heim_any ;
typedef int Der_type ;
typedef int Der_class ;


 size_t ASN1_INDEFINITE ;
 int ASN1_OVERFLOW ;
 int ENOMEM ;
 int der_get_length (unsigned char const*,size_t,size_t*,size_t*) ;
 int der_get_tag (unsigned char const*,size_t,int *,int *,unsigned int*,size_t*) ;
 int * malloc (size_t) ;
 int memcpy (int *,unsigned char const*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;

int
decode_heim_any(const unsigned char *p, size_t len,
  heim_any *data, size_t *size)
{
    size_t len_len, length, l;
    Der_class thisclass;
    Der_type thistype;
    unsigned int thistag;
    int e;

    memset(data, 0, sizeof(*data));

    e = der_get_tag (p, len, &thisclass, &thistype, &thistag, &l);
    if (e) return e;
    if (l > len)
 return ASN1_OVERFLOW;
    e = der_get_length(p + l, len - l, &length, &len_len);
    if (e) return e;
    if (length == ASN1_INDEFINITE) {
        if (len < len_len + l)
     return ASN1_OVERFLOW;
 length = len - (len_len + l);
    } else {
 if (len < length + len_len + l)
     return ASN1_OVERFLOW;
    }

    data->data = malloc(length + len_len + l);
    if (data->data == ((void*)0))
 return ENOMEM;
    data->length = length + len_len + l;
    memcpy(data->data, p, length + len_len + l);

    if (size)
 *size = length + len_len + l;

    return 0;
}
