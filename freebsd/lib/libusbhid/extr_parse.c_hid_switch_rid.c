
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct hid_item {scalar_t__ report_ID; } ;
struct hid_data {scalar_t__* pos; TYPE_1__* last_pos; } ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ rid; scalar_t__* pos; } ;


 size_t ITEMTYPES ;
 size_t MAXID ;

__attribute__((used)) static void
hid_switch_rid(struct hid_data *s, struct hid_item *c, int32_t next_rID)
{
 uint8_t i, j;



 if (c->report_ID == next_rID)
  return;



 if (c->report_ID == 0) {
  i = 0;
 } else {
  for (i = 1; i != MAXID; i++) {
   if (s->last_pos[i].rid == c->report_ID)
    break;
   if (s->last_pos[i].rid == 0)
    break;
  }
 }
 if (i != MAXID) {
  s->last_pos[i].rid = c->report_ID;
  for (j = 0; j < ITEMTYPES; j++)
   s->last_pos[i].pos[j] = s->pos[j];
 }



 c->report_ID = next_rID;



 if (next_rID == 0) {
  i = 0;
 } else {
  for (i = 1; i != MAXID; i++) {
   if (s->last_pos[i].rid == next_rID)
    break;
   if (s->last_pos[i].rid == 0)
    break;
  }
 }
 if (i != MAXID) {
  s->last_pos[i].rid = next_rID;
  for (j = 0; j < ITEMTYPES; j++)
   s->pos[j] = s->last_pos[i].pos[j];
 } else {
  for (j = 0; j < ITEMTYPES; j++)
   s->pos[j] = 0;
 }
}
