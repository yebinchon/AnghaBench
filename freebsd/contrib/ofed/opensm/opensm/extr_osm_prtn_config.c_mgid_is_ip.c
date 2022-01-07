
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ib_net16_t ;
struct TYPE_3__ {int * raw; } ;
typedef TYPE_1__ ib_gid_t ;
typedef int boolean_t ;


 scalar_t__ cl_hton16 (int) ;

__attribute__((used)) static inline boolean_t mgid_is_ip(const ib_gid_t *mgid)
{
 ib_net16_t ipsig = *(ib_net16_t *)&mgid->raw[2];
 return (ipsig == cl_hton16(0x401b) || ipsig == cl_hton16(0x601b));
}
