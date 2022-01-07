
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int table; int tree; } ;
struct rar {TYPE_2__ lengthcode; TYPE_2__ lowoffsetcode; TYPE_2__ offsetcode; TYPE_2__ maincode; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int free (int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
free_codes(struct archive_read *a)
{
  struct rar *rar = (struct rar *)(a->format->data);
  free(rar->maincode.tree);
  free(rar->offsetcode.tree);
  free(rar->lowoffsetcode.tree);
  free(rar->lengthcode.tree);
  free(rar->maincode.table);
  free(rar->offsetcode.table);
  free(rar->lowoffsetcode.table);
  free(rar->lengthcode.table);
  memset(&rar->maincode, 0, sizeof(rar->maincode));
  memset(&rar->offsetcode, 0, sizeof(rar->offsetcode));
  memset(&rar->lowoffsetcode, 0, sizeof(rar->lowoffsetcode));
  memset(&rar->lengthcode, 0, sizeof(rar->lengthcode));
}
