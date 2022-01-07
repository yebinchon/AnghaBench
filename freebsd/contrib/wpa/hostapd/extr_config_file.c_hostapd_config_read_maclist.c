
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mac_acl_entry {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int ETH_ALEN ;
 int MSG_ERROR ;
 int atoi (char*) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int hostapd_acl_comp ;
 scalar_t__ hostapd_add_acl_maclist (struct mac_acl_entry**,int*,int,int *) ;
 int hostapd_remove_acl_mac (struct mac_acl_entry**,int*,int *) ;
 scalar_t__ hwaddr_aton (char*,int *) ;
 int qsort (struct mac_acl_entry*,int,int,int ) ;
 int wpa_printf (int ,char*,char const*,...) ;

__attribute__((used)) static int hostapd_config_read_maclist(const char *fname,
           struct mac_acl_entry **acl, int *num)
{
 FILE *f;
 char buf[128], *pos;
 int line = 0;
 u8 addr[ETH_ALEN];
 int vlan_id;

 f = fopen(fname, "r");
 if (!f) {
  wpa_printf(MSG_ERROR, "MAC list file '%s' not found.", fname);
  return -1;
 }

 while (fgets(buf, sizeof(buf), f)) {
  int rem = 0;

  line++;

  if (buf[0] == '#')
   continue;
  pos = buf;
  while (*pos != '\0') {
   if (*pos == '\n') {
    *pos = '\0';
    break;
   }
   pos++;
  }
  if (buf[0] == '\0')
   continue;
  pos = buf;
  if (buf[0] == '-') {
   rem = 1;
   pos++;
  }

  if (hwaddr_aton(pos, addr)) {
   wpa_printf(MSG_ERROR, "Invalid MAC address '%s' at "
       "line %d in '%s'", pos, line, fname);
   fclose(f);
   return -1;
  }

  if (rem) {
   hostapd_remove_acl_mac(acl, num, addr);
   continue;
  }
  vlan_id = 0;
  pos = buf;
  while (*pos != '\0' && *pos != ' ' && *pos != '\t')
   pos++;
  while (*pos == ' ' || *pos == '\t')
   pos++;
  if (*pos != '\0')
   vlan_id = atoi(pos);

  if (hostapd_add_acl_maclist(acl, num, vlan_id, addr) < 0) {
   fclose(f);
   return -1;
  }
 }

 fclose(f);

 if (*acl)
  qsort(*acl, *num, sizeof(**acl), hostapd_acl_comp);

 return 0;
}
