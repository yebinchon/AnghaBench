
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;


 int NUM_CHANNELS ;

__attribute__((used)) static int
am335x_ehrpwm_channel_count(device_t dev, u_int *nchannel)
{

 *nchannel = NUM_CHANNELS;

 return (0);
}
