
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int NEED1 (char*) ;


 int get_token (int ,char*,char*) ;
 int nat64listcmds ;
 int nat64lsn_foreach (int ,char const*,int ,int) ;
 int nat64lsn_show_cb ;
 int nat64lsn_states_cb ;

__attribute__((used)) static void
ipfw_nat64lsn_list_handler(const char *name, uint8_t set, int ac, char *av[])
{
 int tcmd;

 if (ac == 0) {
  nat64lsn_foreach(nat64lsn_show_cb, name, set, 1);
  return;
 }
 NEED1("nat64lsn list needs command");
 tcmd = get_token(nat64listcmds, *av, "nat64lsn list command");
 switch (tcmd) {
 case 128:
  nat64lsn_foreach(nat64lsn_states_cb, name, set, 1);
  break;
 case 129:
  nat64lsn_foreach(nat64lsn_show_cb, name, set, 1);
 }
}
