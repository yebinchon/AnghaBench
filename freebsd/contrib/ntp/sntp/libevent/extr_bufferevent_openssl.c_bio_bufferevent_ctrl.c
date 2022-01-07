
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bufferevent {int dummy; } ;
struct TYPE_3__ {long shutdown; struct bufferevent* ptr; } ;
typedef TYPE_1__ BIO ;
 int bufferevent_get_input (struct bufferevent*) ;
 int bufferevent_get_output (struct bufferevent*) ;
 int evbuffer_get_length (int ) ;

__attribute__((used)) static long
bio_bufferevent_ctrl(BIO *b, int cmd, long num, void *ptr)
{
 struct bufferevent *bufev = b->ptr;
 long ret = 1;

 switch (cmd) {
 case 131:
  ret = b->shutdown;
  break;
 case 129:
  b->shutdown = (int)num;
  break;
 case 130:
  ret = evbuffer_get_length(bufferevent_get_input(bufev)) != 0;
  break;
 case 128:
  ret = evbuffer_get_length(bufferevent_get_output(bufev)) != 0;
  break;


 case 133:
 case 132:
  ret = 1;
  break;
 default:
  ret = 0;
  break;
 }
 return ret;
}
