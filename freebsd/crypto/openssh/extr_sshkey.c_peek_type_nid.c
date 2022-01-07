
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keytype {int type; int nid; int * name; } ;


 int KEY_ECDSA ;
 int KEY_ECDSA_CERT ;
 int KEY_UNSPEC ;
 struct keytype* keytypes ;
 scalar_t__ memcmp (char const*,int *,size_t) ;
 size_t strlen (int *) ;

__attribute__((used)) static int
peek_type_nid(const char *s, size_t l, int *nid)
{
 const struct keytype *kt;

 for (kt = keytypes; kt->type != -1; kt++) {
  if (kt->name == ((void*)0) || strlen(kt->name) != l)
   continue;
  if (memcmp(s, kt->name, l) == 0) {
   *nid = -1;
   if (kt->type == KEY_ECDSA || kt->type == KEY_ECDSA_CERT)
    *nid = kt->nid;
   return kt->type;
  }
 }
 return KEY_UNSPEC;
}
