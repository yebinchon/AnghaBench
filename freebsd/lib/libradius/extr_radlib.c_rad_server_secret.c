
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rad_handle {size_t srv; TYPE_1__* servers; } ;
struct TYPE_2__ {char const* secret; } ;



const char *
rad_server_secret(struct rad_handle *h)
{
 return (h->servers[h->srv].secret);
}
