
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_packed_rrset_key {int dummy; } ;
struct reply_info {size_t rrset_count; size_t an_numrrsets; size_t ns_numrrsets; scalar_t__ rrsets; } ;


 int log_assert (int) ;
 int memmove (scalar_t__,scalar_t__,int) ;

void val_reply_remove_auth(struct reply_info* rep, size_t index)
{
 log_assert(index < rep->rrset_count);
 log_assert(index >= rep->an_numrrsets);
 log_assert(index < rep->an_numrrsets+rep->ns_numrrsets);
 memmove(rep->rrsets+index, rep->rrsets+index+1,
  sizeof(struct ub_packed_rrset_key*)*
  (rep->rrset_count - index - 1));
 rep->ns_numrrsets--;
 rep->rrset_count--;
}
