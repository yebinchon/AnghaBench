
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LDNS_MOD (int,int) ;

__attribute__((used)) static int
is_leap_year(int year)
{
 return LDNS_MOD(year, 4) == 0 && (LDNS_MOD(year, 100) != 0
     || LDNS_MOD(year, 400) == 0);
}
