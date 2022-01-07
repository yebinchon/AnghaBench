
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int time_t ;


 scalar_t__ TRUE ;
 int check_leap_expiration (int,int ,int const*) ;
 scalar_t__ have_leapfile ;
 scalar_t__* leapfile_name ;
 int leapfile_stat ;
 scalar_t__ leapsec_load_file (scalar_t__*,int *,int,int) ;

void
check_leap_file(
 int is_daily_check,
 uint32_t ntptime ,
 const time_t *systime
 )
{

 if ( ! (leapfile_name && *leapfile_name))
  return;


 if (leapsec_load_file(
      leapfile_name, &leapfile_stat,
      !have_leapfile, is_daily_check))
  have_leapfile = TRUE;
 else if (!have_leapfile)
  return;

 check_leap_expiration(is_daily_check, ntptime, systime);
}
