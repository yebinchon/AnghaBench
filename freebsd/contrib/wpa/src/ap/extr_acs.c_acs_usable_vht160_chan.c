
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_channel_data {int const chan; } ;


 unsigned int ARRAY_SIZE (int const*) ;

__attribute__((used)) static int acs_usable_vht160_chan(const struct hostapd_channel_data *chan)
{
 const int allowed[] = { 36, 100 };
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(allowed); i++)
  if (chan->chan == allowed[i])
   return 1;

 return 0;
}
