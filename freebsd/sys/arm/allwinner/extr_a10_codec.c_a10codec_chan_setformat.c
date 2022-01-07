
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10codec_chinfo {int format; } ;
typedef int kobj_t ;



__attribute__((used)) static int
a10codec_chan_setformat(kobj_t obj, void *data, uint32_t format)
{
 struct a10codec_chinfo *ch = data;

 ch->format = format;

 return (0);
}
