
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_sec; } ;


 scalar_t__ MIN_WAITTIME ;
 int need_flash ;
 TYPE_2__ no_flash ;
 TYPE_1__ now ;

__attribute__((used)) static void
set_need_flash(void)
{
 if (!need_flash) {
  need_flash = 1;



  no_flash.tv_sec = now.tv_sec + MIN_WAITTIME;
 }
}
