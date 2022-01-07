
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 scalar_t__ WPA_GET_BE16 (int *) ;
 scalar_t__ WPA_GET_BE32 (int *) ;
 int WPA_PUT_BE16 (int *,int) ;
 int WPA_PUT_BE32 (int *,int) ;
 int ind_len ;

__attribute__((used)) static void inc_sqn(u8 *sqn)
{
 u64 val, seq, ind;
 val = ((u64) WPA_GET_BE32(sqn) << 16) | ((u64) WPA_GET_BE16(sqn + 4));
 seq = (val >> ind_len) + 1;
 ind = (val + 1) & ((1 << ind_len) - 1);
 val = (seq << ind_len) | ind;
 WPA_PUT_BE32(sqn, val >> 16);
 WPA_PUT_BE16(sqn + 4, val & 0xffff);
}
