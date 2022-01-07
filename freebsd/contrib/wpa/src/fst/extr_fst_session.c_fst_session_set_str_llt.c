
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fst_session {int dummy; } ;


 unsigned long FST_MAX_LLT_MS ;
 int MSG_WARNING ;
 int fst_printf_session (struct fst_session*,int ,char*,char const*,unsigned long) ;
 int fst_session_set_llt (struct fst_session*,int ) ;
 long strtol (char const*,char**,int ) ;

int fst_session_set_str_llt(struct fst_session *s, const char *llt_str)
{
 char *endp;
 long int llt = strtol(llt_str, &endp, 0);

 if (*endp || llt < 0 || (unsigned long int) llt > FST_MAX_LLT_MS) {
  fst_printf_session(s, MSG_WARNING,
       "Cannot set llt %s: Invalid llt value (1..%u expected)",
       llt_str, FST_MAX_LLT_MS);
  return -1;
 }
 fst_session_set_llt(s, (u32) llt);

 return 0;
}
