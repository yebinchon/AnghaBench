
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fabric {unsigned int switch_cnt; struct f_switch** sw; } ;
struct f_switch {scalar_t__ n_id; } ;
typedef scalar_t__ guid_t ;



__attribute__((used)) static
struct f_switch *find_f_sw(struct fabric *f, guid_t sw_guid)
{
 unsigned s;
 struct f_switch *sw;

 if (f->sw) {
  for (s = 0; s < f->switch_cnt; s++) {
   sw = f->sw[s];
   if (sw->n_id == sw_guid)
    return sw;
  }
 }
 return ((void*)0);
}
