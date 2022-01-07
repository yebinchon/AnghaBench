
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int bit_extract ( int srcvec,
                  int srcbitpos
                )
{
    return(((1 << srcbitpos) & srcvec) >> srcbitpos);
}
