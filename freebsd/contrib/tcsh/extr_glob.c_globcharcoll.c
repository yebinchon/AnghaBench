
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int __Char ;


 scalar_t__ islower (int) ;
 scalar_t__ isupper (int) ;
 scalar_t__ iswlower (int) ;
 scalar_t__ iswupper (int) ;
 int strcoll (char*,char*) ;
 int tolower (int) ;
 int towlower (int) ;
 int wcscoll (char*,char*) ;

int
globcharcoll(__Char c1, __Char c2, int cs)
{
    return (c1 - c2);

}
