
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_parser_state {char* filename; int line; char const* chroot; struct config_file* cfg; scalar_t__ errors; } ;
struct config_file {int dummy; } ;


 struct config_parser_state* cfg_parser ;
 int init_cfg_parse () ;

__attribute__((used)) static void
create_cfg_parser(struct config_file* cfg, char* filename, const char* chroot)
{
 static struct config_parser_state st;
 cfg_parser = &st;
 cfg_parser->filename = filename;
 cfg_parser->line = 1;
 cfg_parser->errors = 0;
 cfg_parser->cfg = cfg;
 cfg_parser->chroot = chroot;
 init_cfg_parse();
}
