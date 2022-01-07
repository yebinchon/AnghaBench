
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* id; } ;
typedef TYPE_1__ OpenPGP_key ;


 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 int entries ;
 int * openpgp_trust_get (char*) ;
 int printf (char*,char*) ;
 int trust_list ;
 scalar_t__ ve_anchor_verbose_get () ;

void
openpgp_trust_add(OpenPGP_key *key)
{
 static int once = 0;

 if (!once) {
  once = 1;

  LIST_INIT(&trust_list);
 }
 if (key && openpgp_trust_get(key->id) == ((void*)0)) {
  if (ve_anchor_verbose_get())
   printf("openpgp_trust_add(%s)\n", key->id);
  LIST_INSERT_HEAD(&trust_list, key, entries);
 }
}
