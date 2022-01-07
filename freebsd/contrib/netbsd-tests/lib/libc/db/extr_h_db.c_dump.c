
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* seq ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int) ;} ;
struct TYPE_7__ {char* data; int size; } ;
typedef TYPE_1__ DBT ;
typedef TYPE_2__ DB ;


 int R_FIRST ;
 int R_LAST ;
 int R_NEXT ;
 int R_PREV ;
 int R_RNEXT ;
 int R_RPREV ;
 int STDOUT_FILENO ;
 int err (int,char*,int ) ;
 int lineno ;
 int ofd ;
 int stub1 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
dump(DB *dbp, int rev, int recurse)
{
 DBT key, data;
 int xflags, nflags;

 if (rev) {
  xflags = R_LAST;



  nflags = R_PREV;

 } else {
  xflags = R_FIRST;



  nflags = R_NEXT;

 }
 for (;; xflags = nflags)
  switch (dbp->seq(dbp, &key, &data, xflags)) {
  case 0:
   (void)write(ofd, data.data, data.size);
   if (ofd == STDOUT_FILENO)
    (void)write(ofd, "\n", 1);
   break;
  case 1:
   goto done;
  case -1:
   err(1, "line %zu: (dump) seq failed", lineno);

  }
done: return;
}
