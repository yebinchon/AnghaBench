
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
_heim_len_int (int val)
{
    unsigned char q;
    size_t ret = 0;

    if (val >= 0) {
 do {
     q = val % 256;
     ret++;
     val /= 256;
 } while(val);
 if(q >= 128)
     ret++;
    } else {
 val = ~val;
 do {
     q = ~(val % 256);
     ret++;
     val /= 256;
 } while(val);
 if(q < 128)
     ret++;
    }
    return ret;
}
