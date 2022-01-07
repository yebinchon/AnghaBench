
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_extr_rec {int cur_len; int use_extr; unsigned char* bp; unsigned char* ce_ptr; int limit; int isoent; int extr_loc; int extr_off; } ;


 int RR_CE_SIZE ;
 int extra_close_record (struct ctl_extr_rec*,int ) ;
 unsigned char* extra_get_record (int ,int *,int *,int *) ;
 int extra_space (struct ctl_extr_rec*) ;

__attribute__((used)) static unsigned char *
extra_next_record(struct ctl_extr_rec *ctl, int length)
{
 int cur_len = ctl->cur_len;


 extra_close_record(ctl, RR_CE_SIZE);


 ctl->use_extr = 1;
 if (ctl->bp != ((void*)0)) {

  unsigned char *p;



  ctl->ce_ptr = &ctl->bp[cur_len+1];
  p = extra_get_record(ctl->isoent,
      &ctl->limit, &ctl->extr_off, &ctl->extr_loc);
  ctl->bp = p - 1;
 } else

  (void)extra_get_record(ctl->isoent,
      &ctl->limit, ((void*)0), ((void*)0));
 ctl->cur_len = 0;


 if (extra_space(ctl) < length)
  (void)extra_next_record(ctl, length);

 return (ctl->bp);
}
