
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HEALTH ;


 scalar_t__ get_lsb_short (unsigned char**) ;

void
get_mbg_health(
 unsigned char **bufpp,
 HEALTH *healthp
 )
{
  *healthp = (HEALTH) get_lsb_short(bufpp);
}
