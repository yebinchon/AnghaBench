
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pam_repository {int dummy; } ;
struct pam_conv {int dummy; } ;
struct TYPE_3__ {void** item; } ;
typedef TYPE_1__ pam_handle_t ;


 int ENTERI (int) ;
 int FREE (void*) ;


 int PAM_BAD_ITEM ;
 int PAM_BUF_ERR ;
 int PAM_SUCCESS ;



 int RETURNC (int ) ;
 void* malloc (size_t) ;
 int memcpy (void*,void const*,size_t) ;
 int memset (void*,int,size_t) ;
 int strlen (void const*) ;

int
pam_set_item(pam_handle_t *pamh,
 int item_type,
 const void *item)
{
 void **slot;
 size_t nsize, osize;

 ENTERI(item_type);
 slot = &pamh->item[item_type];
 osize = nsize = 0;
 switch (item_type) {
 case 131:

  if (*slot != ((void*)0) && item != ((void*)0))
   RETURNC(PAM_BAD_ITEM);

 case 129:
 case 140:
 case 136:
 case 130:
 case 133:
 case 132:
 case 128:
 case 139:
 case 135:
 case 137:
  if (*slot != ((void*)0))
   osize = strlen(*slot) + 1;
  if (item != ((void*)0))
   nsize = strlen(item) + 1;
  break;
 case 134:
  osize = nsize = sizeof(struct pam_repository);
  break;
 case 138:
  osize = nsize = sizeof(struct pam_conv);
  break;
 default:
  RETURNC(PAM_BAD_ITEM);
 }
 if (*slot != ((void*)0)) {
  memset(*slot, 0xd0, osize);
  FREE(*slot);
 }
 if (item != ((void*)0)) {
  if ((*slot = malloc(nsize)) == ((void*)0))
   RETURNC(PAM_BUF_ERR);
  memcpy(*slot, item, nsize);
 } else {
  *slot = ((void*)0);
 }
 RETURNC(PAM_SUCCESS);
}
