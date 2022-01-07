
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KSTAT_STRLEN ;
 int bzero (char*,scalar_t__) ;
 int strncpy (char*,char const*,scalar_t__) ;

void
kstat_set_string(char *dst, const char *src)
{

 bzero(dst, KSTAT_STRLEN);
 (void) strncpy(dst, src, KSTAT_STRLEN - 1);
}
