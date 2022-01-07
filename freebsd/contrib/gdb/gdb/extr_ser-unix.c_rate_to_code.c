
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rate; int code; } ;


 TYPE_1__* baudtab ;
 int warning (char*,int,int,...) ;

__attribute__((used)) static int
rate_to_code (int rate)
{
  int i;

  for (i = 0; baudtab[i].rate != -1; i++)
    {

      if (rate == baudtab[i].rate)
        return baudtab[i].code;
      else
        {

          if (rate < baudtab[i].rate)
     {
       if (i)
         {
           warning ("Invalid baud rate %d.  Closest values are %d and %d.",
                     rate, baudtab[i - 1].rate, baudtab[i].rate);
  }
       else
         {
           warning ("Invalid baud rate %d.  Minimum value is %d.",
                     rate, baudtab[0].rate);
  }
       return -1;
     }
        }
    }


  warning ("Invalid baud rate %d.  Maximum value is %d.",
            rate, baudtab[i - 1].rate);
  return -1;
}
