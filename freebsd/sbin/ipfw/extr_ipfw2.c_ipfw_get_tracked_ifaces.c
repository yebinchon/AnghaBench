
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int req ;
struct TYPE_6__ {size_t size; int opheader; } ;
typedef TYPE_1__ ipfw_obj_lheader ;


 scalar_t__ ENOMEM ;
 int IP_FW_XIFLIST ;
 TYPE_1__* calloc (int,size_t) ;
 scalar_t__ do_get3 (int ,int *,size_t*) ;
 scalar_t__ errno ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
ipfw_get_tracked_ifaces(ipfw_obj_lheader **polh)
{
 ipfw_obj_lheader req, *olh;
 size_t sz;

 memset(&req, 0, sizeof(req));
 sz = sizeof(req);

 if (do_get3(IP_FW_XIFLIST, &req.opheader, &sz) != 0) {
  if (errno != ENOMEM)
   return (errno);
 }

 sz = req.size;
 if ((olh = calloc(1, sz)) == ((void*)0))
  return (ENOMEM);

 olh->size = sz;
 if (do_get3(IP_FW_XIFLIST, &olh->opheader, &sz) != 0) {
  free(olh);
  return (errno);
 }

 *polh = olh;
 return (0);
}
