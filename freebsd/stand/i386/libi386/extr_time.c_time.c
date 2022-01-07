
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 scalar_t__ bios_seconds () ;

time_t
time(time_t *t)
{
    static time_t lasttime;
    time_t now, check;
    int same, try;

    same = try = 0;
    check = bios_seconds();
    do {
 now = check;
 check = bios_seconds();
 if (check != now)
     same = 0;
    } while (++same < 8 && ++try < 1000);

    if (now < lasttime)
 now += 24 * 3600;
    lasttime = now;

    if (t != ((void*)0))
 *t = now;
    return(now);
}
