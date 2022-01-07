
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct auth_zone {int dummy; } ;
struct auth_data {int dummy; } ;


 struct auth_data* az_domain_create (struct auth_zone*,int *,size_t) ;
 struct auth_data* az_find_name (struct auth_zone*,int *,size_t) ;

__attribute__((used)) static struct auth_data*
az_domain_find_or_create(struct auth_zone* z, uint8_t* dname,
 size_t dname_len)
{
 struct auth_data* n = az_find_name(z, dname, dname_len);
 if(!n) {
  n = az_domain_create(z, dname, dname_len);
 }
 return n;
}
