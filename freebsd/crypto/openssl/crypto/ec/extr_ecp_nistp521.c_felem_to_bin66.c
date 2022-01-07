
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int limb ;
typedef int* felem ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void felem_to_bin66(u8 out[66], const felem in)
{
    memset(out, 0, 66);
    (*((limb *) & out[0])) = in[0];
    (*((limb *) & out[7])) |= in[1] << 2;
    (*((limb *) & out[14])) |= in[2] << 4;
    (*((limb *) & out[21])) |= in[3] << 6;
    (*((limb *) & out[29])) = in[4];
    (*((limb *) & out[36])) |= in[5] << 2;
    (*((limb *) & out[43])) |= in[6] << 4;
    (*((limb *) & out[50])) |= in[7] << 6;
    (*((limb *) & out[58])) = in[8];
}
