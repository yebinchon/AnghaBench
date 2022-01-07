
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_extr_rec {int cur_len; int dr_len; int extr_off; int extr_loc; int * ce_ptr; scalar_t__ use_extr; scalar_t__* bp; } ;


 int extra_tell_used_size (struct ctl_extr_rec*,int) ;
 int set_SUSP_CE (int *,int ,int ,int) ;

__attribute__((used)) static void
extra_close_record(struct ctl_extr_rec *ctl, int ce_size)
{
 int padding = 0;

 if (ce_size > 0)
  extra_tell_used_size(ctl, ce_size);

 if (ctl->cur_len & 0x01) {
  ctl->cur_len++;
  if (ctl->bp != ((void*)0))
   ctl->bp[ctl->cur_len] = 0;
  padding = 1;
 }
 if (ctl->use_extr) {
  if (ctl->ce_ptr != ((void*)0))
   set_SUSP_CE(ctl->ce_ptr, ctl->extr_loc,
       ctl->extr_off, ctl->cur_len - padding);
 } else
  ctl->dr_len = ctl->cur_len;
}
