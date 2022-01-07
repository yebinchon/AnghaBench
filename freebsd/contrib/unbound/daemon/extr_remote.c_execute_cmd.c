
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int auth_zones; } ;
struct worker {TYPE_2__* daemon; TYPE_1__ env; } ;
struct daemon_remote {int dummy; } ;
struct TYPE_4__ {int local_zones; } ;
typedef int RES ;


 scalar_t__ cmdcmp (char*,char*,int) ;
 int distribute_cmd (struct daemon_remote*,int *,char*) ;
 int do_auth_zone_reload (int *,struct worker*,char*) ;
 int do_auth_zone_transfer (int *,struct worker*,char*) ;
 int do_data_add (int *,int ,char*) ;
 int do_data_remove (int *,int ,char*) ;
 int do_datas_add (int *,int ) ;
 int do_datas_remove (int *,int ) ;
 int do_dump_infra (int *,struct worker*) ;
 int do_dump_requestlist (int *,struct worker*) ;
 int do_flush_bogus (int *,struct worker*) ;
 int do_flush_infra (int *,struct worker*,char*) ;
 int do_flush_name (int *,struct worker*,char*) ;
 int do_flush_negative (int *,struct worker*) ;
 int do_flush_requestlist (int *,struct worker*) ;
 int do_flush_stats (int *,struct worker*) ;
 int do_flush_type (int *,struct worker*,char*) ;
 int do_flush_zone (int *,struct worker*,char*) ;
 int do_forward (int *,struct worker*,char*) ;
 int do_forward_add (int *,struct worker*,char*) ;
 int do_forward_remove (int *,struct worker*,char*) ;
 int do_get_option (int *,struct worker*,char*) ;
 int do_insecure_add (int *,struct worker*,char*) ;
 int do_insecure_list (int *,struct worker*) ;
 int do_insecure_remove (int *,struct worker*,char*) ;
 int do_ip_ratelimit_list (int *,struct worker*,char*) ;
 int do_list_auth_zones (int *,int ) ;
 int do_list_forwards (int *,struct worker*) ;
 int do_list_local_data (int *,struct worker*,int ) ;
 int do_list_local_zones (int *,int ) ;
 int do_list_stubs (int *,struct worker*) ;
 int do_log_reopen (int *,struct worker*) ;
 int do_lookup (int *,struct worker*,char*) ;
 int do_ratelimit_list (int *,struct worker*,char*) ;
 int do_reload (int *,struct daemon_remote*) ;
 int do_set_option (int *,struct worker*,char*) ;
 int do_stats (int *,struct daemon_remote*,int) ;
 int do_status (int *,struct worker*) ;
 int do_stop (int *,struct daemon_remote*) ;
 int do_stub_add (int *,struct worker*,char*) ;
 int do_stub_remove (int *,struct worker*,char*) ;
 int do_verbosity (int *,char*) ;
 int do_view_data_add (int *,struct worker*,char*) ;
 int do_view_data_remove (int *,struct worker*,char*) ;
 int do_view_datas_add (int *,struct worker*,char*) ;
 int do_view_list_local_data (int *,struct worker*,char*) ;
 int do_view_list_local_zones (int *,struct worker*,char*) ;
 int do_view_zone_add (int *,struct worker*,char*) ;
 int do_view_zone_remove (int *,struct worker*,char*) ;
 int do_zone_add (int *,int ,char*) ;
 int do_zone_remove (int *,int ,char*) ;
 int do_zones_add (int *,int ) ;
 int do_zones_remove (int *,int ) ;
 int dump_cache (int *,struct worker*) ;
 scalar_t__ load_cache (int *,struct worker*) ;
 int send_ok (int *) ;
 char* skipwhite (char*) ;
 int ssl_printf (int *,char*,char*) ;

__attribute__((used)) static void
execute_cmd(struct daemon_remote* rc, RES* ssl, char* cmd,
 struct worker* worker)
{
 char* p = skipwhite(cmd);

