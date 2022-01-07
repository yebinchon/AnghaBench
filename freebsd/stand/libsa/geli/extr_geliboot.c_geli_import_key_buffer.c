
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct keybuf {unsigned int kb_nents; TYPE_1__* kb_ents; } ;
struct TYPE_2__ {int ke_type; int ke_data; } ;


 unsigned int GELI_MAX_KEYS ;
 int G_ELI_USERKEYLEN ;
 int KEYBUF_TYPE_NONE ;
 int explicit_bzero (int ,int ) ;
 int memcpy (int ,int ,int ) ;
 unsigned int nsaved_keys ;
 int * saved_keys ;

void
geli_import_key_buffer(struct keybuf *skeybuf)
{
 unsigned int i;

 for (i = 0; i < skeybuf->kb_nents && i < GELI_MAX_KEYS; i++) {
  memcpy(saved_keys[i], skeybuf->kb_ents[i].ke_data,
      G_ELI_USERKEYLEN);
  explicit_bzero(skeybuf->kb_ents[i].ke_data,
      G_ELI_USERKEYLEN);
  skeybuf->kb_ents[i].ke_type = KEYBUF_TYPE_NONE;
 }
 nsaved_keys = skeybuf->kb_nents;
 skeybuf->kb_nents = 0;
}
