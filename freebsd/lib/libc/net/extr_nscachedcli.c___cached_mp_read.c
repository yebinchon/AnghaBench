
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_connection_ {int dummy; } ;


 int CET_MP_READ_SESSION_READ_REQUEST ;
 int safe_read (struct cached_connection_*,...) ;
 int safe_write (struct cached_connection_*,int*,int) ;

int
__cached_mp_read(struct cached_connection_ *rs, char *data, size_t *data_size)
{
 size_t result_size;
 int error_code, rec_error_code;
 int request, result;

 error_code = -1;
 request = CET_MP_READ_SESSION_READ_REQUEST;
 result = safe_write(rs, &request, sizeof(int));
 if (result != 0)
  goto fin;

 result = safe_read(rs, &rec_error_code, sizeof(int));
 if (result != 0)
  goto fin;

 if (rec_error_code != 0) {
  error_code = rec_error_code;
  goto fin;
 }

 result = safe_read(rs, &result_size, sizeof(size_t));
 if (result != 0)
  goto fin;

 if (result_size > *data_size) {
  *data_size = result_size;
  error_code = -2;
  goto fin;
 }

 result = safe_read(rs, data, result_size);
 if (result != 0)
  goto fin;

 *data_size = result_size;
 error_code = 0;

fin:
 return (error_code);
}
