
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curve448_scalar_t ;


 size_t C448_SCALAR_BYTES ;
 int assert (int) ;
 int curve448_scalar_add (int ,int ,int ) ;
 int curve448_scalar_copy (int ,int ) ;
 int curve448_scalar_decode (int ,unsigned char const*) ;
 int curve448_scalar_destroy (int ) ;
 int curve448_scalar_mul (int ,int ,int ) ;
 int curve448_scalar_one ;
 int curve448_scalar_zero ;
 int sc_montmul (int ,int ,int ) ;
 int sc_r2 ;
 int scalar_decode_short (int ,unsigned char const*,size_t) ;

void curve448_scalar_decode_long(curve448_scalar_t s,
                                 const unsigned char *ser, size_t ser_len)
{
    size_t i;
    curve448_scalar_t t1, t2;

    if (ser_len == 0) {
        curve448_scalar_copy(s, curve448_scalar_zero);
        return;
    }

    i = ser_len - (ser_len % C448_SCALAR_BYTES);
    if (i == ser_len)
        i -= C448_SCALAR_BYTES;

    scalar_decode_short(t1, &ser[i], ser_len - i);

    if (ser_len == sizeof(curve448_scalar_t)) {
        assert(i == 0);

        curve448_scalar_mul(s, t1, curve448_scalar_one);
        curve448_scalar_destroy(t1);
        return;
    }

    while (i) {
        i -= C448_SCALAR_BYTES;
        sc_montmul(t1, t1, sc_r2);
        (void)curve448_scalar_decode(t2, ser + i);
        curve448_scalar_add(t1, t1, t2);
    }

    curve448_scalar_copy(s, t1);
    curve448_scalar_destroy(t1);
    curve448_scalar_destroy(t2);
}
