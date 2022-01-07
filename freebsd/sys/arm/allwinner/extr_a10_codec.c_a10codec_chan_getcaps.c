
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmchan_caps {int dummy; } ;
struct a10codec_chinfo {scalar_t__ dir; } ;
typedef int kobj_t ;


 scalar_t__ PCMDIR_PLAY ;
 struct pcmchan_caps a10codec_pcaps ;
 struct pcmchan_caps a10codec_rcaps ;

__attribute__((used)) static struct pcmchan_caps *
a10codec_chan_getcaps(kobj_t obj, void *data)
{
 struct a10codec_chinfo *ch = data;

 if (ch->dir == PCMDIR_PLAY) {
  return (&a10codec_pcaps);
 } else {
  return (&a10codec_rcaps);
 }
}
