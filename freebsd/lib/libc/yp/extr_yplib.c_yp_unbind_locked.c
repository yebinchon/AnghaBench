
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dom_binding {struct dom_binding* dom_pnext; int dom_domain; } ;


 int _yp_unbind (struct dom_binding*) ;
 struct dom_binding* _ypbindlist ;
 int free (struct dom_binding*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static void
yp_unbind_locked(char *dom)
{
 struct dom_binding *ypb, *ypbp;

 ypbp = ((void*)0);
 for (ypb = _ypbindlist; ypb; ypb = ypb->dom_pnext) {
  if (strcmp(dom, ypb->dom_domain) == 0) {
   _yp_unbind(ypb);
   if (ypbp)
    ypbp->dom_pnext = ypb->dom_pnext;
   else
    _ypbindlist = ypb->dom_pnext;
   free(ypb);
   return;
  }
  ypbp = ypb;
 }
 return;
}
