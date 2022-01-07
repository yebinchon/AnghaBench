
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_freq_range_list {int num; struct wpa_freq_range* range; } ;
struct wpa_freq_range {scalar_t__ min; scalar_t__ max; } ;


 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_snprintf (char*,int,char*,char*,scalar_t__,...) ;
 scalar_t__ os_snprintf_error (int,int) ;

char * freq_range_list_str(const struct wpa_freq_range_list *list)
{
 char *buf, *pos, *end;
 size_t maxlen;
 unsigned int i;
 int res;

 if (list->num == 0)
  return ((void*)0);

 maxlen = list->num * 30;
 buf = os_malloc(maxlen);
 if (buf == ((void*)0))
  return ((void*)0);
 pos = buf;
 end = buf + maxlen;

 for (i = 0; i < list->num; i++) {
  struct wpa_freq_range *range = &list->range[i];

  if (range->min == range->max)
   res = os_snprintf(pos, end - pos, "%s%u",
       i == 0 ? "" : ",", range->min);
  else
   res = os_snprintf(pos, end - pos, "%s%u-%u",
       i == 0 ? "" : ",",
       range->min, range->max);
  if (os_snprintf_error(end - pos, res)) {
   os_free(buf);
   return ((void*)0);
  }
  pos += res;
 }

 return buf;
}
