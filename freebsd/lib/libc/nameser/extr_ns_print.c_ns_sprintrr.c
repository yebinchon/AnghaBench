
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ns_rr ;
typedef int ns_msg ;


 int ns_msg_base (int const) ;
 int ns_msg_size (int const) ;
 int ns_rr_class (int const) ;
 int ns_rr_name (int const) ;
 int ns_rr_rdata (int const) ;
 int ns_rr_rdlen (int const) ;
 int ns_rr_ttl (int const) ;
 int ns_rr_type (int const) ;
 int ns_sprintrrf (int ,int ,int ,int ,int ,int ,int ,int ,char const*,char const*,char*,size_t) ;

int
ns_sprintrr(const ns_msg *handle, const ns_rr *rr,
     const char *name_ctx, const char *origin,
     char *buf, size_t buflen)
{
 int n;

 n = ns_sprintrrf(ns_msg_base(*handle), ns_msg_size(*handle),
    ns_rr_name(*rr), ns_rr_class(*rr), ns_rr_type(*rr),
    ns_rr_ttl(*rr), ns_rr_rdata(*rr), ns_rr_rdlen(*rr),
    name_ctx, origin, buf, buflen);
 return (n);
}
