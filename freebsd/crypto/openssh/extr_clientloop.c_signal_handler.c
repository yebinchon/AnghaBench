
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int quit_pending ;
 int received_signal ;

__attribute__((used)) static void
signal_handler(int sig)
{
 received_signal = sig;
 quit_pending = 1;
}
