
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int win_resized ;

__attribute__((used)) static void
sig_winch(int sig)
{
 win_resized = 1;
}