 if(cmdcmp(p, "stop", 4)) {
  do_stop(ssl, rc);
  return;
 } else if(cmdcmp(p, "reload", 6)) {
  do_reload(ssl, rc);
  return;
 } else if(cmdcmp(p, "stats_noreset", 13)) {
  do_stats(ssl, rc, 0);
  return;
 } else if(cmdcmp(p, "stats", 5)) {
  do_stats(ssl, rc, 1);
  return;
 } else if(cmdcmp(p, "status", 6)) {
  do_status(ssl, worker);
  return;
 } else if(cmdcmp(p, "dump_cache", 10)) {
  (void)dump_cache(ssl, worker);
  return;
 } else if(cmdcmp(p, "load_cache", 10)) {
  if(load_cache(ssl, worker)) send_ok(ssl);
  return;
 } else if(cmdcmp(p, "list_forwards", 13)) {
  do_list_forwards(ssl, worker);
  return;
 } else if(cmdcmp(p, "list_stubs", 10)) {
  do_list_stubs(ssl, worker);
  return;
 } else if(cmdcmp(p, "list_insecure", 13)) {
  do_insecure_list(ssl, worker);
  return;
 } else if(cmdcmp(p, "list_local_zones", 16)) {
  do_list_local_zones(ssl, worker->daemon->local_zones);
  return;
 } else if(cmdcmp(p, "list_local_data", 15)) {
  do_list_local_data(ssl, worker, worker->daemon->local_zones);
  return;
 } else if(cmdcmp(p, "view_list_local_zones", 21)) {
  do_view_list_local_zones(ssl, worker, skipwhite(p+21));
  return;
 } else if(cmdcmp(p, "view_list_local_data", 20)) {
  do_view_list_local_data(ssl, worker, skipwhite(p+20));
  return;
 } else if(cmdcmp(p, "ratelimit_list", 14)) {
  do_ratelimit_list(ssl, worker, p+14);
  return;
 } else if(cmdcmp(p, "ip_ratelimit_list", 17)) {
  do_ip_ratelimit_list(ssl, worker, p+17);
  return;
 } else if(cmdcmp(p, "list_auth_zones", 15)) {
  do_list_auth_zones(ssl, worker->env.auth_zones);
  return;
 } else if(cmdcmp(p, "auth_zone_reload", 16)) {
  do_auth_zone_reload(ssl, worker, skipwhite(p+16));
  return;
 } else if(cmdcmp(p, "auth_zone_transfer", 18)) {
  do_auth_zone_transfer(ssl, worker, skipwhite(p+18));
  return;
 } else if(cmdcmp(p, "stub_add", 8)) {

  if(rc) distribute_cmd(rc, ssl, cmd);
  do_stub_add(ssl, worker, skipwhite(p+8));
  return;
 } else if(cmdcmp(p, "stub_remove", 11)) {

  if(rc) distribute_cmd(rc, ssl, cmd);
  do_stub_remove(ssl, worker, skipwhite(p+11));
  return;
 } else if(cmdcmp(p, "forward_add", 11)) {

  if(rc) distribute_cmd(rc, ssl, cmd);
  do_forward_add(ssl, worker, skipwhite(p+11));
  return;
 } else if(cmdcmp(p, "forward_remove", 14)) {

  if(rc) distribute_cmd(rc, ssl, cmd);
  do_forward_remove(ssl, worker, skipwhite(p+14));
  return;
 } else if(cmdcmp(p, "insecure_add", 12)) {

  if(rc) distribute_cmd(rc, ssl, cmd);
  do_insecure_add(ssl, worker, skipwhite(p+12));
  return;
 } else if(cmdcmp(p, "insecure_remove", 15)) {

  if(rc) distribute_cmd(rc, ssl, cmd);
  do_insecure_remove(ssl, worker, skipwhite(p+15));
  return;
 } else if(cmdcmp(p, "forward", 7)) {

  if(rc) distribute_cmd(rc, ssl, cmd);
  do_forward(ssl, worker, skipwhite(p+7));
  return;
 } else if(cmdcmp(p, "flush_stats", 11)) {

  if(rc) distribute_cmd(rc, ssl, cmd);
  do_flush_stats(ssl, worker);
  return;
 } else if(cmdcmp(p, "flush_requestlist", 17)) {

  if(rc) distribute_cmd(rc, ssl, cmd);
  do_flush_requestlist(ssl, worker);
  return;
 } else if(cmdcmp(p, "lookup", 6)) {
  do_lookup(ssl, worker, skipwhite(p+6));
  return;
 }
 if(cmdcmp(p, "verbosity", 9)) {
  do_verbosity(ssl, skipwhite(p+9));
 } else if(cmdcmp(p, "local_zone_remove", 17)) {
  do_zone_remove(ssl, worker->daemon->local_zones, skipwhite(p+17));
 } else if(cmdcmp(p, "local_zones_remove", 18)) {
  do_zones_remove(ssl, worker->daemon->local_zones);
 } else if(cmdcmp(p, "local_zone", 10)) {
  do_zone_add(ssl, worker->daemon->local_zones, skipwhite(p+10));
 } else if(cmdcmp(p, "local_zones", 11)) {
  do_zones_add(ssl, worker->daemon->local_zones);
 } else if(cmdcmp(p, "local_data_remove", 17)) {
  do_data_remove(ssl, worker->daemon->local_zones, skipwhite(p+17));
 } else if(cmdcmp(p, "local_datas_remove", 18)) {
  do_datas_remove(ssl, worker->daemon->local_zones);
 } else if(cmdcmp(p, "local_data", 10)) {
  do_data_add(ssl, worker->daemon->local_zones, skipwhite(p+10));
 } else if(cmdcmp(p, "local_datas", 11)) {
  do_datas_add(ssl, worker->daemon->local_zones);
 } else if(cmdcmp(p, "view_local_zone_remove", 22)) {
  do_view_zone_remove(ssl, worker, skipwhite(p+22));
 } else if(cmdcmp(p, "view_local_zone", 15)) {
  do_view_zone_add(ssl, worker, skipwhite(p+15));
 } else if(cmdcmp(p, "view_local_data_remove", 22)) {
  do_view_data_remove(ssl, worker, skipwhite(p+22));
 } else if(cmdcmp(p, "view_local_data", 15)) {
  do_view_data_add(ssl, worker, skipwhite(p+15));
 } else if(cmdcmp(p, "view_local_datas", 16)) {
  do_view_datas_add(ssl, worker, skipwhite(p+16));
 } else if(cmdcmp(p, "flush_zone", 10)) {
  do_flush_zone(ssl, worker, skipwhite(p+10));
 } else if(cmdcmp(p, "flush_type", 10)) {
  do_flush_type(ssl, worker, skipwhite(p+10));
 } else if(cmdcmp(p, "flush_infra", 11)) {
  do_flush_infra(ssl, worker, skipwhite(p+11));
 } else if(cmdcmp(p, "flush", 5)) {
  do_flush_name(ssl, worker, skipwhite(p+5));
 } else if(cmdcmp(p, "dump_requestlist", 16)) {
  do_dump_requestlist(ssl, worker);
 } else if(cmdcmp(p, "dump_infra", 10)) {
  do_dump_infra(ssl, worker);
 } else if(cmdcmp(p, "log_reopen", 10)) {
  do_log_reopen(ssl, worker);
 } else if(cmdcmp(p, "set_option", 10)) {
  do_set_option(ssl, worker, skipwhite(p+10));
 } else if(cmdcmp(p, "get_option", 10)) {
  do_get_option(ssl, worker, skipwhite(p+10));
 } else if(cmdcmp(p, "flush_bogus", 11)) {
  do_flush_bogus(ssl, worker);
 } else if(cmdcmp(p, "flush_negative", 14)) {
  do_flush_negative(ssl, worker);
 } else {
  (void)ssl_printf(ssl, "error unknown command '%s'\n", p);
 }
}
