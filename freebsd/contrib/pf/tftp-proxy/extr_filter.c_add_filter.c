
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int direction; } ;
struct TYPE_5__ {TYPE_1__ rule; } ;


 int DIOCADDRULE ;
 int EINVAL ;
 int PF_RULESET_FILTER ;
 int dev ;
 int errno ;
 int ioctl (int ,int ,TYPE_2__*) ;
 TYPE_2__ pfr ;
 int prepare_rule (int ,int ,struct sockaddr*,struct sockaddr*,int ,int ) ;

int
add_filter(u_int32_t id, u_int8_t dir, struct sockaddr *src,
    struct sockaddr *dst, u_int16_t d_port, u_int8_t proto)
{
 if (!src || !dst || !d_port || !proto) {
  errno = EINVAL;
  return (-1);
 }

 if (prepare_rule(id, PF_RULESET_FILTER, src, dst, d_port, proto) == -1)
  return (-1);

 pfr.rule.direction = dir;
 if (ioctl(dev, DIOCADDRULE, &pfr) == -1)
  return (-1);

 return (0);
}
