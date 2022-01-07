
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_freq_range_list {int num; int range; } ;
struct wpa_freq_range {int dummy; } ;
struct TYPE_2__ {int num; struct wpa_freq_range* range; } ;
struct p2p_data {TYPE_1__ no_go_freq; } ;


 struct wpa_freq_range* os_calloc (int,int) ;
 int os_free (struct wpa_freq_range*) ;
 int os_memcpy (struct wpa_freq_range*,int ,int) ;
 int p2p_dbg (struct p2p_data*,char*) ;

int p2p_set_no_go_freq(struct p2p_data *p2p,
         const struct wpa_freq_range_list *list)
{
 struct wpa_freq_range *tmp;

 if (list == ((void*)0) || list->num == 0) {
  os_free(p2p->no_go_freq.range);
  p2p->no_go_freq.range = ((void*)0);
  p2p->no_go_freq.num = 0;
  return 0;
 }

 tmp = os_calloc(list->num, sizeof(struct wpa_freq_range));
 if (tmp == ((void*)0))
  return -1;
 os_memcpy(tmp, list->range, list->num * sizeof(struct wpa_freq_range));
 os_free(p2p->no_go_freq.range);
 p2p->no_go_freq.range = tmp;
 p2p->no_go_freq.num = list->num;
 p2p_dbg(p2p, "Updated no GO chan list");

 return 0;
}
