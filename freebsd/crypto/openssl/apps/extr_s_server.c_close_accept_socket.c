
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_closesocket (scalar_t__) ;
 int BIO_printf (int ,char*) ;
 scalar_t__ accept_socket ;
 int bio_err ;

__attribute__((used)) static void close_accept_socket(void)
{
    BIO_printf(bio_err, "shutdown accept socket\n");
    if (accept_socket >= 0) {
        BIO_closesocket(accept_socket);
    }
}
