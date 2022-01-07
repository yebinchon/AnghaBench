
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int saw_alarm ;

__attribute__((used)) static void
alarm_hndler(int s)
{
 saw_alarm = 1;
 return;
}
