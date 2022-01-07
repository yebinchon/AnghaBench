
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgchain {scalar_t__ cgc_busy; } ;



__attribute__((used)) static void
unbusycg(struct cgchain *cgc)
{

 cgc->cgc_busy = 0;
}
