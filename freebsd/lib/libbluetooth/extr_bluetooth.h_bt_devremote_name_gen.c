
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bdaddr_t ;


 int NG_HCI_MANDATORY_PAGE_SCAN_MODE ;
 int NG_HCI_SCAN_REP_MODE0 ;
 char* bt_devremote_name (char const*,int const*,int ,int,int ,int ) ;

__attribute__((used)) static __inline char *
bt_devremote_name_gen(char const *btooth_devname, const bdaddr_t *remote)
{
 return (bt_devremote_name(btooth_devname, remote, 0, 0x0000,
  NG_HCI_SCAN_REP_MODE0, NG_HCI_MANDATORY_PAGE_SCAN_MODE));
}
