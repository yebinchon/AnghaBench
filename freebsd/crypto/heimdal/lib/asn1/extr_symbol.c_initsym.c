
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmp ;
 int hash ;
 int hashtabnew (int,int ,int ) ;
 int htab ;

void
initsym(void)
{
    htab = hashtabnew(101, cmp, hash);
}
