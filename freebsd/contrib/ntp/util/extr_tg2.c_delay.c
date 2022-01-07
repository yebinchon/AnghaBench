
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFLNG ;
 int buffer ;
 int fd ;
 int memset (int ,int ,int) ;
 int write (int ,int ,int) ;

void delay (
 int Delay
 )
{
 int samples;

 samples = Delay;
 memset(buffer, 0, BUFLNG);
 while (samples >= BUFLNG) {
  write(fd, buffer, BUFLNG);
  samples -= BUFLNG;
 }
  write(fd, buffer, samples);
}
