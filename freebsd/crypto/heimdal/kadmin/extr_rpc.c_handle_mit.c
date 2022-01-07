
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef int krb5_socket_t ;
typedef int krb5_context ;


 int INSIST (int ) ;
 int dcontext ;
 int * krb5_storage_from_fd (int ) ;
 int process_stream (int ,void*,size_t,int *) ;

int
handle_mit(krb5_context contextp, void *buf, size_t len, krb5_socket_t sock)
{
    krb5_storage *sp;

    dcontext = contextp;

    sp = krb5_storage_from_fd(sock);
    INSIST(sp != ((void*)0));

    process_stream(contextp, buf, len, sp);

    return 0;
}
