
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct multistate {char const* key; int value; } ;



__attribute__((used)) static const char *
fmt_multistate_int(int val, const struct multistate *m)
{
 u_int i;

 for (i = 0; m[i].key != ((void*)0); i++) {
  if (m[i].value == val)
   return m[i].key;
 }
 return "UNKNOWN";
}
