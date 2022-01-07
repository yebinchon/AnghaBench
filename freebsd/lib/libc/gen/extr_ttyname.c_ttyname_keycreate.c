
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free ;
 scalar_t__ thr_keycreate (int *,int ) ;
 int ttyname_key ;
 int ttyname_keycreated ;

__attribute__((used)) static void
ttyname_keycreate(void)
{
 ttyname_keycreated = (thr_keycreate(&ttyname_key, free) == 0);
}
