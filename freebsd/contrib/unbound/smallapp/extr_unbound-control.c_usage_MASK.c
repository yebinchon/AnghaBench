#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 char* CONFIGFILE ; 
 char* PACKAGE_BUGREPORT ; 
 char* PACKAGE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1("Usage:	local-unbound-control [options] command\n");
	FUNC1("	Remote control utility for unbound server.\n");
	FUNC1("Options:\n");
	FUNC1("  -c file	config file, default is %s\n", CONFIGFILE);
	FUNC1("  -s ip[@port]	server address, if omitted config is used.\n");
	FUNC1("  -q		quiet (don't print anything if it works ok).\n");
	FUNC1("  -h		show this usage help.\n");
	FUNC1("Commands:\n");
	FUNC1("  start				start server; runs unbound(8)\n");
	FUNC1("  stop				stops the server\n");
	FUNC1("  reload			reloads the server\n");
	FUNC1("  				(this flushes data, stats, requestlist)\n");
	FUNC1("  stats				print statistics\n");
	FUNC1("  stats_noreset			peek at statistics\n");
#ifdef HAVE_SHMGET
	printf("  stats_shm			print statistics using shm\n");
#endif
	FUNC1("  status			display status of server\n");
	FUNC1("  verbosity <number>		change logging detail\n");
	FUNC1("  log_reopen			close and open the logfile\n");
	FUNC1("  local_zone <name> <type>	add new local zone\n");
	FUNC1("  local_zone_remove <name>	remove local zone and its contents\n");
	FUNC1("  local_data <RR data...>	add local data, for example\n");
	FUNC1("				local_data www.example.com A 192.0.2.1\n");
	FUNC1("  local_data_remove <name>	remove local RR data from name\n");
	FUNC1("  local_zones, local_zones_remove, local_datas, local_datas_remove\n");
	FUNC1("  				same, but read list from stdin\n");
	FUNC1("  				(one entry per line).\n");
	FUNC1("  dump_cache			print cache to stdout\n");
	FUNC1("  load_cache			load cache from stdin\n");
	FUNC1("  lookup <name>			print nameservers for name\n");
	FUNC1("  flush <name>			flushes common types for name from cache\n");
	FUNC1("  				types:  A, AAAA, MX, PTR, NS,\n");
	FUNC1("					SOA, CNAME, DNAME, SRV, NAPTR\n");
	FUNC1("  flush_type <name> <type>	flush name, type from cache\n");
	FUNC1("  flush_zone <name>		flush everything at or under name\n");
	FUNC1("  				from rr and dnssec caches\n");
	FUNC1("  flush_bogus			flush all bogus data\n");
	FUNC1("  flush_negative		flush all negative data\n");
	FUNC1("  flush_stats 			flush statistics, make zero\n");
	FUNC1("  flush_requestlist 		drop queries that are worked on\n");
	FUNC1("  dump_requestlist		show what is worked on by first thread\n");
	FUNC1("  flush_infra [all | ip] 	remove ping, edns for one IP or all\n");
	FUNC1("  dump_infra			show ping and edns entries\n");
	FUNC1("  set_option opt: val		set option to value, no reload\n");
	FUNC1("  get_option opt		get option value\n");
	FUNC1("  list_stubs			list stub-zones and root hints in use\n");
	FUNC1("  list_forwards			list forward-zones in use\n");
	FUNC1("  list_insecure			list domain-insecure zones\n");
	FUNC1("  list_local_zones		list local-zones in use\n");
	FUNC1("  list_local_data		list local-data RRs in use\n");
	FUNC1("  insecure_add zone 		add domain-insecure zone\n");
	FUNC1("  insecure_remove zone		remove domain-insecure zone\n");
	FUNC1("  forward_add [+i] zone addr..	add forward-zone with servers\n");
	FUNC1("  forward_remove [+i] zone	remove forward zone\n");
	FUNC1("  stub_add [+ip] zone addr..	add stub-zone with servers\n");
	FUNC1("  stub_remove [+i] zone		remove stub zone\n");
	FUNC1("		+i		also do dnssec insecure point\n");
	FUNC1("		+p		set stub to use priming\n");
	FUNC1("  forward [off | addr ...]	without arg show forward setup\n");
	FUNC1("				or off to turn off root forwarding\n");
	FUNC1("				or give list of ip addresses\n");
	FUNC1("  ratelimit_list [+a]		list ratelimited domains\n");
	FUNC1("  ip_ratelimit_list [+a]	list ratelimited ip addresses\n");
	FUNC1("		+a		list all, also not ratelimited\n");
	FUNC1("  list_auth_zones		list auth zones\n");
	FUNC1("  auth_zone_reload zone		reload auth zone from zonefile\n");
	FUNC1("  auth_zone_transfer zone	transfer auth zone from master\n");
	FUNC1("  view_list_local_zones	view	list local-zones in view\n");
	FUNC1("  view_list_local_data	view	list local-data RRs in view\n");
	FUNC1("  view_local_zone view name type  	add local-zone in view\n");
	FUNC1("  view_local_zone_remove view name  	remove local-zone in view\n");
	FUNC1("  view_local_data view RR...		add local-data in view\n");
	FUNC1("  view_local_datas view 		add list of local-data to view\n");
	FUNC1("  					one entry per line read from stdin\n");
	FUNC1("  view_local_data_remove view name  	remove local-data in view\n");
	FUNC1("Version %s\n", PACKAGE_VERSION);
	FUNC1("BSD licensed, see LICENSE in source package for details.\n");
	FUNC1("Report bugs to %s\n", PACKAGE_BUGREPORT);
	FUNC0(1);
}