
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {scalar_t__ verbosity; int num_threads; scalar_t__ edns_buffer_size; scalar_t__ msg_buffer_size; char* chrootdir; char* directory; char* pidfile; char* logfile; char* module_conf; char* username; char* control_key_file; char* control_cert_file; int server_cert_file; int server_key_file; scalar_t__ control_use_cert; scalar_t__ remote_control_enable; int ipsecmod_hook; scalar_t__ ipsecmod_enabled; int dlv_anchor_file; int trusted_keys_file_list; int auto_trust_anchor_file_list; int trust_anchor_file_list; int root_hints; int do_tcp; int do_udp; scalar_t__ prefer_ip6; int do_ip6; int do_ip4; int forwards; int stubs; } ;


 int aclchecks (struct config_file*) ;
 char* basedir (char*) ;
 int check_chroot_filelist (char*,int ,char*,struct config_file*) ;
 int check_chroot_filelist_wild (char*,int ,char*,struct config_file*) ;
 int check_chroot_string (char*,int *,char*,struct config_file*) ;
 int check_modules_exist (char*) ;
 int ecs_conf_checks (struct config_file*) ;
 int endpwent () ;
 int fatal_exit (char*,...) ;
 char* fname_after_chroot (char*,struct config_file*,int) ;
 int free (char*) ;
 int * getpwnam (char*) ;
 int interfacechecks (struct config_file*) ;
 int is_dir (char*) ;
 int is_file (char*) ;
 int localzonechecks (struct config_file*) ;
 scalar_t__ options_remote_is_address (struct config_file*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ strstr (char*,char*) ;
 int tcpconnlimitchecks (struct config_file*) ;
 int view_and_respipchecks (struct config_file*) ;
 int w_config_adjust_directory (struct config_file*) ;
 int warn_hosts (char*,int ) ;

__attribute__((used)) static void
morechecks(struct config_file* cfg)
{
 warn_hosts("stub-host", cfg->stubs);
 warn_hosts("forward-host", cfg->forwards);
 interfacechecks(cfg);
 aclchecks(cfg);
 tcpconnlimitchecks(cfg);

 if(cfg->verbosity < 0)
  fatal_exit("verbosity value < 0");
 if(cfg->num_threads <= 0 || cfg->num_threads > 10000)
  fatal_exit("num_threads value weird");
 if(!cfg->do_ip4 && !cfg->do_ip6)
  fatal_exit("ip4 and ip6 are both disabled, pointless");
 if(!cfg->do_ip6 && cfg->prefer_ip6)
  fatal_exit("cannot prefer and disable ip6, pointless");
 if(!cfg->do_udp && !cfg->do_tcp)
  fatal_exit("udp and tcp are both disabled, pointless");
 if(cfg->edns_buffer_size > cfg->msg_buffer_size)
  fatal_exit("edns-buffer-size larger than msg-buffer-size, "
   "answers will not fit in processing buffer");



 if(cfg->chrootdir && cfg->chrootdir[0] &&
  cfg->chrootdir[strlen(cfg->chrootdir)-1] == '/')
  fatal_exit("chootdir %s has trailing slash '/' please remove.",
   cfg->chrootdir);
 if(cfg->chrootdir && cfg->chrootdir[0] &&
  !is_dir(cfg->chrootdir)) {
  fatal_exit("bad chroot directory");
 }
 if(cfg->directory && cfg->directory[0]) {
  char* ad = fname_after_chroot(cfg->directory, cfg, 0);
  if(!ad) fatal_exit("out of memory");
  if(!is_dir(ad)) fatal_exit("bad chdir directory");
  free(ad);
 }
 if( (cfg->chrootdir && cfg->chrootdir[0]) ||
     (cfg->directory && cfg->directory[0])) {
  if(cfg->pidfile && cfg->pidfile[0]) {
   char* ad = (cfg->pidfile[0]=='/')?strdup(cfg->pidfile):
    fname_after_chroot(cfg->pidfile, cfg, 1);
   char* bd = basedir(ad);
   if(bd && !is_dir(bd))
    fatal_exit("pidfile directory does not exist");
   free(ad);
  }
  if(cfg->logfile && cfg->logfile[0]) {
   char* ad = fname_after_chroot(cfg->logfile, cfg, 1);
   char* bd = basedir(ad);
   if(bd && !is_dir(bd))
    fatal_exit("logfile directory does not exist");
   free(ad);
  }
 }

 check_chroot_filelist("file with root-hints",
  cfg->root_hints, cfg->chrootdir, cfg);
 check_chroot_filelist("trust-anchor-file",
  cfg->trust_anchor_file_list, cfg->chrootdir, cfg);
 check_chroot_filelist("auto-trust-anchor-file",
  cfg->auto_trust_anchor_file_list, cfg->chrootdir, cfg);
 check_chroot_filelist_wild("trusted-keys-file",
  cfg->trusted_keys_file_list, cfg->chrootdir, cfg);
 check_chroot_string("dlv-anchor-file", &cfg->dlv_anchor_file,
  cfg->chrootdir, cfg);
 free(cfg->chrootdir);
 cfg->chrootdir = ((void*)0);


 check_modules_exist(cfg->module_conf);





 if(strcmp(cfg->module_conf, "iterator") != 0
  && strcmp(cfg->module_conf, "validator iterator") != 0
  && strcmp(cfg->module_conf, "dns64 validator iterator") != 0
  && strcmp(cfg->module_conf, "dns64 iterator") != 0
  && strcmp(cfg->module_conf, "respip iterator") != 0
  && strcmp(cfg->module_conf, "respip validator iterator") != 0
  ) {
  fatal_exit("module conf '%s' is not known to work",
   cfg->module_conf);
 }
 if(cfg->remote_control_enable && options_remote_is_address(cfg)
  && cfg->control_use_cert) {
  check_chroot_string("server-key-file", &cfg->server_key_file,
   cfg->chrootdir, cfg);
  check_chroot_string("server-cert-file", &cfg->server_cert_file,
   cfg->chrootdir, cfg);
  if(!is_file(cfg->control_key_file))
   fatal_exit("control-key-file: \"%s\" does not exist",
    cfg->control_key_file);
  if(!is_file(cfg->control_cert_file))
   fatal_exit("control-cert-file: \"%s\" does not exist",
    cfg->control_cert_file);
 }

 localzonechecks(cfg);
 view_and_respipchecks(cfg);



}
