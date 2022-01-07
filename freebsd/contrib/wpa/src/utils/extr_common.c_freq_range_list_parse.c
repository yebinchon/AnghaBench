
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_freq_range_list {unsigned int num; struct wpa_freq_range* range; } ;
struct wpa_freq_range {void* min; void* max; } ;


 void* atoi (char const*) ;
 int os_free (struct wpa_freq_range*) ;
 struct wpa_freq_range* os_realloc_array (struct wpa_freq_range*,unsigned int,int) ;
 char* os_strchr (char const*,char) ;

int freq_range_list_parse(struct wpa_freq_range_list *res, const char *value)
{
 struct wpa_freq_range *freq = ((void*)0), *n;
 unsigned int count = 0;
 const char *pos, *pos2, *pos3;





 pos = value;
 while (pos && pos[0]) {
  n = os_realloc_array(freq, count + 1,
         sizeof(struct wpa_freq_range));
  if (n == ((void*)0)) {
   os_free(freq);
   return -1;
  }
  freq = n;
  freq[count].min = atoi(pos);
  pos2 = os_strchr(pos, '-');
  pos3 = os_strchr(pos, ',');
  if (pos2 && (!pos3 || pos2 < pos3)) {
   pos2++;
   freq[count].max = atoi(pos2);
  } else
   freq[count].max = freq[count].min;
  pos = pos3;
  if (pos)
   pos++;
  count++;
 }

 os_free(res->range);
 res->range = freq;
 res->num = count;

 return 0;
}
