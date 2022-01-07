
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_socket_t ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef int krb5_boolean ;
typedef int krb5_auth_context ;


 scalar_t__ HEIM_ERR_EOF ;
 int doing_useful_work ;
 int exit (int ) ;
 int kadmind_dispatch (void*,int ,int *,int *) ;
 int krb5_data_free (int *) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 scalar_t__ krb5_read_priv_message (int ,int ,int *,int *) ;
 scalar_t__ krb5_write_priv_message (int ,int ,int *,int *) ;
 scalar_t__ term_flag ;

__attribute__((used)) static void
v5_loop (krb5_context contextp,
  krb5_auth_context ac,
  krb5_boolean initial,
  void *kadm_handlep,
  krb5_socket_t fd)
{
    krb5_error_code ret;
    krb5_data in, out;

    for (;;) {
 doing_useful_work = 0;
 if(term_flag)
     exit(0);
 ret = krb5_read_priv_message(contextp, ac, &fd, &in);
 if(ret == HEIM_ERR_EOF)
     exit(0);
 if(ret)
     krb5_err(contextp, 1, ret, "krb5_read_priv_message");
 doing_useful_work = 1;
 kadmind_dispatch(kadm_handlep, initial, &in, &out);
 krb5_data_free(&in);
 ret = krb5_write_priv_message(contextp, ac, &fd, &out);
 if(ret)
     krb5_err(contextp, 1, ret, "krb5_write_priv_message");
    }
}
