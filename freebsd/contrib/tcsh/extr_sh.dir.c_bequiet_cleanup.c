
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USE (void*) ;
 scalar_t__ bequiet ;

__attribute__((used)) static void
bequiet_cleanup(void *dummy)
{
    USE(dummy);
    bequiet = 0;
}
