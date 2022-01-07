
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int assert (int ) ;
 char* malloc (size_t) ;

__attribute__((used)) static char *
tohex(const void *_s, size_t l)
{
 u_int8_t *s = (u_int8_t *)_s;
 size_t i, j;
 const char *hex = "0123456789abcdef";
 char *r = malloc((l * 2) + 1);

 assert(r != ((void*)0));
 for (i = j = 0; i < l; i++) {
  r[j++] = hex[(s[i] >> 4) & 0xf];
  r[j++] = hex[s[i] & 0xf];
 }
 r[j] = '\0';
 return r;
}
