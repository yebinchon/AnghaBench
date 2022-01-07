
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 __ROL32(u32 x, u32 y)
{
 if (y == 0)
  return x;

 return (x << (y & 31)) | (x >> (32 - (y & 31)));
}
