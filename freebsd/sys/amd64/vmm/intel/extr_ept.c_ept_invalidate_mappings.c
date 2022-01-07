
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct invept_desc {int eptp; int member_0; } ;


 int invept_single_context ;
 int smp_rendezvous (int *,int ,int *,struct invept_desc*) ;

void
ept_invalidate_mappings(u_long eptp)
{
 struct invept_desc invept_desc = { 0 };

 invept_desc.eptp = eptp;

 smp_rendezvous(((void*)0), invept_single_context, ((void*)0), &invept_desc);
}
