
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* fts_link; } ;
typedef TYPE_1__ FTSENT11 ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
fts_lfree(FTSENT11 *head)
{
 FTSENT11 *p;


 while ((p = head)) {
  head = head->fts_link;
  free(p);
 }
}
