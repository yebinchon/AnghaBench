
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int dn_expand (int const*,int const*,int const*,char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

const u_char *
p_fqnname(const u_char *cp, const u_char *msg, int msglen, char *name,
    int namelen)
{
 int n, newlen;

 if ((n = dn_expand(msg, cp + msglen, cp, name, namelen)) < 0)
  return (((void*)0));
 newlen = strlen(name);
 if (newlen == 0 || name[newlen - 1] != '.') {
  if (newlen + 1 >= namelen)
   return (((void*)0));
  else
   strcpy(name + newlen, ".");
 }
 return (cp + n);
}
