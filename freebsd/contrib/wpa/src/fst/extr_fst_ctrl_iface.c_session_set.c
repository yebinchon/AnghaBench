
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* u32 ;
struct fst_session {int dummy; } ;


 int FALSE ;
 int FST_CSS_PNAME_LLT ;
 int FST_CSS_PNAME_NEW_IFNAME ;
 int FST_CSS_PNAME_NEW_PEER_ADDR ;
 int FST_CSS_PNAME_OLD_IFNAME ;
 int FST_CSS_PNAME_OLD_PEER_ADDR ;
 int MSG_ERROR ;
 int MSG_WARNING ;
 int TRUE ;
 int fst_printf (int ,char*,char*) ;
 struct fst_session* fst_session_get_by_id (char*) ;
 int fst_session_set_str_ifname (struct fst_session*,char*,int ) ;
 int fst_session_set_str_llt (struct fst_session*,char*) ;
 int fst_session_set_str_peer_addr (struct fst_session*,char*,int ) ;
 int os_snprintf (char*,size_t,char*,...) ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strncasecmp (char*,int ,int) ;
 char* strtoul (char const*,char**,int ) ;

__attribute__((used)) static int session_set(const char *session_id, char *buf, size_t buflen)
{
 struct fst_session *s;
 char *p, *q;
 u32 id;
 int ret;

 id = strtoul(session_id, &p, 0);

 s = fst_session_get_by_id(id);
 if (!s) {
  fst_printf(MSG_WARNING, "CTRL: Cannot find session %u", id);
  return os_snprintf(buf, buflen, "FAIL\n");
 }

 if (*p != ' ' || !(q = os_strchr(p + 1, '=')))
  return os_snprintf(buf, buflen, "FAIL\n");
 p++;

 if (os_strncasecmp(p, FST_CSS_PNAME_OLD_IFNAME, q - p) == 0) {
  ret = fst_session_set_str_ifname(s, q + 1, TRUE);
 } else if (os_strncasecmp(p, FST_CSS_PNAME_NEW_IFNAME, q - p) == 0) {
  ret = fst_session_set_str_ifname(s, q + 1, FALSE);
 } else if (os_strncasecmp(p, FST_CSS_PNAME_OLD_PEER_ADDR, q - p) == 0) {
  ret = fst_session_set_str_peer_addr(s, q + 1, TRUE);
 } else if (os_strncasecmp(p, FST_CSS_PNAME_NEW_PEER_ADDR, q - p) == 0) {
  ret = fst_session_set_str_peer_addr(s, q + 1, FALSE);
 } else if (os_strncasecmp(p, FST_CSS_PNAME_LLT, q - p) == 0) {
  ret = fst_session_set_str_llt(s, q + 1);
 } else {
  fst_printf(MSG_ERROR, "CTRL: Unknown parameter: %s", p);
  return os_snprintf(buf, buflen, "FAIL\n");
 }

 return os_snprintf(buf, buflen, "%s\n", ret ? "FAIL" : "OK");
}
