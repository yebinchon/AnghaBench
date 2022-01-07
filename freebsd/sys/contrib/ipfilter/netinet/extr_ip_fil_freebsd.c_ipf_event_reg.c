
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 void* EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 void* V_ipf_arrivetag ;
 void* V_ipf_clonetag ;
 void* V_ipf_departtag ;
 int if_clone_event ;
 int ifnet_arrival_event ;
 int ifnet_departure_event ;
 int ipf_ifevent ;

void
ipf_event_reg(void)
{
 V_ipf_arrivetag = EVENTHANDLER_REGISTER(ifnet_arrival_event, ipf_ifevent, ((void*)0), EVENTHANDLER_PRI_ANY);


 V_ipf_departtag = EVENTHANDLER_REGISTER(ifnet_departure_event, ipf_ifevent, ((void*)0), EVENTHANDLER_PRI_ANY);






}
