
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_connection_ {int dummy; } ;


 int __close_cached_connection (struct cached_connection_*) ;

int
__close_cached_mp_read_session(struct cached_connection_ *rs)
{

 __close_cached_connection(rs);
 return (0);
}
