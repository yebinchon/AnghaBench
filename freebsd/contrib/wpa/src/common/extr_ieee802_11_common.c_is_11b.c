
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int is_11b(u8 rate)
{
 return rate == 0x02 || rate == 0x04 || rate == 0x0b || rate == 0x16;
}
