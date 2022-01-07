
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHTTY ;
 int Tty_eight_bit ;
 int errno ;
 int extty ;
 int strerror (int ) ;
 int tty_geteightbit (int *) ;
 int tty_getty (int ,int *) ;
 int xprintf (char*,int ) ;

void
ed_set_tty_eight_bit(void)
{
    if (tty_getty(SHTTY, &extty) == -1) {



 return;
    }
    Tty_eight_bit = tty_geteightbit(&extty);
}
