
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {int outgoing_num_ports; int outgoing_num_tcp; int msg_cache_size; int msg_cache_slabs; int rrset_cache_size; int rrset_cache_slabs; int infra_cache_slabs; int key_cache_size; int key_cache_slabs; int neg_cache_size; int val_log_level; int val_log_squelch; scalar_t__ minimal_responses; scalar_t__ donotquery_localhost; scalar_t__ use_syslog; scalar_t__ verbosity; int * chrootdir; } ;


 struct config_file* config_create () ;
 int free (int *) ;

struct config_file* config_create_forlib(void)
{
 struct config_file* cfg = config_create();
 if(!cfg) return ((void*)0);

 free(cfg->chrootdir);
 cfg->chrootdir = ((void*)0);
 cfg->verbosity = 0;
 cfg->outgoing_num_ports = 16;

 cfg->outgoing_num_tcp = 2;
 cfg->msg_cache_size = 1024*1024;
 cfg->msg_cache_slabs = 1;
 cfg->rrset_cache_size = 1024*1024;
 cfg->rrset_cache_slabs = 1;
 cfg->infra_cache_slabs = 1;
 cfg->use_syslog = 0;
 cfg->key_cache_size = 1024*1024;
 cfg->key_cache_slabs = 1;
 cfg->neg_cache_size = 100 * 1024;
 cfg->donotquery_localhost = 0;

 cfg->val_log_level = 2;
 cfg->val_log_squelch = 1;
 cfg->minimal_responses = 0;
 return cfg;
}
