
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int cert_in_cb; int cb_ctx; int event_cb; } ;
struct tls_config {int cert_in_cb; int cb_ctx; int event_cb; } ;


 struct tls_context* os_zalloc (int) ;

__attribute__((used)) static struct tls_context * tls_context_new(const struct tls_config *conf)
{
 struct tls_context *context = os_zalloc(sizeof(*context));
 if (context == ((void*)0))
  return ((void*)0);
 if (conf) {
  context->event_cb = conf->event_cb;
  context->cb_ctx = conf->cb_ctx;
  context->cert_in_cb = conf->cert_in_cb;
 }
 return context;
}
