
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct fst_iface_cfg {char* group_id; int llt; scalar_t__ priority; } ;
typedef scalar_t__ Boolean ;


 int EINVAL ;
 int FST_ATTACH_CMD_PNAME_LLT ;
 int FST_ATTACH_CMD_PNAME_PRIORITY ;
 int FST_DEFAULT_LLT_CFG_VALUE ;
 int fst_read_next_int_param (char*,scalar_t__*,char**) ;
 scalar_t__ fst_read_next_text_param (char const*,char*,int,char**) ;
 int os_strlen (int ) ;
 char* os_strstr (char*,int ) ;

int fst_parse_attach_command(const char *cmd, char *ifname, size_t ifname_size,
        struct fst_iface_cfg *cfg)
{
 char *pos;
 char *endp;
 Boolean is_valid;
 int val;

 if (fst_read_next_text_param(cmd, ifname, ifname_size, &endp) ||
     fst_read_next_text_param(endp, cfg->group_id, sizeof(cfg->group_id),
         &endp))
  return -EINVAL;

 cfg->llt = FST_DEFAULT_LLT_CFG_VALUE;
 cfg->priority = 0;
 pos = os_strstr(endp, FST_ATTACH_CMD_PNAME_LLT);
 if (pos) {
  pos += os_strlen(FST_ATTACH_CMD_PNAME_LLT);
  if (*pos == '=') {
   val = fst_read_next_int_param(pos + 1, &is_valid,
            &endp);
   if (is_valid)
    cfg->llt = val;
  }
 }
 pos = os_strstr(endp, FST_ATTACH_CMD_PNAME_PRIORITY);
 if (pos) {
  pos += os_strlen(FST_ATTACH_CMD_PNAME_PRIORITY);
  if (*pos == '=') {
   val = fst_read_next_int_param(pos + 1, &is_valid,
            &endp);
   if (is_valid)
    cfg->priority = (u8) val;
  }
 }

 return 0;
}
