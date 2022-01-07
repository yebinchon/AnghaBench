
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct amdvi_domain {int id; } ;


 int amdvi_inv_device (int) ;
 int amdvi_set_dte (struct amdvi_domain*,int,int) ;
 int printf (char*,int,int) ;

__attribute__((used)) static void
amdvi_remove_device(void *arg, uint16_t devid)
{
 struct amdvi_domain *domain;

 domain = (struct amdvi_domain *)arg;




 amdvi_set_dte(domain, devid, 0);
 amdvi_inv_device(devid);
}
