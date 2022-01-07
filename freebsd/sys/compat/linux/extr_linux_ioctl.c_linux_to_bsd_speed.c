
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct speedtab {int sp_code; int sp_speed; } ;



__attribute__((used)) static int
linux_to_bsd_speed(int code, struct speedtab *table)
{
 for ( ; table->sp_code != -1; table++)
  if (table->sp_code == code)
   return (table->sp_speed);
 return (-1);
}
