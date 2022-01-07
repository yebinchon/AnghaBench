
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int hd_fd ;

__attribute__((used)) static void
hd44780_finish(void)
{
    close(hd_fd);
}
