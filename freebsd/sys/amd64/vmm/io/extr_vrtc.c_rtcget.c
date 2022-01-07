
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtcdev {int reg_b; } ;


 int RTCSB_BIN ;

__attribute__((used)) static int
rtcget(struct rtcdev *rtc, int val, int *retval)
{
 uint8_t upper, lower;

 if (rtc->reg_b & RTCSB_BIN) {
  *retval = val;
  return (0);
 }

 lower = val & 0xf;
 upper = (val >> 4) & 0xf;

 if (lower > 9 || upper > 9)
  return (-1);

 *retval = upper * 10 + lower;
 return (0);
}
