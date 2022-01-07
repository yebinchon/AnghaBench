
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uni {int custat; } ;



u_int
uni_getcustate(const struct uni *uni)
{
 return (uni->custat);
}
