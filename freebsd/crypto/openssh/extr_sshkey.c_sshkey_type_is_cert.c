
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keytype {int type; int cert; } ;


 struct keytype* keytypes ;

int
sshkey_type_is_cert(int type)
{
 const struct keytype *kt;

 for (kt = keytypes; kt->type != -1; kt++) {
  if (kt->type == type)
   return kt->cert;
 }
 return 0;
}
