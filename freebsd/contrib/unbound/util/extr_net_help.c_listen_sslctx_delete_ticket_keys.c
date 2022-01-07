
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_session_ticket_key {struct tls_session_ticket_key* key_name; } ;


 int explicit_bzero (struct tls_session_ticket_key*,int) ;
 int free (struct tls_session_ticket_key*) ;
 int memset (struct tls_session_ticket_key*,int,int) ;
 struct tls_session_ticket_key* ticket_keys ;

void
listen_sslctx_delete_ticket_keys(void)
{
 struct tls_session_ticket_key *key;
 if(!ticket_keys) return;
 for(key = ticket_keys; key->key_name != ((void*)0); key++) {




  memset(key->key_name, 0xdd, 80);

  free(key->key_name);
 }
 free(ticket_keys);
 ticket_keys = ((void*)0);
}
