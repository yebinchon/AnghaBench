
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double clock_epoch ;
 double current_time ;
 double drift_comp ;
 int set_freq (double) ;

__attribute__((used)) static double
direct_freq(
 double fp_offset
 )
{
 set_freq(fp_offset / (current_time - clock_epoch));

 return drift_comp;
}
