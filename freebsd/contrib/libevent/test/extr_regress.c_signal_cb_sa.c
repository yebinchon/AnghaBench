
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_ok ;

__attribute__((used)) static void
signal_cb_sa(int sig)
{
 test_ok = 2;
}
