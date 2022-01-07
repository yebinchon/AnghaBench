
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_man {TYPE_1__* last; } ;
struct TYPE_2__ {int flags; } ;


 int MANDOCERR_FI_TAB ;
 int NODE_NOFILL ;
 int mandoc_msg (int ,int,int,int *) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
check_text(struct roff_man *mdoc, int ln, int pos, char *p)
{
 char *cp;

 if (mdoc->last->flags & NODE_NOFILL)
  return;

 for (cp = p; ((void*)0) != (p = strchr(p, '\t')); p++)
  mandoc_msg(MANDOCERR_FI_TAB, ln, pos + (int)(p - cp), ((void*)0));
}
