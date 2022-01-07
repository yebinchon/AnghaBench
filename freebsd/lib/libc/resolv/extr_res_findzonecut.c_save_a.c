
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int addrs; int flags; } ;
typedef TYPE_3__ rr_ns ;
struct TYPE_11__ {int sin6_len; void* sin6_port; int sin6_addr; int sin6_family; } ;
struct TYPE_10__ {int sin_len; void* sin_port; int sin_addr; int sin_family; } ;
struct TYPE_14__ {TYPE_2__ sin6; TYPE_1__ sin; } ;
struct TYPE_13__ {TYPE_6__ addr; } ;
typedef TYPE_4__ rr_a ;
typedef int res_state ;
typedef int ns_sect ;
typedef int ns_rr ;
typedef int ns_msg ;
typedef scalar_t__ ns_class ;


 int AF_INET ;
 int AF_INET6 ;
 int APPEND (int ,TYPE_4__*,int ) ;
 int DPRINTF (char*) ;
 int INIT_LINK (TYPE_4__*,int ) ;
 int NAMESERVER_PORT ;
 scalar_t__ NS_INADDRSZ ;
 int RES_IPV4ONLY ;
 int RES_IPV6ONLY ;
 int RR_NS_HAVE_V4 ;
 int RR_NS_HAVE_V6 ;
 int abort () ;
 void* htons (int ) ;
 int link ;
 TYPE_4__* malloc (int) ;
 int memcpy (int *,int ,int) ;
 int memset (TYPE_6__*,int ,int) ;
 int ns_msg_count (int ,int ) ;
 int ns_o_query ;
 scalar_t__ ns_parserr (int *,int ,int,int *) ;
 scalar_t__ ns_rr_class (int ) ;
 int ns_rr_name (int ) ;
 int ns_rr_rdata (int ) ;
 scalar_t__ ns_rr_rdlen (int ) ;
 int ns_rr_type (int ) ;
 int ns_samename (int ,char const*) ;


 int p_section (int ,int ) ;

__attribute__((used)) static int
save_a(res_state statp, ns_msg *msg, ns_sect sect,
       const char *owner, ns_class class, int opts,
       rr_ns *nsrr)
{
 int i;

 for (i = 0; i < ns_msg_count(*msg, sect); i++) {
  ns_rr rr;
  rr_a *arr;

  if (ns_parserr(msg, sect, i, &rr) < 0) {
   DPRINTF(("save_a: ns_parserr(%s, %d) failed",
     p_section(sect, ns_o_query), i));
   return (-1);
  }
  if ((ns_rr_type(rr) != 129 &&
       ns_rr_type(rr) != 128) ||
      ns_rr_class(rr) != class ||
      ns_samename(ns_rr_name(rr), owner) != 1 ||
      ns_rr_rdlen(rr) != NS_INADDRSZ)
   continue;
  if ((opts & RES_IPV6ONLY) != 0 && ns_rr_type(rr) != 128)
   continue;
  if ((opts & RES_IPV4ONLY) != 0 && ns_rr_type(rr) != 129)
   continue;
  arr = malloc(sizeof *arr);
  if (arr == ((void*)0)) {
   DPRINTF(("save_a: malloc failed"));
   return (-1);
  }
  INIT_LINK(arr, link);
  memset(&arr->addr, 0, sizeof(arr->addr));
  switch (ns_rr_type(rr)) {
  case 129:
   arr->addr.sin.sin_family = AF_INET;



   memcpy(&arr->addr.sin.sin_addr, ns_rr_rdata(rr),
          NS_INADDRSZ);
   arr->addr.sin.sin_port = htons(NAMESERVER_PORT);
   nsrr->flags |= RR_NS_HAVE_V4;
   break;
  case 128:
   arr->addr.sin6.sin6_family = AF_INET6;



   memcpy(&arr->addr.sin6.sin6_addr, ns_rr_rdata(rr), 16);
   arr->addr.sin6.sin6_port = htons(NAMESERVER_PORT);
   nsrr->flags |= RR_NS_HAVE_V6;
   break;
  default:
   abort();
  }
  APPEND(nsrr->addrs, arr, link);
 }
 return (0);
}
