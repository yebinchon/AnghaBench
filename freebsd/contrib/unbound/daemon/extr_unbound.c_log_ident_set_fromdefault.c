
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {scalar_t__* log_identity; } ;


 int log_ident_set (char const*) ;

__attribute__((used)) static void
log_ident_set_fromdefault(struct config_file* cfg,
 const char *log_default_identity)
{
 if(cfg->log_identity == ((void*)0) || cfg->log_identity[0] == 0)
  log_ident_set(log_default_identity);
 else
  log_ident_set(cfg->log_identity);
}
