
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sin; } ;
typedef TYPE_1__ endpt ;


 char const* stoa (int *) ;

const char *
localaddrtoa(
 endpt *la
 )
{
 return (((void*)0) == la)
     ? "<null>"
     : stoa(&la->sin);
}
