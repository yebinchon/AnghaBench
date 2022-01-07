
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
struct rwlock {int dummy; } ;
typedef int pmap_t ;


 int PCPU_GET (int) ;
 int * reclaim_pv_chunk_domain (int ,struct rwlock**,int) ;
 int vm_ndomains ;

__attribute__((used)) static vm_page_t
reclaim_pv_chunk(pmap_t locked_pmap, struct rwlock **lockp)
{
 vm_page_t m;
 int i, domain;

 domain = PCPU_GET(domain);
 for (i = 0; i < vm_ndomains; i++) {
  m = reclaim_pv_chunk_domain(locked_pmap, lockp, domain);
  if (m != ((void*)0))
   break;
  domain = (domain + 1) % vm_ndomains;
 }

 return (m);
}
