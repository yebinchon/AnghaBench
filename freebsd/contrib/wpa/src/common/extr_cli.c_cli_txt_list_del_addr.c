
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dl_list {int dummy; } ;
typedef int buf ;


 int ETH_ALEN ;
 int MAC2STR (int *) ;
 int MACSTR ;
 int cli_txt_list_del (struct dl_list*,char*) ;
 scalar_t__ hwaddr_aton (char const*,int *) ;
 int os_snprintf (char*,int,int ,int ) ;

void cli_txt_list_del_addr(struct dl_list *txt_list, const char *txt)
{
 u8 addr[ETH_ALEN];
 char buf[18];

 if (hwaddr_aton(txt, addr) < 0)
  return;
 os_snprintf(buf, sizeof(buf), MACSTR, MAC2STR(addr));
 cli_txt_list_del(txt_list, buf);
}
