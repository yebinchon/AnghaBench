
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_connection_ {int dummy; } ;


 int CET_READ_REQUEST ;
 int assert (int ) ;
 int safe_read (struct cached_connection_*,...) ;
 int safe_write (struct cached_connection_*,...) ;
 int send_credentials (struct cached_connection_*,int ) ;
 size_t strlen (char const*) ;

int
__cached_read(struct cached_connection_ *connection, const char *entry_name,
    const char *key, size_t key_size, char *data, size_t *data_size)
{
 size_t name_size, result_size;
 int error_code, rec_error_code;
 int result;

 assert(connection != ((void*)0));
 result = 0;
 error_code = -1;

 result = send_credentials(connection, CET_READ_REQUEST);
 if (result != 0)
  goto fin;

 name_size = strlen(entry_name);
 result = safe_write(connection, &name_size, sizeof(size_t));
 if (result != 0)
  goto fin;

 result = safe_write(connection, &key_size, sizeof(size_t));
 if (result != 0)
  goto fin;

 result = safe_write(connection, entry_name, name_size);
 if (result != 0)
  goto fin;

 result = safe_write(connection, key, key_size);
 if (result != 0)
  goto fin;

 result = safe_read(connection, &rec_error_code, sizeof(int));
 if (result != 0)
  goto fin;

 if (rec_error_code != 0) {
  error_code = rec_error_code;
  goto fin;
 }

 result = safe_read(connection, &result_size, sizeof(size_t));
 if (result != 0)
  goto fin;

  if (result_size > *data_size) {
   *data_size = result_size;
   error_code = -2;
   goto fin;
  }

 result = safe_read(connection, data, result_size);
 if (result != 0)
  goto fin;

 *data_size = result_size;
 error_code = 0;

fin:
 return (error_code);
}
