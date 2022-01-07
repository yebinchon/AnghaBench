
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int charclass ;


 scalar_t__ ISLOWER (unsigned int) ;
 scalar_t__ ISUPPER (unsigned int) ;
 scalar_t__ case_fold ;
 int setbit (unsigned int,int ) ;
 unsigned int tolower (unsigned int) ;
 unsigned int toupper (unsigned int) ;

__attribute__((used)) static void
setbit_case_fold (unsigned b, charclass c)
{
  setbit (b, c);
  if (case_fold)
    {
      if (ISUPPER (b))
 setbit (tolower (b), c);
      else if (ISLOWER (b))
 setbit (toupper (b), c);
    }
}
