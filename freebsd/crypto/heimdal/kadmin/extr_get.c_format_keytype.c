
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_salt ;
struct TYPE_4__ {scalar_t__* key_data_contents; int * key_data_length; int * key_data_type; } ;
typedef TYPE_1__ krb5_key_data ;
typedef scalar_t__ krb5_error_code ;


 int asprintf (char**,char*,int ,...) ;
 scalar_t__ cmp_salt (int *,TYPE_1__*) ;
 int context ;
 int free (char*) ;
 scalar_t__ krb5_enctype_to_string (int ,int ,char**) ;
 scalar_t__ krb5_salttype_to_string (int ,int ,int ,char**) ;
 char* strdup (char*) ;
 int strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void
format_keytype(krb5_key_data *k, krb5_salt *def_salt, char *buf, size_t buf_len)
{
    krb5_error_code ret;
    char *s;

    ret = krb5_enctype_to_string (context,
      k->key_data_type[0],
      &s);
    if (ret)
 asprintf (&s, "unknown(%d)", k->key_data_type[0]);
    strlcpy(buf, s, buf_len);
    free(s);

    strlcat(buf, "(", buf_len);

    ret = krb5_salttype_to_string (context,
       k->key_data_type[0],
       k->key_data_type[1],
       &s);
    if (ret)
 asprintf (&s, "unknown(%d)", k->key_data_type[1]);
    strlcat(buf, s, buf_len);
    free(s);

    if (cmp_salt(def_salt, k) == 0)
 s = strdup("");
    else if(k->key_data_length[1] == 0)
 s = strdup("()");
    else
 asprintf (&s, "(%.*s)", k->key_data_length[1],
    (char *)k->key_data_contents[1]);
    strlcat(buf, s, buf_len);
    free(s);

    strlcat(buf, ")", buf_len);
}
