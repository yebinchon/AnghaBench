
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ks; } ;
struct TYPE_4__ {int* deslong; } ;
typedef TYPE_2__ DES_key_schedule ;
typedef int DES_LONG ;


 int D_ENCRYPT (int,int,int) ;
 int FP (int,int) ;
 int IP (int,int) ;
 int ROTATE (int,int) ;

void DES_encrypt1(DES_LONG *data, DES_key_schedule *ks, int enc)
{
    register DES_LONG l, r, t, u;
    register DES_LONG *s;

    r = data[0];
    l = data[1];

    IP(r, l);
    r = ROTATE(r, 29) & 0xffffffffL;
    l = ROTATE(l, 29) & 0xffffffffL;

    s = ks->ks->deslong;




    if (enc) {
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
    } else {
        D_ENCRYPT(l, r, 30);
        D_ENCRYPT(r, l, 28);
        D_ENCRYPT(l, r, 26);
        D_ENCRYPT(r, l, 24);
        D_ENCRYPT(l, r, 22);
        D_ENCRYPT(r, l, 20);
        D_ENCRYPT(l, r, 18);
        D_ENCRYPT(r, l, 16);
        D_ENCRYPT(l, r, 14);
        D_ENCRYPT(r, l, 12);
        D_ENCRYPT(l, r, 10);
        D_ENCRYPT(r, l, 8);
        D_ENCRYPT(l, r, 6);
        D_ENCRYPT(r, l, 4);
        D_ENCRYPT(l, r, 2);
        D_ENCRYPT(r, l, 0);
    }


    l = ROTATE(l, 3) & 0xffffffffL;
    r = ROTATE(r, 3) & 0xffffffffL;

    FP(r, l);
    data[0] = l;
    data[1] = r;
    l = r = t = u = 0;
}
