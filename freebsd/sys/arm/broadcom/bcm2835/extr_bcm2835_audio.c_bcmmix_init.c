
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;


 int SOUND_MASK_VOLUME ;
 int mix_setdevs (struct snd_mixer*,int ) ;

__attribute__((used)) static int
bcmmix_init(struct snd_mixer *m)
{

 mix_setdevs(m, SOUND_MASK_VOLUME);

 return (0);
}
