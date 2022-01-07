
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_meta {scalar_t__ macroset; TYPE_1__* first; } ;
struct mparse {int dummy; } ;
struct TYPE_2__ {int child; } ;


 scalar_t__ MACROSET_MDOC ;
 int close (int) ;
 int mparse_readfd (struct mparse*,int,char const*) ;
 struct roff_meta* mparse_result (struct mparse*) ;
 int pman (int ,int*,int*,int) ;
 int pmdoc (int ,int*,int*,int) ;
 int putchar (char) ;

__attribute__((used)) static void
pmandoc(struct mparse *mp, int fd, const char *fn, int list)
{
 struct roff_meta *meta;
 int line, col;

 mparse_readfd(mp, fd, fn);
 close(fd);
 meta = mparse_result(mp);
 line = 1;
 col = 0;

 if (meta->macroset == MACROSET_MDOC)
  pmdoc(meta->first->child, &line, &col, list);
 else
  pman(meta->first->child, &line, &col, list);

 if ( ! list)
  putchar('\n');
}
