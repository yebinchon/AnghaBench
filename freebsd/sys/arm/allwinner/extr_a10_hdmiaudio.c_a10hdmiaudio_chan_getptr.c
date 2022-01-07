
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10hdmiaudio_chinfo {int pos; } ;
typedef int kobj_t ;



__attribute__((used)) static uint32_t
a10hdmiaudio_chan_getptr(kobj_t obj, void *data)
{
 struct a10hdmiaudio_chinfo *ch = data;

 return (ch->pos);
}
