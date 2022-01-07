
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int bsd_get_if_media (void*) ;
 scalar_t__ bsd_set_if_media (void*,int) ;

__attribute__((used)) static int
bsd_set_mediaopt(void *priv, uint32_t mask, uint32_t mode)
{
 int media = bsd_get_if_media(priv);

 if (media < 0)
  return -1;
 media &= ~mask;
 media |= mode;
 if (bsd_set_if_media(priv, media) < 0)
  return -1;
 return 0;
}
