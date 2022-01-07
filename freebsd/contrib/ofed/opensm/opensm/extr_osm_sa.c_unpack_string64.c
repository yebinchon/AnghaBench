
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int unpack_string (char*,int *,int) ;

__attribute__((used)) static int unpack_string64(char *p, uint8_t * buf)
{
 return unpack_string(p, buf, 64);
}
