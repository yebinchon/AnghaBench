
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
struct nb_name {char* nn_scope; } ;


 int NB_ENCNAMELEN ;
 int NB_MAXLABLEN ;

int
nb_name_len(struct nb_name *np)
{
 u_char *name;
 int len, sclen;

 len = 1 + NB_ENCNAMELEN;
 if (np->nn_scope == ((void*)0))
  return len + 1;
 sclen = 0;
 for (name = np->nn_scope; *name; name++) {
  if (*name == '.') {
   sclen = 0;
  } else {
   if (sclen < NB_MAXLABLEN) {
    sclen++;
    len++;
   }
  }
 }
 return len + 1;
}
