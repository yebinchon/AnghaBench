
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
der_length_len (size_t len)
{
    if (len < 128)
 return 1;
    else {
 int ret = 0;
 do {
     ++ret;
     len /= 256;
 } while (len);
 return ret + 1;
    }
}
