
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211req_maclist {scalar_t__ ml_macaddr; } ;
struct ieee80211req {int i_val; int i_len; int * i_data; int i_type; int i_name; } ;
struct ether_addr {int dummy; } ;
typedef int ireq ;


 scalar_t__ EINVAL ;
 int IEEE80211_IOC_MACCMD ;
 int IEEE80211_MACCMD_LIST ;
 int IEEE80211_MACCMD_POLICY ;
 int IEEE80211_MACCMD_POLICY_ALLOW ;
 int IEEE80211_MACCMD_POLICY_DENY ;
 int IEEE80211_MACCMD_POLICY_OPEN ;
 int IEEE80211_MACCMD_POLICY_RADIUS ;
 int SIOCG80211 ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int ether_ntoa (struct ether_addr const*) ;
 int free (int *) ;
 scalar_t__ ioctl (int,int ,struct ieee80211req*) ;
 int * malloc (int) ;
 int memset (struct ieee80211req*,int ,int) ;
 int name ;
 int printf (char*,...) ;
 int printpolicy (int) ;
 int strlcpy (int ,int ,int) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
list_mac(int s)
{
 struct ieee80211req ireq;
 struct ieee80211req_maclist *acllist;
 int i, nacls, policy, len;
 uint8_t *data;
 char c;

 (void) memset(&ireq, 0, sizeof(ireq));
 (void) strlcpy(ireq.i_name, name, sizeof(ireq.i_name));
 ireq.i_type = IEEE80211_IOC_MACCMD;
 ireq.i_val = IEEE80211_MACCMD_POLICY;
 if (ioctl(s, SIOCG80211, &ireq) < 0) {
  if (errno == EINVAL) {
   printf("No acl policy loaded\n");
   return;
  }
  err(1, "unable to get mac policy");
 }
 policy = ireq.i_val;
 if (policy == IEEE80211_MACCMD_POLICY_OPEN) {
  c = '*';
 } else if (policy == IEEE80211_MACCMD_POLICY_ALLOW) {
  c = '+';
 } else if (policy == IEEE80211_MACCMD_POLICY_DENY) {
  c = '-';
 } else if (policy == IEEE80211_MACCMD_POLICY_RADIUS) {
  c = 'r';
 } else {
  printf("policy: unknown (%u)\n", policy);
  c = '?';
 }
 if (verbose || c == '?')
  printpolicy(policy);

 ireq.i_val = IEEE80211_MACCMD_LIST;
 ireq.i_len = 0;
 if (ioctl(s, SIOCG80211, &ireq) < 0)
  err(1, "unable to get mac acl list size");
 if (ireq.i_len == 0) {
  if (!(verbose || c == '?'))
   printpolicy(policy);
  return;
 }
 len = ireq.i_len;

 data = malloc(len);
 if (data == ((void*)0))
  err(1, "out of memory for acl list");

 ireq.i_data = data;
 if (ioctl(s, SIOCG80211, &ireq) < 0)
  err(1, "unable to get mac acl list");
 nacls = len / sizeof(*acllist);
 acllist = (struct ieee80211req_maclist *) data;
 for (i = 0; i < nacls; i++)
  printf("%c%s\n", c, ether_ntoa(
   (const struct ether_addr *) acllist[i].ml_macaddr));
 free(data);
}
