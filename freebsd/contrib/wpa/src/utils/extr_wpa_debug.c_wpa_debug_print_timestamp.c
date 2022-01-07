
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_time {scalar_t__ usec; scalar_t__ sec; } ;


 int fprintf (scalar_t__,char*,long,unsigned int) ;
 int os_get_time (struct os_time*) ;
 scalar_t__ out_file ;
 int printf (char*,long,unsigned int) ;
 int wpa_debug_timestamp ;

void wpa_debug_print_timestamp(void)
{

 struct os_time tv;

 if (!wpa_debug_timestamp)
  return;

 os_get_time(&tv);






 printf("%ld.%06u: ", (long) tv.sec, (unsigned int) tv.usec);

}
