
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dmtpps_find_tmr_num_by_padconf () ;
 int dmtpps_find_tmr_num_by_tunable () ;
 int printf (char*) ;

__attribute__((used)) static int
dmtpps_find_tmr_num(void)
{
 int tmr_num;

 if ((tmr_num = dmtpps_find_tmr_num_by_tunable()) == 0)
  tmr_num = dmtpps_find_tmr_num_by_padconf();

 if (tmr_num <= 0) {
  printf("am335x_dmtpps: PPS driver not enabled: unable to find "
      "or configure a capture input pin\n");
  tmr_num = -1;
 }
 return (tmr_num);
}
