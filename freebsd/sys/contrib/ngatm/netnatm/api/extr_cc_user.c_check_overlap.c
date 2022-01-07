
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_sap {int dummy; } ;
struct ccuser {scalar_t__ state; int sap; } ;


 scalar_t__ USER_IN_PREPARING ;
 scalar_t__ USER_IN_WAITING ;
 scalar_t__ unisve_overlap_sap (int ,struct uni_sap*) ;

__attribute__((used)) static int
check_overlap(struct ccuser *user, struct uni_sap *sap)
{
 return ((user->state == USER_IN_PREPARING ||
     user->state == USER_IN_WAITING) &&
     unisve_overlap_sap(user->sap, sap));
}
