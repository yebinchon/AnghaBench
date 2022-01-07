
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd_options {char* key_string; scalar_t__ password_string; scalar_t__ random_password_flag; scalar_t__ random_key_flag; } ;
struct cpw_entry_data {int * key_data; scalar_t__ password; scalar_t__ random_password; scalar_t__ random_key; } ;
typedef int krb5_key_data ;
typedef scalar_t__ krb5_error_code ;
typedef int int16_t ;


 int do_cpw_entry ;
 scalar_t__ foreach_principal (char*,int ,char*,struct cpw_entry_data*) ;
 int fprintf (int ,char*,...) ;
 int kadm5_free_key_data (int ,int *,int *) ;
 int kadm_handle ;
 scalar_t__ parse_des_key (char*,int *,char const**) ;
 int stderr ;

int
cpw_entry(struct passwd_options *opt, int argc, char **argv)
{
    krb5_error_code ret = 0;
    int i;
    struct cpw_entry_data data;
    int num;
    krb5_key_data key_data[3];

    data.random_key = opt->random_key_flag;
    data.random_password = opt->random_password_flag;
    data.password = opt->password_string;
    data.key_data = ((void*)0);

    num = 0;
    if (data.random_key)
 ++num;
    if (data.random_password)
 ++num;
    if (data.password)
 ++num;
    if (opt->key_string)
 ++num;

    if (num > 1) {
 fprintf (stderr, "give only one of "
  "--random-key, --random-password, --password, --key\n");
 return 1;
    }

    if (opt->key_string) {
 const char *error;

 if (parse_des_key (opt->key_string, key_data, &error)) {
     fprintf (stderr, "failed parsing key \"%s\": %s\n",
       opt->key_string, error);
     return 1;
 }
 data.key_data = key_data;
    }

    for(i = 0; i < argc; i++)
 ret = foreach_principal(argv[i], do_cpw_entry, "cpw", &data);

    if (data.key_data) {
 int16_t dummy;
 kadm5_free_key_data (kadm_handle, &dummy, key_data);
    }

    return ret != 0;
}
