
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (char*,char*,int) ;

__attribute__((used)) static void
getstr(void **ptr, char *val)
{
 int *p = *ptr;
 char *c = (char *)p;
 int len = *(uint8_t *)c;

 memcpy(val, c + 1, len);
 val[len] = 0;
 c += len + 1;
 *ptr = (void *)c;
}
