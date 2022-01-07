
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (unsigned char*,int,int) ;

__attribute__((used)) static void
set_date_time_null(unsigned char *p)
{
 memset(p, (int)'0', 16);
 p[16] = 0;
}
