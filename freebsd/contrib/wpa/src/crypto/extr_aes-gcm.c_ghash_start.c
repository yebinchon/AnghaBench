
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int os_memset (int *,int ,int) ;

__attribute__((used)) static void ghash_start(u8 *y)
{

 os_memset(y, 0, 16);
}
