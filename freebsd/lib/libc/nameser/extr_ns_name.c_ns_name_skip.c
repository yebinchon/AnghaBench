
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int EMSGSIZE ;


 int errno ;
 int labellen (int const*) ;

int
ns_name_skip(const u_char **ptrptr, const u_char *eom)
{
 const u_char *cp;
 u_int n;
 int l = 0;

 cp = *ptrptr;
 while (cp < eom && (n = *cp++) != 0) {

  switch (n & 129) {
  case 0:
   cp += n;
   continue;
  case 128:
   if (cp < eom && (l = labellen(cp - 1)) < 0) {
    errno = EMSGSIZE;
    return (-1);
   }
   cp += l;
   continue;
  case 129:
   cp++;
   break;
  default:
   errno = EMSGSIZE;
   return (-1);
  }
  break;
 }
 if (cp > eom) {
  errno = EMSGSIZE;
  return (-1);
 }
 *ptrptr = cp;
 return (0);
}
