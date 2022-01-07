
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ plan; scalar_t__ len; int addr; } ;
struct TYPE_6__ {TYPE_1__ addr; } ;
struct ccconn {TYPE_3__ calling; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ plan; scalar_t__ len; int addr; } ;
struct ccaddr {TYPE_2__ addr; } ;


 int IE_ISPRESENT (TYPE_3__) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
addr_matches(const struct ccaddr *addr, const struct ccconn *conn)
{

 if (!IE_ISPRESENT(conn->calling))
  return (0);

 return (addr->addr.type == conn->calling.addr.type &&
     addr->addr.plan == conn->calling.addr.plan &&
     addr->addr.len == conn->calling.addr.len &&
     memcmp(addr->addr.addr, conn->calling.addr.addr,
     addr->addr.len) == 0);
}
