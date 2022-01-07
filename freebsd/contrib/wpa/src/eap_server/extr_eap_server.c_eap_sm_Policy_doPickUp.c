
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
typedef scalar_t__ EapType ;
typedef int Boolean ;


 scalar_t__ EAP_TYPE_IDENTITY ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static Boolean eap_sm_Policy_doPickUp(struct eap_sm *sm, EapType method)
{
 return method == EAP_TYPE_IDENTITY ? TRUE : FALSE;
}
