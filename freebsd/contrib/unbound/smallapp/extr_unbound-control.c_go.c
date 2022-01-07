
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {int remote_control_enable; } ;
typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_free (int *) ;
 int SSL_free (int *) ;
 int close (int) ;
 int closesocket (int) ;
 struct config_file* config_create () ;
 int config_delete (struct config_file*) ;
 int config_read (struct config_file*,char const*,int *) ;
 int contact_server (char*,struct config_file*,int) ;
 int fatal_exit (char*) ;
 int go_cmd (int *,int,int,int,char**) ;
 int log_warn (char*) ;
 int * setup_ctx (struct config_file*) ;
 int * setup_ssl (int *,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int w_config_adjust_directory (struct config_file*) ;

__attribute__((used)) static int
go(const char* cfgfile, char* svr, int quiet, int argc, char* argv[])
{
 struct config_file* cfg;
 int fd, ret;
 SSL_CTX* ctx;
 SSL* ssl;


 if(!(cfg = config_create()))
  fatal_exit("out of memory");
 if(!config_read(cfg, cfgfile, ((void*)0)))
  fatal_exit("could not read config file");
 if(!cfg->remote_control_enable)
  log_warn("control-enable is 'no' in the config file.");



 ctx = setup_ctx(cfg);


 fd = contact_server(svr, cfg, argc>0&&strcmp(argv[0],"status")==0);
 ssl = setup_ssl(ctx, fd);


 ret = go_cmd(ssl, fd, quiet, argc, argv);

 if(ssl) SSL_free(ssl);

 close(fd);



 if(ctx) SSL_CTX_free(ctx);
 config_delete(cfg);
 return ret;
}
