
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isoent {int dummy; } ;
struct ctl_extr_rec {unsigned char* bp; int cur_len; int dr_len; int limit; int * ce_ptr; struct isoent* isoent; scalar_t__ use_extr; } ;


 int DR_LIMIT ;

__attribute__((used)) static unsigned char *
extra_open_record(unsigned char *bp, int dr_len, struct isoent *isoent,
    struct ctl_extr_rec *ctl)
{
 ctl->bp = bp;
 if (bp != ((void*)0))
  bp += dr_len;
 ctl->use_extr = 0;
 ctl->isoent = isoent;
 ctl->ce_ptr = ((void*)0);
 ctl->cur_len = ctl->dr_len = dr_len;
 ctl->limit = DR_LIMIT;

 return (bp);
}
