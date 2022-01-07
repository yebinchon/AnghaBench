
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone_defcb {int * clone_cb; int ifprefix; } ;
typedef int clone_callback_func ;


 scalar_t__ IFNAMSIZ ;
 int SLIST_INSERT_HEAD (int *,struct clone_defcb*,int ) ;
 int clone_defcbh ;
 struct clone_defcb* malloc (int) ;
 int next ;
 int strlcpy (int ,char const*,scalar_t__) ;

void
clone_setdefcallback(const char *ifprefix, clone_callback_func *p)
{
 struct clone_defcb *dcp;

 dcp = malloc(sizeof(*dcp));
 strlcpy(dcp->ifprefix, ifprefix, IFNAMSIZ-1);
 dcp->clone_cb = p;
 SLIST_INSERT_HEAD(&clone_defcbh, dcp, next);
}
