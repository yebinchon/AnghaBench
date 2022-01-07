
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reply_info {size_t rrset_count; int * rrsets; } ;
struct alloc_cache {int dummy; } ;


 int free (struct reply_info*) ;
 int ub_packed_rrset_parsedelete (int ,struct alloc_cache*) ;

void
reply_info_parsedelete(struct reply_info* rep, struct alloc_cache* alloc)
{
 size_t i;
 if(!rep)
  return;

 for(i=0; i<rep->rrset_count; i++) {
  ub_packed_rrset_parsedelete(rep->rrsets[i], alloc);
 }
 free(rep);
}
