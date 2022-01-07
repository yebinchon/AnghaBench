
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int wps_pin_str_valid(const char *pin)
{
 const char *p;
 size_t len;

 p = pin;
 while (*p >= '0' && *p <= '9')
  p++;
 if (*p != '\0')
  return 0;

 len = p - pin;
 return len == 4 || len == 8;
}
