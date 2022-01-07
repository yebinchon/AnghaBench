
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;



__attribute__((used)) static int
aw_pwm_channel_count(device_t dev, u_int *nchannel)
{

 *nchannel = 1;

 return (0);
}
