
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int WPA_GET_BE32 (int*) ;
 int WPA_PUT_BE32 (int*,int) ;

__attribute__((used)) static void shift_right_block(u8 *v)
{
 u32 val;

 val = WPA_GET_BE32(v + 12);
 val >>= 1;
 if (v[11] & 0x01)
  val |= 0x80000000;
 WPA_PUT_BE32(v + 12, val);

 val = WPA_GET_BE32(v + 8);
 val >>= 1;
 if (v[7] & 0x01)
  val |= 0x80000000;
 WPA_PUT_BE32(v + 8, val);

 val = WPA_GET_BE32(v + 4);
 val >>= 1;
 if (v[3] & 0x01)
  val |= 0x80000000;
 WPA_PUT_BE32(v + 4, val);

 val = WPA_GET_BE32(v);
 val >>= 1;
 WPA_PUT_BE32(v, val);
}
