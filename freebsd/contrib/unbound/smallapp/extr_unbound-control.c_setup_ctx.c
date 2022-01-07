
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {int control_cert_file; int control_key_file; int server_cert_file; scalar_t__ control_use_cert; } ;
typedef int SSL_CTX ;


 int SSL_CTX_check_private_key (int *) ;
 int SSL_CTX_load_verify_locations (int *,char*,int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_options (int *,int) ;
 int SSL_CTX_set_verify (int *,int ,int *) ;
 int SSL_CTX_use_PrivateKey_file (int *,char*,int ) ;
 int SSL_CTX_use_certificate_chain_file (int *,char*) ;
 int SSL_FILETYPE_PEM ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 int SSL_VERIFY_PEER ;
 int SSLv23_client_method () ;
 int fatal_exit (char*) ;
 char* fname_after_chroot (int ,struct config_file*,int) ;
 int free (char*) ;
 scalar_t__ options_remote_is_address (struct config_file*) ;
 int ssl_err (char*) ;
 int ssl_path_err (char*,char*) ;

__attribute__((used)) static SSL_CTX*
setup_ctx(struct config_file* cfg)
{
 char* s_cert=((void*)0), *c_key=((void*)0), *c_cert=((void*)0);
 SSL_CTX* ctx;

 if(!(options_remote_is_address(cfg) && cfg->control_use_cert))
  return ((void*)0);
 s_cert = fname_after_chroot(cfg->server_cert_file, cfg, 1);
 c_key = fname_after_chroot(cfg->control_key_file, cfg, 1);
 c_cert = fname_after_chroot(cfg->control_cert_file, cfg, 1);
 if(!s_cert || !c_key || !c_cert)
  fatal_exit("out of memory");
 ctx = SSL_CTX_new(SSLv23_client_method());
 if(!ctx)
  ssl_err("could not allocate SSL_CTX pointer");
 if((SSL_CTX_set_options(ctx, SSL_OP_NO_SSLv2) & SSL_OP_NO_SSLv2)
  != SSL_OP_NO_SSLv2)
  ssl_err("could not set SSL_OP_NO_SSLv2");
 if((SSL_CTX_set_options(ctx, SSL_OP_NO_SSLv3) & SSL_OP_NO_SSLv3)
  != SSL_OP_NO_SSLv3)
  ssl_err("could not set SSL_OP_NO_SSLv3");
 if(!SSL_CTX_use_certificate_chain_file(ctx,c_cert))
  ssl_path_err("Error setting up SSL_CTX client cert", c_cert);
 if (!SSL_CTX_use_PrivateKey_file(ctx,c_key,SSL_FILETYPE_PEM))
  ssl_path_err("Error setting up SSL_CTX client key", c_key);
 if (!SSL_CTX_check_private_key(ctx))
  ssl_err("Error setting up SSL_CTX client key");
 if (SSL_CTX_load_verify_locations(ctx, s_cert, ((void*)0)) != 1)
  ssl_path_err("Error setting up SSL_CTX verify, server cert",
        s_cert);
 SSL_CTX_set_verify(ctx, SSL_VERIFY_PEER, ((void*)0));

 free(s_cert);
 free(c_key);
 free(c_cert);
 return ctx;
}
