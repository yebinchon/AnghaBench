
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int META ;
 int STANDOUT ;
 int SetAttributes (int) ;
 int Tty_eight_bit ;
 scalar_t__ didfds ;
 int ed_set_tty_eight_bit () ;
 scalar_t__ haderr ;
 scalar_t__ is1atty ;
 scalar_t__ is2atty ;
 scalar_t__ isdiagatty ;
 scalar_t__ isoutatty ;
 int putpure (int) ;

int
putraw(int c)
{
    if (haderr ? (didfds ? is2atty : isdiagatty) :
 (didfds ? is1atty : isoutatty)) {
 if (Tty_eight_bit == -1)
     ed_set_tty_eight_bit();
 if (!Tty_eight_bit && (c & META)) {
     c = (c & ~META) | STANDOUT;
 }
 SetAttributes(c);
    }
    return putpure(c);
}
