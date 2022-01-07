
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tnc_if_imv {scalar_t__ imvID; struct tnc_if_imv* next; } ;
struct TYPE_2__ {struct tnc_if_imv* imv; } ;
typedef scalar_t__ TNC_IMVID ;


 scalar_t__ TNC_MAX_IMV_ID ;
 TYPE_1__* tncs_global_data ;

__attribute__((used)) static struct tnc_if_imv * tncs_get_imv(TNC_IMVID imvID)
{
 struct tnc_if_imv *imv;

 if (imvID >= TNC_MAX_IMV_ID || tncs_global_data == ((void*)0))
  return ((void*)0);
 imv = tncs_global_data->imv;
 while (imv) {
  if (imv->imvID == imvID)
   return imv;
  imv = imv->next;
 }
 return ((void*)0);
}
