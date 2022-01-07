
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* lw_list; int lw_err; } ;
typedef TYPE_1__ linkwalk_t ;
struct TYPE_5__ {struct TYPE_5__* lnl_next; int linkname; } ;
typedef TYPE_2__ linknamelist_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int DLPI_LINKNAME_MAX ;
 int ENOMEM ;
 TYPE_2__* calloc (int,int) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static boolean_t
list_interfaces(const char *linkname, void *arg)
{
 linkwalk_t *lwp = arg;
 linknamelist_t *entry;

 if ((entry = calloc(1, sizeof(linknamelist_t))) == ((void*)0)) {
  lwp->lw_err = ENOMEM;
  return (B_TRUE);
 }
 (void) strlcpy(entry->linkname, linkname, DLPI_LINKNAME_MAX);

 if (lwp->lw_list == ((void*)0)) {
  lwp->lw_list = entry;
 } else {
  entry->lnl_next = lwp->lw_list;
  lwp->lw_list = entry;
 }

 return (B_FALSE);
}
