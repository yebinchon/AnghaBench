
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 int puts_e7000debug (char*) ;

__attribute__((used)) static void
e7000_resume (ptid_t ptid, int step, enum target_signal sigal)
{
  if (step)
    puts_e7000debug ("S\r");
  else
    puts_e7000debug ("G\r");
}
