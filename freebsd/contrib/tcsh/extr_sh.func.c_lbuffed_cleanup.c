
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USE (void*) ;
 int lbuffed ;

__attribute__((used)) static void
lbuffed_cleanup (void *dummy)
{
    USE(dummy);
    lbuffed = 1;
}
