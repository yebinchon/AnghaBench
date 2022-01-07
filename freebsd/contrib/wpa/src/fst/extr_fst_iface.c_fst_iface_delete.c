
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_iface {int mb_ie; } ;


 int fst_iface_set_ies (struct fst_iface*,int *) ;
 int os_free (struct fst_iface*) ;
 int wpabuf_free (int ) ;

void fst_iface_delete(struct fst_iface *i)
{
 fst_iface_set_ies(i, ((void*)0));
 wpabuf_free(i->mb_ie);
 os_free(i);
}
