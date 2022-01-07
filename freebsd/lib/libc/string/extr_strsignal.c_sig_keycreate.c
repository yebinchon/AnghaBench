
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free ;
 int sig_key ;
 int sig_keycreated ;
 scalar_t__ thr_keycreate (int *,int ) ;

__attribute__((used)) static void
sig_keycreate(void)
{
 sig_keycreated = (thr_keycreate(&sig_key, free) == 0);
}
