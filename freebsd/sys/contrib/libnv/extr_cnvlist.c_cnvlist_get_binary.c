
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NV_TYPE_BINARY ;
 int nvlist_report_missing (scalar_t__,int ) ;
 void const* nvpair_get_binary (void const*,size_t*) ;
 int nvpair_name (void const*) ;
 scalar_t__ nvpair_type (void const*) ;

const void *
cnvlist_get_binary(const void *cookie, size_t *sizep)
{

 if (nvpair_type(cookie) != NV_TYPE_BINARY)
  nvlist_report_missing(NV_TYPE_BINARY, nvpair_name(cookie));
 return (nvpair_get_binary(cookie, sizep));
}
