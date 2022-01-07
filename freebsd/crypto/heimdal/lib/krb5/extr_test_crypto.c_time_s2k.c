
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int krb5_salt ;
typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_enctype ;
struct TYPE_3__ {scalar_t__ length; int * data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;


 int free (char*) ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ krb5_enctype_to_string (int ,int ,char**) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_free_keyblock_contents (int ,int *) ;
 scalar_t__ krb5_string_to_key_salt_opaque (int ,int ,char const*,int ,TYPE_1__,int *) ;
 int printf (char*,char*,int,long,long) ;
 int timevalsub (struct timeval*,struct timeval*) ;

__attribute__((used)) static void
time_s2k(krb5_context context,
  krb5_enctype etype,
  const char *password,
  krb5_salt salt,
  int iterations)
{
    struct timeval tv1, tv2;
    krb5_error_code ret;
    krb5_keyblock key;
    krb5_data opaque;
    char *etype_name;
    int i;

    ret = krb5_enctype_to_string(context, etype, &etype_name);
    if (ret)
 krb5_err(context, 1, ret, "krb5_enctype_to_string");

    opaque.data = ((void*)0);
    opaque.length = 0;

    gettimeofday(&tv1, ((void*)0));

    for (i = 0; i < iterations; i++) {
 ret = krb5_string_to_key_salt_opaque(context, etype, password, salt,
      opaque, &key);
 if (ret)
     krb5_err(context, 1, ret, "krb5_string_to_key_data_salt_opaque");
 krb5_free_keyblock_contents(context, &key);
    }

    gettimeofday(&tv2, ((void*)0));

    timevalsub(&tv2, &tv1);

    printf("%s string2key %d iterations time: %3ld.%06ld\n",
    etype_name, iterations, (long)tv2.tv_sec, (long)tv2.tv_usec);
    free(etype_name);

}
