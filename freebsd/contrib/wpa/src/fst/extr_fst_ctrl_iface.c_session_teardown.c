
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fst_session {int dummy; } ;


 int MSG_WARNING ;
 int fst_printf (int ,char*,int ) ;
 struct fst_session* fst_session_get_by_id (int ) ;
 scalar_t__ fst_session_tear_down_setup (struct fst_session*) ;
 int os_snprintf (char*,size_t,char*) ;
 int strtoul (char const*,int *,int ) ;

__attribute__((used)) static int session_teardown(const char *session_id, char *buf, size_t buflen)
{
 struct fst_session *s;
 u32 id;

 id = strtoul(session_id, ((void*)0), 0);

 s = fst_session_get_by_id(id);
 if (!s) {
  fst_printf(MSG_WARNING, "CTRL: Cannot find session %u", id);
  return os_snprintf(buf, buflen, "FAIL\n");
 }

 if (fst_session_tear_down_setup(s)) {
  fst_printf(MSG_WARNING, "CTRL: Cannot tear down session %u",
      id);
  return os_snprintf(buf, buflen, "FAIL\n");
 }

 return os_snprintf(buf, buflen, "OK\n");
}
