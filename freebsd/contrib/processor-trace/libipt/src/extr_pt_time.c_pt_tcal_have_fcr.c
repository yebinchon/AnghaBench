
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_time_cal {scalar_t__ min_fcr; scalar_t__ max_fcr; } ;



__attribute__((used)) static int pt_tcal_have_fcr(const struct pt_time_cal *tcal)
{
 if (!tcal)
  return 0;

 return (tcal->min_fcr <= tcal->max_fcr);
}
