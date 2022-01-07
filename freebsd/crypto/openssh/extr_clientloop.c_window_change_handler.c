
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int received_window_change_signal ;

__attribute__((used)) static void
window_change_handler(int sig)
{
 received_window_change_signal = 1;
}
