
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpw_entry_data {int password; scalar_t__ key_data; scalar_t__ random_password; scalar_t__ random_key; } ;
typedef int krb5_principal ;


 int set_key_data (int ,scalar_t__) ;
 int set_password (int ,int ) ;
 int set_random_key (int ) ;
 int set_random_password (int ) ;

__attribute__((used)) static int
do_cpw_entry(krb5_principal principal, void *data)
{
    struct cpw_entry_data *e = data;

    if (e->random_key)
 return set_random_key (principal);
    else if (e->random_password)
 return set_random_password (principal);
    else if (e->key_data)
 return set_key_data (principal, e->key_data);
    else
 return set_password (principal, e->password);
}
