
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static inline void
nb_char_encode(u_char **ptr, u_char c, int n)
{

 while (n--) {
  *(*ptr)++ = 0x41 + (c >> 4);
  *(*ptr)++ = 0x41 + (c & 0x0f);
 }
}
