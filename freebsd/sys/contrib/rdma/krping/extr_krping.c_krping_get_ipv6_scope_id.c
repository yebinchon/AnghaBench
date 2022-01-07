
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ifnet {int if_index; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET_QUIET (int ) ;
 int TD_TO_VNET (int ) ;
 int curthread ;
 int if_rele (struct ifnet*) ;
 struct ifnet* ifunit_ref (char*) ;

__attribute__((used)) static uint16_t
krping_get_ipv6_scope_id(char *name)
{
 struct ifnet *ifp;
 uint16_t retval;

 if (name == ((void*)0))
  return (0);
 CURVNET_SET_QUIET(TD_TO_VNET(curthread));
 ifp = ifunit_ref(name);
 CURVNET_RESTORE();
 if (ifp == ((void*)0))
  return (0);
 retval = ifp->if_index;
 if_rele(ifp);
 return (retval);
}
