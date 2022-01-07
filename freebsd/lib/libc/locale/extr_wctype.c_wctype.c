
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wctype_t ;


 int wctype_l (char const*,int ) ;

wctype_t wctype(const char *property)
{
 return wctype_l(property, 0);
}
