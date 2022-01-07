
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int limb ;
typedef unsigned int* felem ;


 int NLIMBS ;
 int memset (unsigned int**,int ,int) ;

__attribute__((used)) static void select_point(const limb idx, unsigned int size,
                         const felem pre_comp[][3], felem out[3])
{
    unsigned i, j;
    limb *outlimbs = &out[0][0];

    memset(out, 0, sizeof(*out) * 3);

    for (i = 0; i < size; i++) {
        const limb *inlimbs = &pre_comp[i][0][0];
        limb mask = i ^ idx;
        mask |= mask >> 4;
        mask |= mask >> 2;
        mask |= mask >> 1;
        mask &= 1;
        mask--;
        for (j = 0; j < NLIMBS * 3; j++)
            outlimbs[j] |= inlimbs[j] & mask;
    }
}
