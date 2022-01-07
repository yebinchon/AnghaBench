
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_session {int dummy; } ;
struct fst_iface {int dummy; } ;
struct fst_group {int dummy; } ;
typedef int Boolean ;


 int MSG_WARNING ;
 int fst_group_get_id (struct fst_group*) ;
 struct fst_iface* fst_group_get_iface_by_name (struct fst_group*,char const*) ;
 int fst_printf_session (struct fst_session*,int ,char*,char const*,int ) ;
 struct fst_group* fst_session_get_group (struct fst_session*) ;
 int fst_session_set_iface (struct fst_session*,struct fst_iface*,int ) ;

int fst_session_set_str_ifname(struct fst_session *s, const char *ifname,
          Boolean is_old)
{
 struct fst_group *g = fst_session_get_group(s);
 struct fst_iface *i;

 i = fst_group_get_iface_by_name(g, ifname);
 if (!i) {
  fst_printf_session(s, MSG_WARNING,
       "Cannot set iface %s: no such iface within group '%s'",
       ifname, fst_group_get_id(g));
  return -1;
 }

 fst_session_set_iface(s, i, is_old);

 return 0;
}
