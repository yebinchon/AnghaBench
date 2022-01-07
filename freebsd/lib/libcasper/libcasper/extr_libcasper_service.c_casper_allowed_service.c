
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 scalar_t__ nvlist_exists_null (int const*,char const*) ;

__attribute__((used)) static bool
casper_allowed_service(const nvlist_t *limits, const char *service)
{

 if (limits == ((void*)0))
  return (1);

 if (nvlist_exists_null(limits, service))
  return (1);

 return (0);
}
