
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff {int options; int format; int mstackpos; int rstackpos; char escape; int reqtab; } ;


 int MPARSE_MAN ;
 int MPARSE_MDOC ;
 int ROFF_RENAMED ;
 struct roff* mandoc_calloc (int,int) ;
 int roffhash_alloc (int ,int ) ;

struct roff *
roff_alloc(int options)
{
 struct roff *r;

 r = mandoc_calloc(1, sizeof(struct roff));
 r->reqtab = roffhash_alloc(0, ROFF_RENAMED);
 r->options = options;
 r->format = options & (MPARSE_MDOC | MPARSE_MAN);
 r->mstackpos = -1;
 r->rstackpos = -1;
 r->escape = '\\';
 return r;
}
