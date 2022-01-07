
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct add_options {char* key_string; int pw_expiration_time_string; int expiration_time_string; int attributes_string; int max_renewable_life_string; int max_ticket_life_string; int password_string; int use_defaults_flag; int random_password_flag; int random_key_flag; } ;
typedef int krb5_key_data ;
typedef scalar_t__ krb5_error_code ;
typedef int int16_t ;


 scalar_t__ add_one_principal (char*,int ,int ,int ,int ,int *,int ,int ,int ,int ,int ) ;
 int context ;
 int fprintf (int ,char*,...) ;
 int kadm5_free_key_data (int ,int*,int *) ;
 int kadm_handle ;
 int krb5_warn (int ,scalar_t__,char*,char*) ;
 scalar_t__ parse_des_key (char*,int *,char const**) ;
 int stderr ;

int
add_new_key(struct add_options *opt, int argc, char **argv)
{
    krb5_error_code ret = 0;
    int i;
    int num;
    krb5_key_data key_data[3];
    krb5_key_data *kdp = ((void*)0);

    num = 0;
    if (opt->random_key_flag)
 ++num;
    if (opt->random_password_flag)
 ++num;
    if (opt->password_string)
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
 kdp = key_data;
    }

    for(i = 0; i < argc; i++) {
 ret = add_one_principal (argv[i],
     opt->random_key_flag,
     opt->random_password_flag,
     opt->use_defaults_flag,
     opt->password_string,
     kdp,
     opt->max_ticket_life_string,
     opt->max_renewable_life_string,
     opt->attributes_string,
     opt->expiration_time_string,
     opt->pw_expiration_time_string);
 if (ret) {
     krb5_warn (context, ret, "adding %s", argv[i]);
     break;
 }
    }
    if (kdp) {
 int16_t dummy = 3;
 kadm5_free_key_data (kadm_handle, &dummy, key_data);
    }
    return ret != 0;
}
