
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10hdmiaudio_chinfo {int blocksize; } ;
typedef int kobj_t ;



__attribute__((used)) static uint32_t
a10hdmiaudio_chan_setblocksize(kobj_t obj, void *data, uint32_t blocksize)
{
 struct a10hdmiaudio_chinfo *ch = data;

 ch->blocksize = blocksize & ~3;

 return (ch->blocksize);
}
