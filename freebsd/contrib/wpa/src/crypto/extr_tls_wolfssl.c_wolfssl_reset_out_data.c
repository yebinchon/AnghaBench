
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_out_data {int out_data; } ;


 int wpabuf_alloc_copy (char*,int ) ;

__attribute__((used)) static void wolfssl_reset_out_data(struct tls_out_data *out)
{

 out->out_data = wpabuf_alloc_copy("", 0);
}
