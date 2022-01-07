
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
_heim_len_unsigned (unsigned val)
{
    size_t ret = 0;
    int last_val_gt_128;

    do {
 ++ret;
 last_val_gt_128 = (val >= 128);
 val /= 256;
    } while (val);

    if(last_val_gt_128)
 ret++;

    return ret;
}
