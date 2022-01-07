
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_user_mad {int dummy; } ;


 scalar_t__ new_user_mad_api ;

size_t umad_size(void)
{
 return new_user_mad_api ? sizeof(struct ib_user_mad) :
     sizeof(struct ib_user_mad) - 8;
}
