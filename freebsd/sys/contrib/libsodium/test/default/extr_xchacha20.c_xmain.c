
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tv_box_xchacha20poly1305 () ;
 int tv_hchacha20 () ;
 int tv_secretbox_xchacha20poly1305 () ;
 int tv_stream_xchacha20 () ;

int
main(void)
{
    tv_hchacha20();
    tv_stream_xchacha20();
    tv_secretbox_xchacha20poly1305();
    tv_box_xchacha20poly1305();

    return 0;
}
