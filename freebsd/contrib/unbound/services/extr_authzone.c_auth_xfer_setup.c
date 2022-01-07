
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_zone {int dummy; } ;
struct auth_xfer {int dummy; } ;


 int xfr_find_soa (struct auth_zone*,struct auth_xfer*) ;

__attribute__((used)) static int
auth_xfer_setup(struct auth_zone* z, struct auth_xfer* x)
{


 if(!z || !x) return 1;
 if(!xfr_find_soa(z, x)) {
  return 1;
 }

 return 1;
}
