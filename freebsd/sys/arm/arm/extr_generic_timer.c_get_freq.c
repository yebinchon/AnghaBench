
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cntfrq ;
 int get_el0 (int ) ;

__attribute__((used)) static int
get_freq(void)
{
 return (get_el0(cntfrq));
}
