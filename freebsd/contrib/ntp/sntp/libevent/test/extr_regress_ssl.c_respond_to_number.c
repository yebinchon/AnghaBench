
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;


 int EVBUFFER_EOL_LF ;
 int EV_READ ;
 int EV_WRITE ;
 int SSL_renegotiate (int ) ;
 int TT_BLATHER (char*) ;
 int TT_FAIL (char*) ;
 int atoi (char*) ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 int bufferevent_enable (struct bufferevent*,int ) ;
 int bufferevent_free (struct bufferevent*) ;
 struct evbuffer* bufferevent_get_input (struct bufferevent*) ;
 int bufferevent_get_output (struct bufferevent*) ;
 int bufferevent_openssl_get_ssl (struct bufferevent*) ;
 int evbuffer_add_printf (int ,char*,int) ;
 char* evbuffer_readln (struct evbuffer*,int *,int ) ;
 int free (char*) ;
 int renegotiate_at ;
 int strcmp (void*,char*) ;
 int test_is_done ;

__attribute__((used)) static void
respond_to_number(struct bufferevent *bev, void *ctx)
{
 struct evbuffer *b = bufferevent_get_input(bev);
 char *line;
 int n;
 line = evbuffer_readln(b, ((void*)0), EVBUFFER_EOL_LF);
 if (! line)
  return;
 n = atoi(line);
 if (n <= 0)
  TT_FAIL(("Bad number: %s", line));
 free(line);
 TT_BLATHER(("The number was %d", n));
 if (n == 1001) {
  ++test_is_done;
  bufferevent_free(bev);
  return;
 }
 if (!strcmp(ctx, "client") && n == renegotiate_at) {
  SSL_renegotiate(bufferevent_openssl_get_ssl(bev));
 }
 ++n;
 evbuffer_add_printf(bufferevent_get_output(bev),
     "%d\n", n);
 TT_BLATHER(("Done reading; now writing."));
 bufferevent_enable(bev, EV_WRITE);
 bufferevent_disable(bev, EV_READ);
}
