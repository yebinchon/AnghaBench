
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BUFLNG ;


 int OFF ;
 scalar_t__ bufcnt ;
 int * buffer ;
 int fd ;
 int * u3000 ;
 int * u6000 ;
 int write (int ,int *,scalar_t__) ;

void poop(
 int pulse,
 int freq,
 int amp,
 int inverted
 )
{
 int increm;
 int i, j;

 if (amp == OFF || freq == 0)
  increm = 10;
 else
  increm = freq / 100;
 j = 0;
 for (i = 0 ; i < pulse * 8; i++) {
  switch (amp) {

  case 129:
   if (inverted)
    buffer[bufcnt++] = ~u3000[j];
   else
    buffer[bufcnt++] = ~u6000[j];
   break;

  case 128:
   if (inverted)
    buffer[bufcnt++] = ~u6000[j];
   else
    buffer[bufcnt++] = ~u3000[j];
   break;

  default:
   buffer[bufcnt++] = ~0;
  }
  if (bufcnt >= BUFLNG) {
   write(fd, buffer, BUFLNG);
   bufcnt = 0;
  }
  j = (j + increm) % 80;
 }
}
