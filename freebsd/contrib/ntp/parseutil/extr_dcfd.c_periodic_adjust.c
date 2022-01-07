
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ADJINTERVAL ;
 scalar_t__ PHASE_WEIGHT ;
 long R_SHIFT (int ,scalar_t__) ;
 scalar_t__ USECSCALE ;
 int accum_drift ;
 int adj_time (long) ;
 int adjustments ;
 int clock_adjust ;

__attribute__((used)) static void
periodic_adjust(
  void
  )
{
 register long adjustment;

 adjustments++;

 adjustment = R_SHIFT(clock_adjust, PHASE_WEIGHT);

 clock_adjust -= adjustment;

 adjustment += R_SHIFT(accum_drift, USECSCALE+ADJINTERVAL);

 adj_time(adjustment);
}
