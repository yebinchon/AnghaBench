
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {unsigned char* data; int length; } ;
struct TYPE_5__ {TYPE_1__ keyvalue; } ;
typedef TYPE_2__ krb5_keyblock ;
typedef int krb5_context ;
typedef unsigned char DES_cblock ;


 scalar_t__ DES_is_weak_key (unsigned char*) ;
 int DES_set_odd_parity (unsigned char*) ;
 int _krb5_xor (unsigned char*,unsigned char const*) ;
 int memset (unsigned char*,int ,int ) ;

void
_krb5_DES3_random_to_key(krb5_context context,
    krb5_keyblock *key,
    const void *data,
    size_t size)
{
    unsigned char *x = key->keyvalue.data;
    const u_char *q = data;
    DES_cblock *k;
    int i, j;

    memset(key->keyvalue.data, 0, key->keyvalue.length);
    for (i = 0; i < 3; ++i) {
 unsigned char foo;
 for (j = 0; j < 7; ++j) {
     unsigned char b = q[7 * i + j];

     x[8 * i + j] = b;
 }
 foo = 0;
 for (j = 6; j >= 0; --j) {
     foo |= q[7 * i + j] & 1;
     foo <<= 1;
 }
 x[8 * i + 7] = foo;
    }
    k = key->keyvalue.data;
    for (i = 0; i < 3; i++) {
 DES_set_odd_parity(&k[i]);
 if(DES_is_weak_key(&k[i]))
     _krb5_xor(&k[i], (const unsigned char*)"\0\0\0\0\0\0\0\xf0");
    }
}
