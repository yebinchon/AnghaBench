
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_17__ ;
typedef struct TYPE_24__ TYPE_16__ ;
typedef struct TYPE_23__ TYPE_15__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct in_addr {int s_addr; } ;
struct in6_addr {int dummy; } ;
typedef void* sa_family_t ;
struct TYPE_21__ {int* __u6_addr32; } ;
struct TYPE_22__ {TYPE_13__ __u6_addr; } ;
struct TYPE_34__ {int s_addr; } ;
struct TYPE_23__ {TYPE_14__ in6; TYPE_9__ in4; } ;
struct TYPE_18__ {int __u6_addr32; } ;
struct TYPE_19__ {TYPE_10__ __u6_addr; } ;
struct TYPE_33__ {void* s_addr; } ;
struct TYPE_20__ {TYPE_11__ in6; TYPE_8__ in4; } ;
struct TYPE_24__ {scalar_t__ ipe_family; int ipe_unit; TYPE_15__ ipe_mask; TYPE_12__ ipe_addr; } ;
typedef TYPE_16__ iphtent_t ;
struct TYPE_30__ {int s_addr; } ;
struct TYPE_31__ {TYPE_5__ in4; } ;
struct TYPE_32__ {TYPE_6__ adf_addr; void* adf_len; } ;
struct TYPE_27__ {int s6_addr; } ;
struct TYPE_26__ {void* s_addr; } ;
struct TYPE_28__ {TYPE_2__ in6; TYPE_1__ in4; } ;
struct TYPE_29__ {scalar_t__ adf_family; void* adf_len; TYPE_3__ adf_addr; } ;
struct TYPE_25__ {TYPE_7__ ipn_mask; TYPE_4__ ipn_addr; } ;
typedef TYPE_17__ ip_pool_node_t ;


 scalar_t__ AF_INET ;
 void* AF_INET6 ;
 int IPLT_HASH ;
 int IPLT_POOL ;
 int addrfamily_t ;
 int adf_addr ;
 int atoi (char*) ;
 void* inet_addr (char*) ;
 int inet_pton (void*,char*,int *) ;
 scalar_t__ ntomask (scalar_t__,int,int*) ;
 void* offsetof (int ,int ) ;
 char* strchr (char*,char) ;

int
setnodeaddr(int type, int role, void *ptr, char *arg)
{
 struct in_addr mask;
 sa_family_t family;
 char *s;

 if (strchr(arg, ':') == ((void*)0)) {
  family = AF_INET;
  s = strchr(arg, '/');
  if (s == ((void*)0))
   mask.s_addr = 0xffffffff;
  else if (strchr(s, '.') == ((void*)0)) {
   if (ntomask(AF_INET, atoi(s + 1), &mask.s_addr) != 0)
    return -1;
  } else {
   mask.s_addr = inet_addr(s + 1);
  }
  if (s != ((void*)0))
   *s = '\0';
 } else {
  family = AF_INET6;





  if ((s = strchr(arg, '/')) == ((void*)0))
   mask.s_addr = 128;
  else
   mask.s_addr = atoi(s + 1);
 }

 if (type == IPLT_POOL) {
  ip_pool_node_t *node = ptr;

  node->ipn_addr.adf_family = family;




   node->ipn_addr.adf_len = offsetof(addrfamily_t,
         adf_addr) +
       sizeof(struct in_addr);
   node->ipn_addr.adf_addr.in4.s_addr = inet_addr(arg);
  node->ipn_mask.adf_len = node->ipn_addr.adf_len;
  node->ipn_mask.adf_addr.in4.s_addr = mask.s_addr;
 } else if (type == IPLT_HASH) {
  iphtent_t *node = ptr;

         node->ipe_family = family;
  node->ipe_unit = role;




   node->ipe_addr.in4.s_addr = inet_addr(arg);
   node->ipe_mask.in4.s_addr = mask.s_addr;
 }

 return 0;
}
