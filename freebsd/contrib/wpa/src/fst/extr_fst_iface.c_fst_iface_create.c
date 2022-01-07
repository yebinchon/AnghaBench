
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fst_wpa_obj {int dummy; } ;
struct fst_iface_cfg {scalar_t__ llt; } ;
struct fst_iface {struct fst_iface_cfg cfg; int own_addr; int ifname; struct fst_group* group; struct fst_wpa_obj iface_obj; } ;
struct fst_group {int dummy; } ;


 scalar_t__ FST_DEFAULT_LLT_CFG_VALUE ;
 int MSG_ERROR ;
 int MSG_WARNING ;
 int fst_printf_group (struct fst_group*,int ,char*,char const*) ;
 int fst_printf_iface (struct fst_iface*,int ,char*) ;
 int os_memcpy (int ,int const*,int) ;
 int os_strlcpy (int ,char const*,int) ;
 struct fst_iface* os_zalloc (int) ;

struct fst_iface * fst_iface_create(struct fst_group *g, const char *ifname,
        const u8 *own_addr,
        const struct fst_wpa_obj *iface_obj,
        const struct fst_iface_cfg *cfg)
{
 struct fst_iface *i;

 i = os_zalloc(sizeof(*i));
 if (!i) {
  fst_printf_group(g, MSG_ERROR, "cannot allocate iface for %s",
    ifname);
  return ((void*)0);
 }

 i->cfg = *cfg;
 i->iface_obj = *iface_obj;
 i->group = g;
 os_strlcpy(i->ifname, ifname, sizeof(i->ifname));
 os_memcpy(i->own_addr, own_addr, sizeof(i->own_addr));

 if (!i->cfg.llt) {
  fst_printf_iface(i, MSG_WARNING, "Zero llt adjusted");
  i->cfg.llt = FST_DEFAULT_LLT_CFG_VALUE;
 }

 return i;
}
