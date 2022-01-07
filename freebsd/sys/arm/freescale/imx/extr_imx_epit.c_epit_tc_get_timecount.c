
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timecounter {int tc_priv; } ;


 int epit_read_counter (int ) ;

__attribute__((used)) static u_int
epit_tc_get_timecount(struct timecounter *tc)
{

 return (epit_read_counter(tc->tc_priv));
}
