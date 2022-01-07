
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct typetable {int nextarg; } ;


 int T_INT ;
 scalar_t__ addtype (struct typetable*,int ) ;
 scalar_t__ is_digit (char) ;
 int to_digit (char) ;

__attribute__((used)) static inline int
addaster(struct typetable *types, char **fmtp)
{
 char *cp;
 u_int n2;

 n2 = 0;
 cp = *fmtp;
 while (is_digit(*cp)) {
  n2 = 10 * n2 + to_digit(*cp);
  cp++;
 }
 if (*cp == '$') {
  u_int hold = types->nextarg;
  types->nextarg = n2;
  if (addtype(types, T_INT))
   return (-1);
  types->nextarg = hold;
  *fmtp = ++cp;
 } else {
  if (addtype(types, T_INT))
   return (-1);
 }
 return (0);
}
