
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {struct module_env* env; int tcl; int acl; int auth_zones; int time_boot; int time_last_stat; int superalloc; int mods; scalar_t__ need_to_exit; } ;
struct daemon {struct daemon* env; int tcl; int acl; int auth_zones; int time_boot; int time_last_stat; int superalloc; int mods; scalar_t__ need_to_exit; } ;
typedef int WSADATA ;


 int ERR_load_SSL_strings () ;
 int ERR_load_crypto_strings () ;
 int MAKEWORD (int,int) ;
 scalar_t__ NSS_NoDB_Init (int *) ;
 int OPENSSL_INIT_ADD_ALL_CIPHERS ;
 int OPENSSL_INIT_ADD_ALL_DIGESTS ;
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ;
 int OPENSSL_INIT_LOAD_SSL_STRINGS ;
 int OPENSSL_init_crypto (int,int *) ;
 int OPENSSL_init_ssl (int ,int *) ;
 int OpenSSL_add_all_algorithms () ;
 scalar_t__ SECSuccess ;
 scalar_t__ SSL_COMP_get_compression_methods () ;
 int SSL_library_init () ;
 int WSAStartup (int ,int *) ;
 int acl_list_create () ;
 int acl_list_delete (int ) ;
 int alloc_init (int *,int *,int ) ;
 int auth_zones_create () ;
 scalar_t__ calloc (int,int) ;
 int checklock_start () ;
 void* comp_meth ;
 int edns_known_options_delete (struct module_env*) ;
 int edns_known_options_init (struct module_env*) ;
 int errno ;
 int fatal_exit (char*,...) ;
 int free (struct module_env*) ;
 scalar_t__ getpid () ;
 scalar_t__ gettimeofday (int *,int *) ;
 int log_err (char*,int ) ;
 int modstack_init (int *) ;
 int signal_handling_record () ;
 int sldns_key_EVP_load_gost_id () ;
 int strerror (int ) ;
 int tcl_list_create () ;
 int tcl_list_delete (int ) ;
 scalar_t__ time (int *) ;
 int tzset () ;
 int ub_openssl_lock_init () ;
 int ub_systemseed (unsigned int) ;
 int wsa_strerror (int) ;

struct daemon*
daemon_init(void)
{
 struct daemon* daemon = (struct daemon*)calloc(1,
  sizeof(struct daemon));




 if(!daemon)
  return ((void*)0);







 signal_handling_record();
 checklock_start();
 ub_systemseed((unsigned)time(((void*)0))^(unsigned)getpid()^0xe67);
 daemon->need_to_exit = 0;
 modstack_init(&daemon->mods);
 if(!(daemon->env = (struct module_env*)calloc(1,
  sizeof(*daemon->env)))) {
  free(daemon);
  return ((void*)0);
 }

 if(!edns_known_options_init(daemon->env)) {
  free(daemon->env);
  free(daemon);
  return ((void*)0);
 }
 alloc_init(&daemon->superalloc, ((void*)0), 0);
 daemon->acl = acl_list_create();
 if(!daemon->acl) {
  edns_known_options_delete(daemon->env);
  free(daemon->env);
  free(daemon);
  return ((void*)0);
 }
 daemon->tcl = tcl_list_create();
 if(!daemon->tcl) {
  acl_list_delete(daemon->acl);
  edns_known_options_delete(daemon->env);
  free(daemon->env);
  free(daemon);
  return ((void*)0);
 }
 if(gettimeofday(&daemon->time_boot, ((void*)0)) < 0)
  log_err("gettimeofday: %s", strerror(errno));
 daemon->time_last_stat = daemon->time_boot;
 if((daemon->env->auth_zones = auth_zones_create()) == 0) {
  acl_list_delete(daemon->acl);
  tcl_list_delete(daemon->tcl);
  edns_known_options_delete(daemon->env);
  free(daemon->env);
  free(daemon);
  return ((void*)0);
 }
 return daemon;
}
