
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int leapsec_get_table (int ) ;
 int reset_times (int ) ;

void
leapsec_reset_frame(void)
{
 reset_times(leapsec_get_table(FALSE));
}
