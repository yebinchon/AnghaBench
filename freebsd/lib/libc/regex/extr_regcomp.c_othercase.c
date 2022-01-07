
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;


 int assert (int ) ;
 int iswalpha (int ) ;
 scalar_t__ iswlower (int ) ;
 scalar_t__ iswupper (int ) ;
 int towlower (int ) ;
 int towupper (int ) ;

__attribute__((used)) static wint_t
othercase(wint_t ch)
{
 assert(iswalpha(ch));
 if (iswupper(ch))
  return(towlower(ch));
 else if (iswlower(ch))
  return(towupper(ch));
 else
  return(ch);
}
