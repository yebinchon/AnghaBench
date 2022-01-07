
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int geli_ukey ;


 size_t GELI_MAX_KEYS ;
 int G_ELI_USERKEYLEN ;
 int memcpy (int ,int ,int ) ;
 size_t nsaved_keys ;
 int * saved_keys ;

void
geli_add_key(geli_ukey key)
{





 if (nsaved_keys < GELI_MAX_KEYS) {
  memcpy(saved_keys[nsaved_keys], key, G_ELI_USERKEYLEN);
  nsaved_keys++;
 }
}
