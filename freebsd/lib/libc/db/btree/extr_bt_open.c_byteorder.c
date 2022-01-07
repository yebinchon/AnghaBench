
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;


 int BIG_ENDIAN ;
 int LITTLE_ENDIAN ;

__attribute__((used)) static int
byteorder(void)
{
 u_int32_t x;
 u_char *p;

 x = 0x01020304;
 p = (u_char *)&x;
 switch (*p) {
 case 1:
  return (BIG_ENDIAN);
 case 4:
  return (LITTLE_ENDIAN);
 default:
  return (0);
 }
}
