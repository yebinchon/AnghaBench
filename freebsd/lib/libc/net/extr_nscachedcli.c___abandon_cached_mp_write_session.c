
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_connection_ {int dummy; } ;


 int CET_MP_WRITE_SESSION_ABANDON_NOTIFICATION ;
 int __close_cached_connection (struct cached_connection_*) ;
 int safe_write (struct cached_connection_*,int*,int) ;

int
__abandon_cached_mp_write_session(struct cached_connection_ *ws)
{
 int notification;
 int result;

 notification = CET_MP_WRITE_SESSION_ABANDON_NOTIFICATION;
 result = safe_write(ws, &notification, sizeof(int));
 __close_cached_connection(ws);
 return (result);
}
