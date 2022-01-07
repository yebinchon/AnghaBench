
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int rrset_ns ;
struct TYPE_6__ {int name; } ;
typedef TYPE_1__ rr_ns ;


 TYPE_1__* HEAD (int ) ;
 TYPE_1__* NEXT (TYPE_1__*,int ) ;
 int link ;
 int ns_samename (int ,char const*) ;

__attribute__((used)) static rr_ns *
find_ns(rrset_ns *nsrrsp, const char *dname) {
 rr_ns *nsrr;

 for (nsrr = HEAD(*nsrrsp); nsrr != ((void*)0); nsrr = NEXT(nsrr, link))
  if (ns_samename(nsrr->name, dname) == 1)
   return (nsrr);
 return (((void*)0));
}
