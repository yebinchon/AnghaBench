
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgchain {int cgc_dirty; } ;



__attribute__((used)) static void
dirtycg(struct cgchain *cgc)
{

 cgc->cgc_dirty = 1;
}
