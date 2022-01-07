
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int NEED1 (char*) ;

 int get_token (int ,char*,char*) ;
 int nat64lsn_reset_stats (char const*,int ) ;
 int nat64lsn_stats (char const*,int ) ;
 int nat64statscmds ;

__attribute__((used)) static void
ipfw_nat64lsn_stats_handler(const char *name, uint8_t set, int ac, char *av[])
{
 int tcmd;

 if (ac == 0) {
  nat64lsn_stats(name, set);
  return;
 }
 NEED1("nat64lsn stats needs command");
 tcmd = get_token(nat64statscmds, *av, "nat64lsn stats command");
 switch (tcmd) {
 case 128:
  nat64lsn_reset_stats(name, set);
 }
}
