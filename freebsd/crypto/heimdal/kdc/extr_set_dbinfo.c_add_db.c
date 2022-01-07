
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_kdc_configuration {int num_db; int * db; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 scalar_t__ ENOMEM ;
 scalar_t__ hdb_create (int ,int *,char const*) ;
 scalar_t__ hdb_set_master_keyfile (int ,int ,char const*) ;
 int krb5_set_error_message (int ,scalar_t__,char*) ;
 void* realloc (int *,int) ;

__attribute__((used)) static krb5_error_code
add_db(krb5_context context, struct krb5_kdc_configuration *c,
       const char *conf, const char *master_key)
{
    krb5_error_code ret;
    void *ptr;

    ptr = realloc(c->db, (c->num_db + 1) * sizeof(*c->db));
    if (ptr == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, "malloc: out of memory");
 return ENOMEM;
    }
    c->db = ptr;

    ret = hdb_create(context, &c->db[c->num_db], conf);
    if(ret)
 return ret;

    c->num_db++;

    if (master_key) {
 ret = hdb_set_master_keyfile(context, c->db[c->num_db - 1], master_key);
 if (ret)
     return ret;
    }

    return 0;
}
