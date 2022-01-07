
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
long
Days ( int Year )
{
    long Return;

    Return = Year * 365;
    if ( Year >= 1 )
    {

 Return += (Year+3) / 4;
 Return -= (Year-1) / 100;
 Return += (Year-1) / 400;
    }

    return Return;
}
