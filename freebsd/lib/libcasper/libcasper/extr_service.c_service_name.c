
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service {scalar_t__ s_magic; char const* s_name; } ;


 scalar_t__ SERVICE_MAGIC ;
 int assert (int) ;

const char *
service_name(struct service *service)
{

 assert(service->s_magic == SERVICE_MAGIC);
 return (service->s_name);
}
