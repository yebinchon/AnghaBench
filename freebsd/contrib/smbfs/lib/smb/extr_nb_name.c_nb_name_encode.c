
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
struct nb_name {char* nn_name; char nn_type; char* nn_scope; } ;


 int NB_ENCNAMELEN ;
 int NB_MAXLABLEN ;
 int NB_NAMELEN ;
 int nb_char_encode (char**,char,int) ;
 int nb_encname_len (char*) ;
 char toupper (int ) ;

int
nb_name_encode(struct nb_name *np, u_char *dst)
{
 u_char *name, *plen;
 u_char *cp = dst;
 int i, lblen;

 *cp++ = NB_ENCNAMELEN;
 name = np->nn_name;
 if (name[0] == '*' && name[1] == 0) {
  nb_char_encode(&cp, '*', 1);
  nb_char_encode(&cp, ' ', NB_NAMELEN - 1);
 } else {
  for (i = 0; i < NB_NAMELEN - 1; i++)
   if (*name != 0)
    nb_char_encode(&cp, toupper(*name++), 1);
   else
    nb_char_encode(&cp, ' ', 1);
  nb_char_encode(&cp, np->nn_type, 1);
 }
 *cp = 0;
 if (np->nn_scope == ((void*)0))
  return nb_encname_len(dst);
 plen = cp++;
 lblen = 0;
 for (name = np->nn_scope; ; name++) {
  if (*name == '.' || *name == 0) {
   *plen = lblen;
   plen = cp++;
   *plen = 0;
   if (*name == 0)
    break;
  } else {
   if (lblen < NB_MAXLABLEN) {
    *cp++ = *name;
    lblen++;
   }
  }
 }
 return nb_encname_len(dst);
}
