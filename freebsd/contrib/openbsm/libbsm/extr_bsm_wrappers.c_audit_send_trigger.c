
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_SENDTRIGGER ;
 int auditon (int ,int*,int) ;

int
audit_send_trigger(int *trigger)
{

 return (auditon(A_SENDTRIGGER, trigger, sizeof(*trigger)));
}
