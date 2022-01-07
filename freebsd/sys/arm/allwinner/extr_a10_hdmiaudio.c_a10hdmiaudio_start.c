
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a10hdmiaudio_chinfo {scalar_t__ pos; } ;


 int a10hdmiaudio_dmaconfig (struct a10hdmiaudio_chinfo*) ;
 int a10hdmiaudio_transfer (struct a10hdmiaudio_chinfo*) ;

__attribute__((used)) static void
a10hdmiaudio_start(struct a10hdmiaudio_chinfo *ch)
{
 ch->pos = 0;


 a10hdmiaudio_dmaconfig(ch);


 a10hdmiaudio_transfer(ch);
}
