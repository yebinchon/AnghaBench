
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrset_ref {int dummy; } ;
struct reply_info {int rrset_count; int * ref; } ;


 int qsort (int *,int ,int,int ) ;
 int reply_info_sortref_cmp ;

void
reply_info_sortref(struct reply_info* rep)
{
 qsort(&rep->ref[0], rep->rrset_count, sizeof(struct rrset_ref),
  reply_info_sortref_cmp);
}
