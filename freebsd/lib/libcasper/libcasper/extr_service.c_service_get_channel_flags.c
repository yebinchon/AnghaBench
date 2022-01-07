
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service {scalar_t__ s_magic; int s_flags; } ;


 int CASPER_NO_UNIQ ;
 int CASPER_SERVICE_NO_UNIQ_LIMITS ;
 scalar_t__ SERVICE_MAGIC ;
 int assert (int) ;

int
service_get_channel_flags(struct service *service)
{
 int flags;

 assert(service->s_magic == SERVICE_MAGIC);
 flags = 0;

 if ((service->s_flags & CASPER_SERVICE_NO_UNIQ_LIMITS) != 0)
  flags |= CASPER_NO_UNIQ;

 return (flags);
}
