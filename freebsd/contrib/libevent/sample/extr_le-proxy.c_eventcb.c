
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 short BEV_EVENT_EOF ;
 short BEV_EVENT_ERROR ;
 scalar_t__ ERR_func_error_string (unsigned long) ;
 scalar_t__ ERR_lib_error_string (unsigned long) ;
 scalar_t__ ERR_reason_error_string (unsigned long) ;
 int EV_READ ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 int bufferevent_free (struct bufferevent*) ;
 unsigned long bufferevent_get_openssl_error (struct bufferevent*) ;
 int bufferevent_get_output (struct bufferevent*) ;
 int bufferevent_setcb (struct bufferevent*,int *,int ,void (*) (struct bufferevent*,short,void*),int *) ;
 int close_on_finished_writecb ;
 scalar_t__ errno ;
 scalar_t__ evbuffer_get_length (int ) ;
 int fprintf (int ,char*,char const*,char const*,char const*) ;
 int perror (char*) ;
 int readcb (struct bufferevent*,void*) ;
 int stderr ;

__attribute__((used)) static void
eventcb(struct bufferevent *bev, short what, void *ctx)
{
 struct bufferevent *partner = ctx;

 if (what & (BEV_EVENT_EOF|BEV_EVENT_ERROR)) {
  if (what & BEV_EVENT_ERROR) {
   unsigned long err;
   while ((err = (bufferevent_get_openssl_error(bev)))) {
    const char *msg = (const char*)
        ERR_reason_error_string(err);
    const char *lib = (const char*)
        ERR_lib_error_string(err);
    const char *func = (const char*)
        ERR_func_error_string(err);
    fprintf(stderr,
        "%s in %s %s\n", msg, lib, func);
   }
   if (errno)
    perror("connection error");
  }

  if (partner) {

   readcb(bev, ctx);

   if (evbuffer_get_length(
        bufferevent_get_output(partner))) {



    bufferevent_setcb(partner,
        ((void*)0), close_on_finished_writecb,
        eventcb, ((void*)0));
    bufferevent_disable(partner, EV_READ);
   } else {


    bufferevent_free(partner);
   }
  }
  bufferevent_free(bev);
 }
}
