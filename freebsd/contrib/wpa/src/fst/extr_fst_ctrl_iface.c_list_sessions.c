
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_sessions_cb_ctx {char* buf; size_t buflen; int reply_len; } ;
struct fst_group {int dummy; } ;


 int MSG_WARNING ;
 int fst_printf (int ,char*,char const*) ;
 int fst_session_enum (struct fst_group*,int ,struct list_sessions_cb_ctx*) ;
 struct fst_group* get_fst_group_by_id (char const*) ;
 int list_session_enum_cb ;
 int os_snprintf (char*,size_t,char*) ;

__attribute__((used)) static int list_sessions(const char *group_id, char *buf, size_t buflen)
{
 struct list_sessions_cb_ctx ctx;
 struct fst_group *g;

 g = get_fst_group_by_id(group_id);
 if (!g) {
  fst_printf(MSG_WARNING, "CTRL: Cannot find group '%s'",
      group_id);
  return os_snprintf(buf, buflen, "FAIL\n");
 }

 ctx.buf = buf;
 ctx.buflen = buflen;
 ctx.reply_len = 0;

 fst_session_enum(g, list_session_enum_cb, &ctx);

 ctx.reply_len += os_snprintf(buf + ctx.reply_len, ctx.buflen, "\n");

 return ctx.reply_len;
}
