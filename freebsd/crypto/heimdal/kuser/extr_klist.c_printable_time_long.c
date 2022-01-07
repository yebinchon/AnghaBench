
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 char* printable_time_internal (int ,int) ;

__attribute__((used)) static char*
printable_time_long(time_t t)
{
    return printable_time_internal(t, 20);
}
