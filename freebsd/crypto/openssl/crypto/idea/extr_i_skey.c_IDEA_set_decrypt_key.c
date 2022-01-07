
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int** data; } ;
typedef TYPE_1__ IDEA_KEY_SCHEDULE ;
typedef int IDEA_INT ;


 void* inverse (int) ;

void IDEA_set_decrypt_key(IDEA_KEY_SCHEDULE *ek, IDEA_KEY_SCHEDULE *dk)
{
    int r;
    register IDEA_INT *fp, *tp, t;

    tp = &(dk->data[0][0]);
    fp = &(ek->data[8][0]);
    for (r = 0; r < 9; r++) {
        *(tp++) = inverse(fp[0]);
        *(tp++) = ((int)(0x10000L - fp[2]) & 0xffff);
        *(tp++) = ((int)(0x10000L - fp[1]) & 0xffff);
        *(tp++) = inverse(fp[3]);
        if (r == 8)
            break;
        fp -= 6;
        *(tp++) = fp[4];
        *(tp++) = fp[5];
    }

    tp = &(dk->data[0][0]);
    t = tp[1];
    tp[1] = tp[2];
    tp[2] = t;

    t = tp[49];
    tp[49] = tp[50];
    tp[50] = t;
}
