
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int * V_ipf_arrivetag ;
 int * V_ipf_clonetag ;
 int * V_ipf_departtag ;
 int if_clone_event ;
 int ifnet_arrival_event ;
 int ifnet_departure_event ;

void
ipf_event_dereg(void)
{
 if (V_ipf_arrivetag != ((void*)0)) {
  EVENTHANDLER_DEREGISTER(ifnet_arrival_event, V_ipf_arrivetag);
 }
 if (V_ipf_departtag != ((void*)0)) {
  EVENTHANDLER_DEREGISTER(ifnet_departure_event, V_ipf_departtag);
 }





}
