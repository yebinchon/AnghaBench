
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 int expect (char*,int) ;
 int printf_stdebug (char*) ;

__attribute__((used)) static void
st2000_resume (ptid_t ptid, int step, enum target_signal sig)
{
  if (step)
    {
      printf_stdebug ("ST\r");

      expect ("ST\r", 1);
    }
  else
    {
      printf_stdebug ("GO\r");

      expect ("GO\r", 1);
    }
}
