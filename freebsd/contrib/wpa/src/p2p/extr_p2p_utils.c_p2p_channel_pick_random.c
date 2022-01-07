
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int r ;


 scalar_t__ os_get_random (int const*,int) ;

__attribute__((used)) static u8 p2p_channel_pick_random(const u8 *channels, unsigned int num_channels)
{
 unsigned int r;
 if (os_get_random((u8 *) &r, sizeof(r)) < 0)
  r = 0;
 r %= num_channels;
 return channels[r];
}
