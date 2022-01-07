
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int AES_BLOCK_SIZE ;
 int WPA_GET_BE32 (int *) ;
 int WPA_PUT_BE32 (int *,int ) ;

__attribute__((used)) static void inc32(u8 *block)
{
 u32 val;
 val = WPA_GET_BE32(block + AES_BLOCK_SIZE - 4);
 val++;
 WPA_PUT_BE32(block + AES_BLOCK_SIZE - 4, val);
}
