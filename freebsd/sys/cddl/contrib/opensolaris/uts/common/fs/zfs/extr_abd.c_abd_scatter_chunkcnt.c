
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ abd_offset; } ;
struct TYPE_7__ {TYPE_1__ abd_scatter; } ;
struct TYPE_8__ {scalar_t__ abd_size; TYPE_2__ abd_u; } ;
typedef TYPE_3__ abd_t ;


 int ASSERT (int) ;
 size_t abd_chunkcnt_for_bytes (scalar_t__) ;
 int abd_is_linear (TYPE_3__*) ;

__attribute__((used)) static inline size_t
abd_scatter_chunkcnt(abd_t *abd)
{
 ASSERT(!abd_is_linear(abd));
 return (abd_chunkcnt_for_bytes(
     abd->abd_u.abd_scatter.abd_offset + abd->abd_size));
}
