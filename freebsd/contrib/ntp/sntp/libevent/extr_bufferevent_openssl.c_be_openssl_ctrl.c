
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bufferevent_ctrl_data {int fd; int ptr; } ;
struct bufferevent_openssl {int fd_is_set; int underlying; int state; int ssl; } ;
struct bufferevent {int ev_read; } ;
typedef enum bufferevent_ctrl_op { ____Placeholder_bufferevent_ctrl_op } bufferevent_ctrl_op ;
typedef int BIO ;






 int * BIO_new_socket (int,int ) ;
 int BUFFEREVENT_SSL_OPEN ;
 int SSL_set_bio (int ,int *,int *) ;
 int event_get_fd (int *) ;
 int set_handshake_callbacks (struct bufferevent_openssl*,int) ;
 int set_open_callbacks (struct bufferevent_openssl*,int) ;
 struct bufferevent_openssl* upcast (struct bufferevent*) ;

__attribute__((used)) static int
be_openssl_ctrl(struct bufferevent *bev,
    enum bufferevent_ctrl_op op, union bufferevent_ctrl_data *data)
{
 struct bufferevent_openssl *bev_ssl = upcast(bev);
 switch (op) {
 case 128:
  if (bev_ssl->underlying)
   return -1;
  {
   BIO *bio;
   bio = BIO_new_socket(data->fd, 0);
   SSL_set_bio(bev_ssl->ssl, bio, bio);
   bev_ssl->fd_is_set = 1;
  }
  if (data->fd == -1)
   bev_ssl->fd_is_set = 0;
  if (bev_ssl->state == BUFFEREVENT_SSL_OPEN)
   return set_open_callbacks(bev_ssl, data->fd);
  else {
   return set_handshake_callbacks(bev_ssl, data->fd);
  }
 case 130:
  if (bev_ssl->underlying)
   return -1;
  if (!bev_ssl->fd_is_set)
   return -1;
  data->fd = event_get_fd(&bev->ev_read);
  return 0;
 case 129:
  if (!bev_ssl->underlying)
   return -1;
  data->ptr = bev_ssl->underlying;
  return 0;
 case 131:
 default:
  return -1;
 }
}
