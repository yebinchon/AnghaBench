
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DES_key_schedule ;
typedef int DES_LONG ;


 int D_ENCRYPT (int,int,int) ;
 int PERM_OP (int,int,int,int,int) ;
 int ROTATE (int,int) ;

void fcrypt_body(DES_LONG *out, DES_key_schedule *ks, DES_LONG Eswap0,
                 DES_LONG Eswap1)
{
    register DES_LONG l, r, t, u;
    register DES_LONG *s;
    register int j;
    register DES_LONG E0, E1;

    l = 0;
    r = 0;

    s = (DES_LONG *)ks;
    E0 = Eswap0;
    E1 = Eswap1;

    for (j = 0; j < 25; j++) {
        D_ENCRYPT(l, r, 0);
        D_ENCRYPT(r, l, 2);
        D_ENCRYPT(l, r, 4);
        D_ENCRYPT(r, l, 6);
        D_ENCRYPT(l, r, 8);
        D_ENCRYPT(r, l, 10);
        D_ENCRYPT(l, r, 12);
        D_ENCRYPT(r, l, 14);
        D_ENCRYPT(l, r, 16);
        D_ENCRYPT(r, l, 18);
        D_ENCRYPT(l, r, 20);
        D_ENCRYPT(r, l, 22);
        D_ENCRYPT(l, r, 24);
        D_ENCRYPT(r, l, 26);
        D_ENCRYPT(l, r, 28);
        D_ENCRYPT(r, l, 30);
        t = l;
        l = r;
        r = t;
    }
    l = ROTATE(l, 3) & 0xffffffffL;
    r = ROTATE(r, 3) & 0xffffffffL;

    PERM_OP(l, r, t, 1, 0x55555555L);
    PERM_OP(r, l, t, 8, 0x00ff00ffL);
    PERM_OP(l, r, t, 2, 0x33333333L);
    PERM_OP(r, l, t, 16, 0x0000ffffL);
    PERM_OP(l, r, t, 4, 0x0f0f0f0fL);

    out[0] = r;
    out[1] = l;
}
