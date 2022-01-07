
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_selection {scalar_t__ selected; scalar_t__ bytes; } ;



__attribute__((used)) static int
compare_select(const void *arg1, const void *arg2)
{
 if ((((const struct device_selection *)arg1)->selected)
  && (((const struct device_selection *)arg2)->selected == 0))
  return(-1);
 else if ((((const struct device_selection *)arg1)->selected == 0)
       && (((const struct device_selection *)arg2)->selected))
  return(1);
 else if (((const struct device_selection *)arg2)->bytes <
          ((const struct device_selection *)arg1)->bytes)
  return(-1);
 else if (((const struct device_selection *)arg2)->bytes >
   ((const struct device_selection *)arg1)->bytes)
  return(1);
 else
  return(0);
}
