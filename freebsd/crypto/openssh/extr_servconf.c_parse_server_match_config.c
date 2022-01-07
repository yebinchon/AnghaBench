
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection_info {int dummy; } ;
typedef int ServerOptions ;


 int cfg ;
 int copy_set_server_options (int *,int *,int ) ;
 int initialize_server_options (int *) ;
 int parse_server_config (int *,char*,int ,struct connection_info*) ;

void
parse_server_match_config(ServerOptions *options,
   struct connection_info *connectinfo)
{
 ServerOptions mo;

 initialize_server_options(&mo);
 parse_server_config(&mo, "reprocess config", cfg, connectinfo);
 copy_set_server_options(options, &mo, 0);
}
