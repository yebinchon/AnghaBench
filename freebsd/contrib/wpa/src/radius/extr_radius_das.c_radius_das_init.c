
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_das_data {scalar_t__ sock; int shared_secret_len; int * shared_secret; int client_addr; int coa; int disconnect; int ctx; int require_message_authenticator; int require_event_timestamp; int time_window; } ;
struct radius_das_conf {scalar_t__ port; int shared_secret_len; int * shared_secret; int * client_addr; int coa; int disconnect; int ctx; int require_message_authenticator; int require_event_timestamp; int time_window; } ;


 int MSG_ERROR ;
 scalar_t__ eloop_register_read_sock (scalar_t__,int ,struct radius_das_data*,int *) ;
 int os_memcpy (int *,int *,int) ;
 int * os_memdup (int *,int ) ;
 struct radius_das_data* os_zalloc (int) ;
 int radius_das_deinit (struct radius_das_data*) ;
 scalar_t__ radius_das_open_socket (scalar_t__) ;
 int radius_das_receive ;
 int wpa_printf (int ,char*) ;

struct radius_das_data *
radius_das_init(struct radius_das_conf *conf)
{
 struct radius_das_data *das;

 if (conf->port == 0 || conf->shared_secret == ((void*)0) ||
     conf->client_addr == ((void*)0))
  return ((void*)0);

 das = os_zalloc(sizeof(*das));
 if (das == ((void*)0))
  return ((void*)0);

 das->time_window = conf->time_window;
 das->require_event_timestamp = conf->require_event_timestamp;
 das->require_message_authenticator =
  conf->require_message_authenticator;
 das->ctx = conf->ctx;
 das->disconnect = conf->disconnect;
 das->coa = conf->coa;

 os_memcpy(&das->client_addr, conf->client_addr,
    sizeof(das->client_addr));

 das->shared_secret = os_memdup(conf->shared_secret,
           conf->shared_secret_len);
 if (das->shared_secret == ((void*)0)) {
  radius_das_deinit(das);
  return ((void*)0);
 }
 das->shared_secret_len = conf->shared_secret_len;

 das->sock = radius_das_open_socket(conf->port);
 if (das->sock < 0) {
  wpa_printf(MSG_ERROR, "Failed to open UDP socket for RADIUS "
      "DAS");
  radius_das_deinit(das);
  return ((void*)0);
 }

 if (eloop_register_read_sock(das->sock, radius_das_receive, das, ((void*)0)))
 {
  radius_das_deinit(das);
  return ((void*)0);
 }

 return das;
}
