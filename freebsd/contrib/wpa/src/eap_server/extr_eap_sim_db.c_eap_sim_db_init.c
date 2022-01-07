
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_db_data {int sock; void (* get_complete_cb ) (void*,void*) ;unsigned int eap_sim_db_timeout; struct eap_sim_db_data* fname; int * sqlite_db; void* ctx; } ;


 int MSG_DEBUG ;
 int * db_open (char*) ;
 int eap_sim_db_close_socket (struct eap_sim_db_data*) ;
 scalar_t__ eap_sim_db_open_socket (struct eap_sim_db_data*) ;
 int os_free (struct eap_sim_db_data*) ;
 struct eap_sim_db_data* os_strdup (char const*) ;
 scalar_t__ os_strncmp (struct eap_sim_db_data*,char*,int) ;
 char* os_strstr (struct eap_sim_db_data*,char*) ;
 struct eap_sim_db_data* os_zalloc (int) ;
 int wpa_printf (int ,char*) ;

struct eap_sim_db_data *
eap_sim_db_init(const char *config, unsigned int db_timeout,
  void (*get_complete_cb)(void *ctx, void *session_ctx),
  void *ctx)
{
 struct eap_sim_db_data *data;
 char *pos;

 data = os_zalloc(sizeof(*data));
 if (data == ((void*)0))
  return ((void*)0);

 data->sock = -1;
 data->get_complete_cb = get_complete_cb;
 data->ctx = ctx;
 data->eap_sim_db_timeout = db_timeout;
 data->fname = os_strdup(config);
 if (data->fname == ((void*)0))
  goto fail;
 pos = os_strstr(data->fname, " db=");
 if (pos) {
  *pos = '\0';






 }

 if (os_strncmp(data->fname, "unix:", 5) == 0) {
  if (eap_sim_db_open_socket(data)) {
   wpa_printf(MSG_DEBUG, "EAP-SIM DB: External database "
       "connection not available - will retry "
       "later");
  }
 }

 return data;

fail:
 eap_sim_db_close_socket(data);
 os_free(data->fname);
 os_free(data);
 return ((void*)0);
}
