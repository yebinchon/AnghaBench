
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstream {scalar_t__ len; scalar_t__ offset; scalar_t__* sizep; } ;


 int assert (int) ;

__attribute__((used)) static void
memstream_update(struct memstream *ms)
{

 assert(ms->len >= 0 && ms->offset >= 0);
 *ms->sizep = ms->len < ms->offset ? ms->len : ms->offset;
}
