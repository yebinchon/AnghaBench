
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct fst_iface {struct wpabuf* mb_ie; } ;


 int wpabuf_free (struct wpabuf*) ;

void fst_iface_attach_mbie(struct fst_iface *i, struct wpabuf *mbie)
{
 wpabuf_free(i->mb_ie);
 i->mb_ie = mbie;
}
