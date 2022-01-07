
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int received_sigterm ;

__attribute__((used)) static void
sigterm_handler(int sig)
{
 received_sigterm = sig;
}
