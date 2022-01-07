
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_session_ticket_key {unsigned char* key_name; unsigned char* aes_key; unsigned char* hmac_key; } ;
struct config_strlist {int str; struct config_strlist* next; } ;
typedef int FILE ;


 scalar_t__ SSL_CTX_set_tlsext_ticket_key_cb (void*,int ) ;
 int VERB_OPS ;
 struct tls_session_ticket_key* calloc (size_t,int) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 size_t fread (unsigned char*,int,int,int *) ;
 int free (unsigned char*) ;
 int log_err (char*,...) ;
 scalar_t__ malloc (int) ;
 int memset (struct tls_session_ticket_key*,int ,size_t) ;
 int strerror (int ) ;
 struct tls_session_ticket_key* ticket_keys ;
 int tls_session_ticket_key_cb ;
 int verbose (int ,char*,int ) ;

int listen_sslctx_setup_ticket_keys(void* sslctx, struct config_strlist* tls_session_ticket_keys) {
 (void)sslctx;
 (void)tls_session_ticket_keys;
 return 0;


}
