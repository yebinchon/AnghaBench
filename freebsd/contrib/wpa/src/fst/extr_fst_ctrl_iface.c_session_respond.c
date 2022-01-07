
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct fst_session {int dummy; } ;


 int FST_CS_PVAL_RESPONSE_ACCEPT ;
 int FST_CS_PVAL_RESPONSE_REJECT ;
 int MSG_INFO ;
 int MSG_WARNING ;
 int WLAN_STATUS_PENDING_ADMITTING_FST_SESSION ;
 int WLAN_STATUS_SUCCESS ;
 int fst_printf (int ,char*,int ,...) ;
 struct fst_session* fst_session_get_by_id (int ) ;
 scalar_t__ fst_session_respond (struct fst_session*,int ) ;
 int os_snprintf (char*,size_t,char*) ;
 int os_strcasecmp (char*,int ) ;
 int strtoul (char const*,char**,int ) ;

__attribute__((used)) static int session_respond(const char *session_id, char *buf, size_t buflen)
{
 struct fst_session *s;
 char *p;
 u32 id;
 u8 status_code;

 id = strtoul(session_id, &p, 0);

 s = fst_session_get_by_id(id);
 if (!s) {
  fst_printf(MSG_WARNING, "CTRL: Cannot find session %u", id);
  return os_snprintf(buf, buflen, "FAIL\n");
 }

 if (*p != ' ')
  return os_snprintf(buf, buflen, "FAIL\n");
 p++;

 if (!os_strcasecmp(p, FST_CS_PVAL_RESPONSE_ACCEPT)) {
  status_code = WLAN_STATUS_SUCCESS;
 } else if (!os_strcasecmp(p, FST_CS_PVAL_RESPONSE_REJECT)) {
  status_code = WLAN_STATUS_PENDING_ADMITTING_FST_SESSION;
 } else {
  fst_printf(MSG_WARNING,
      "CTRL: session %u: unknown response status: %s",
      id, p);
  return os_snprintf(buf, buflen, "FAIL\n");
 }

 if (fst_session_respond(s, status_code)) {
  fst_printf(MSG_WARNING, "CTRL: Cannot respond to session %u",
      id);
  return os_snprintf(buf, buflen, "FAIL\n");
 }

 fst_printf(MSG_INFO, "CTRL: session %u responded", id);

 return os_snprintf(buf, buflen, "OK\n");
}
