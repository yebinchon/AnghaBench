
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {size_t size; } ;
typedef TYPE_1__ ipfw_xtable_info ;
struct TYPE_12__ {int version; } ;
struct TYPE_11__ {TYPE_8__ opheader; } ;
typedef TYPE_2__ ipfw_obj_header ;


 scalar_t__ ENOMEM ;
 int IP_FW_TABLE_XLIST ;
 TYPE_2__* calloc (int,size_t) ;
 scalar_t__ do_get3 (int ,TYPE_8__*,size_t*) ;
 scalar_t__ errno ;
 int free (TYPE_2__*) ;
 int table_fill_objheader (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static int
table_do_get_list(ipfw_xtable_info *i, ipfw_obj_header **poh)
{
 ipfw_obj_header *oh;
 size_t sz;
 int c;

 sz = 0;
 oh = ((void*)0);
 for (c = 0; c < 8; c++) {
  if (sz < i->size)
   sz = i->size + 44;
  if (oh != ((void*)0))
   free(oh);
  if ((oh = calloc(1, sz)) == ((void*)0))
   continue;
  table_fill_objheader(oh, i);
  oh->opheader.version = 1;
  if (do_get3(IP_FW_TABLE_XLIST, &oh->opheader, &sz) == 0) {
   *poh = oh;
   return (0);
  }

  if (errno != ENOMEM)
   break;
 }
 free(oh);

 return (errno);
}
