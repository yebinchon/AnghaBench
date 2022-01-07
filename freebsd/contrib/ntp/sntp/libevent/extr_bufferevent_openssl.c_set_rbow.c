
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_openssl {int read_blocked_on_write; int underlying; } ;


 int start_writing (struct bufferevent_openssl*) ;
 int stop_reading (struct bufferevent_openssl*) ;

__attribute__((used)) static int
set_rbow(struct bufferevent_openssl *bev_ssl)
{
 if (!bev_ssl->underlying)
  stop_reading(bev_ssl);
 bev_ssl->read_blocked_on_write = 1;
 return start_writing(bev_ssl);
}
