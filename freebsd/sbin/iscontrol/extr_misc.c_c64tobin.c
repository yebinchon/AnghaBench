
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* base64 ;

__attribute__((used)) static __inline unsigned char
c64tobin(unsigned char c64)
{
     int i;
     for(i = 0; i < 64; i++)
   if(base64[i] == c64)
        break;
     return i;
}
