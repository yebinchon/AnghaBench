
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sta_info {struct mbo_non_pref_chan_info* non_pref_chan; int cell_capa; } ;
struct mbo_non_pref_chan_info {size_t num_channels; int * channels; int reason_code; int pref; int op_class; struct mbo_non_pref_chan_info* next; } ;


 int os_snprintf (char*,int,char*,...) ;
 scalar_t__ os_snprintf_error (int,int) ;

int mbo_ap_get_info(struct sta_info *sta, char *buf, size_t buflen)
{
 char *pos = buf, *end = buf + buflen;
 int ret;
 struct mbo_non_pref_chan_info *info;
 u8 i;
 unsigned int count = 0;

 if (!sta->cell_capa)
  return 0;

 ret = os_snprintf(pos, end - pos, "mbo_cell_capa=%u\n", sta->cell_capa);
 if (os_snprintf_error(end - pos, ret))
  return pos - buf;
 pos += ret;

 for (info = sta->non_pref_chan; info; info = info->next) {
  char *pos2 = pos;

  ret = os_snprintf(pos2, end - pos2,
      "non_pref_chan[%u]=%u:%u:%u:",
      count, info->op_class, info->pref,
      info->reason_code);
  count++;
  if (os_snprintf_error(end - pos2, ret))
   break;
  pos2 += ret;

  for (i = 0; i < info->num_channels; i++) {
   ret = os_snprintf(pos2, end - pos2, "%u%s",
       info->channels[i],
       i + 1 < info->num_channels ?
       "," : "");
   if (os_snprintf_error(end - pos2, ret)) {
    pos2 = ((void*)0);
    break;
   }
   pos2 += ret;
  }

  if (!pos2)
   break;
  ret = os_snprintf(pos2, end - pos2, "\n");
  if (os_snprintf_error(end - pos2, ret))
   break;
  pos2 += ret;
  pos = pos2;
 }

 return pos - buf;
}
