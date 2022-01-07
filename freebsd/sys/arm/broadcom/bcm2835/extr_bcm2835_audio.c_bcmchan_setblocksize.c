
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm2835_audio_chinfo {int blksz; } ;
typedef int kobj_t ;



__attribute__((used)) static uint32_t
bcmchan_setblocksize(kobj_t obj, void *data, uint32_t blocksize)
{
 struct bcm2835_audio_chinfo *ch = data;

 return ch->blksz;
}
