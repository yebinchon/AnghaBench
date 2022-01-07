
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct snd_mixer {int dummy; } ;
struct a10codec_info {int dummy; } ;
struct TYPE_2__ {unsigned int mask; unsigned int shift; int reg; } ;


 unsigned int CODEC_READ (struct a10codec_info*,int ) ;
 int CODEC_WRITE (struct a10codec_info*,int ,unsigned int) ;
 TYPE_1__* a10_mixers ;
 struct a10codec_info* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static int
a10_mixer_set(struct snd_mixer *m, unsigned dev, unsigned left,
    unsigned right)
{
 struct a10codec_info *sc = mix_getdevinfo(m);
 uint32_t val;
 unsigned nvol, max;

 max = a10_mixers[dev].mask >> a10_mixers[dev].shift;
 nvol = (left * max) / 100;

 val = CODEC_READ(sc, a10_mixers[dev].reg);
 val &= ~a10_mixers[dev].mask;
 val |= (nvol << a10_mixers[dev].shift);
 CODEC_WRITE(sc, a10_mixers[dev].reg, val);

 left = right = (left * 100) / max;
 return (left | (right << 8));
}
