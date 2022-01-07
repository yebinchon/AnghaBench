
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_key {int user; struct data_key* key; } ;


 int os_free (struct data_key*) ;

__attribute__((used)) static void ieee802_1x_kay_deinit_data_key(struct data_key *pkey)
{
 if (!pkey)
  return;

 pkey->user--;
 if (pkey->user > 1)
  return;

 os_free(pkey->key);
 os_free(pkey);
}
