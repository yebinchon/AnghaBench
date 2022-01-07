
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_connection_params {int dummy; } ;
struct cached_connection_ {int mp_flag; } ;


 int CET_MP_WRITE_SESSION_REQUEST ;
 int __close_cached_connection (struct cached_connection_*) ;
 struct cached_connection_* __open_cached_connection (struct cached_connection_params const*) ;
 int safe_read (struct cached_connection_*,int*,int) ;
 int safe_write (struct cached_connection_*,...) ;
 int send_credentials (struct cached_connection_*,int ) ;
 size_t strlen (char const*) ;

struct cached_connection_ *
__open_cached_mp_write_session(struct cached_connection_params const *params,
    const char *entry_name)
{
 struct cached_connection_ *connection, *retval;
 size_t name_size;
 int error_code;
 int result;

 retval = ((void*)0);
 connection = __open_cached_connection(params);
 if (connection == ((void*)0))
  return (((void*)0));
 connection->mp_flag = 1;

 result = send_credentials(connection, CET_MP_WRITE_SESSION_REQUEST);
 if (result != 0)
  goto fin;

 name_size = strlen(entry_name);
 result = safe_write(connection, &name_size, sizeof(size_t));
 if (result != 0)
  goto fin;

 result = safe_write(connection, entry_name, name_size);
 if (result != 0)
  goto fin;

 result = safe_read(connection, &error_code, sizeof(int));
 if (result != 0)
  goto fin;

 if (error_code != 0)
  result = error_code;

fin:
 if (result != 0)
  __close_cached_connection(connection);
 else
  retval = connection;
 return (retval);
}
