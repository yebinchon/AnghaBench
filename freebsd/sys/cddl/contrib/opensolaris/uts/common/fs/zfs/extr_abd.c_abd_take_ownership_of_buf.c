
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int abd_flags; int abd_size; } ;
typedef TYPE_1__ abd_t ;


 int ABDSTAT_BUMP (int ) ;
 int ABDSTAT_INCR (int ,int ) ;
 int ABD_FLAG_META ;
 int ABD_FLAG_OWNER ;
 int ASSERT (int) ;
 int abd_is_linear (TYPE_1__*) ;
 int abd_verify (TYPE_1__*) ;
 int abdstat_linear_cnt ;
 int abdstat_linear_data_size ;

void
abd_take_ownership_of_buf(abd_t *abd, boolean_t is_metadata)
{
 ASSERT(abd_is_linear(abd));
 ASSERT(!(abd->abd_flags & ABD_FLAG_OWNER));
 abd_verify(abd);

 abd->abd_flags |= ABD_FLAG_OWNER;
 if (is_metadata) {
  abd->abd_flags |= ABD_FLAG_META;
 }

 ABDSTAT_BUMP(abdstat_linear_cnt);
 ABDSTAT_INCR(abdstat_linear_data_size, abd->abd_size);
}
