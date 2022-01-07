
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 int ALLOC (scalar_t__*) ;
 scalar_t__ MAX_TIME ;

void
_kdc_fix_time(time_t **t)
{
    if(*t == ((void*)0)){
 ALLOC(*t);
 **t = MAX_TIME;
    }
    if(**t == 0) **t = MAX_TIME;
}
