
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_mixer {int dummy; } ;
struct a10codec_info {int dummy; } ;
struct TYPE_2__ {unsigned int mask; unsigned int shift; int reg; } ;


 TYPE_1__* h3_mixers ;
 int h3_pr_set_clear (struct a10codec_info*,int ,unsigned int,unsigned int) ;
 struct a10codec_info* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static int
h3_mixer_set(struct snd_mixer *m, unsigned dev, unsigned left,
    unsigned right)
{
 struct a10codec_info *sc = mix_getdevinfo(m);
 unsigned nvol, max;

 max = h3_mixers[dev].mask >> h3_mixers[dev].shift;
 nvol = (left * max) / 100;

 h3_pr_set_clear(sc, h3_mixers[dev].reg,
     nvol << h3_mixers[dev].shift, h3_mixers[dev].mask);

 left = right = (left * 100) / max;
 return (left | (right << 8));
}
