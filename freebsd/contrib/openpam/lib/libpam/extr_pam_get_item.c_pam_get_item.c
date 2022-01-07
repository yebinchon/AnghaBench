
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** item; } ;
typedef TYPE_1__ pam_handle_t ;


 int ENTERI (int) ;


 int PAM_BAD_ITEM ;
 int PAM_SUCCESS ;



 int RETURNC (int ) ;

int
pam_get_item(const pam_handle_t *pamh,
 int item_type,
 const void **item)
{

 ENTERI(item_type);
 switch (item_type) {
 case 131:
 case 129:
 case 140:
 case 136:
 case 130:
 case 133:
 case 132:
 case 138:
 case 128:
 case 134:
 case 139:
 case 135:
 case 137:
  *item = pamh->item[item_type];
  RETURNC(PAM_SUCCESS);
 default:
  RETURNC(PAM_BAD_ITEM);
 }
}
