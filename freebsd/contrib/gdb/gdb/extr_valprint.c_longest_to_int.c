
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;


 int error (char*) ;

int
longest_to_int (LONGEST arg)
{

  int rtnval = (int) arg;


  if (sizeof (LONGEST) > sizeof (int))
    {
      if (rtnval != arg)
 {
   error ("Value out of range.");
 }
    }
  return (rtnval);
}
