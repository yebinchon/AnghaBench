
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_ctx {int svc_client_key; int svc_client_cert; int svc_password; int svc_username; int svc_ca_fname; int svc_address; } ;


 int clear_curl (struct http_ctx*) ;
 int clone_str (char**,int ) ;
 int os_free (char*) ;
 int soap_init_client (struct http_ctx*,char*,char*,char*,char*,char*,char*) ;
 int str_clear_free (char*) ;

int soap_reinit_client(struct http_ctx *ctx)
{
 char *address = ((void*)0);
 char *ca_fname = ((void*)0);
 char *username = ((void*)0);
 char *password = ((void*)0);
 char *client_cert = ((void*)0);
 char *client_key = ((void*)0);
 int ret;

 clear_curl(ctx);

 clone_str(&address, ctx->svc_address);
 clone_str(&ca_fname, ctx->svc_ca_fname);
 clone_str(&username, ctx->svc_username);
 clone_str(&password, ctx->svc_password);
 clone_str(&client_cert, ctx->svc_client_cert);
 clone_str(&client_key, ctx->svc_client_key);

 ret = soap_init_client(ctx, address, ca_fname, username, password,
          client_cert, client_key);
 os_free(address);
 os_free(ca_fname);
 str_clear_free(username);
 str_clear_free(password);
 os_free(client_cert);
 os_free(client_key);
 return ret;
}
