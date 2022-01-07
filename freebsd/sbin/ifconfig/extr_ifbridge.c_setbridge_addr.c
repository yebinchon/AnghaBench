
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int bridge_addresses (int,char*) ;

__attribute__((used)) static void
setbridge_addr(const char *val, int d, int s, const struct afswtch *afp)
{

 bridge_addresses(s, "");
}
