
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_connection_ {int dummy; } ;


 int CET_MP_WRITE_SESSION_WRITE_REQUEST ;
 int safe_read (struct cached_connection_*,int*,int) ;
 int safe_write (struct cached_connection_*,...) ;

int
__cached_mp_write(struct cached_connection_ *ws, const char *data,
    size_t data_size)
{
 int request, result;
 int error_code;

 error_code = -1;

 request = CET_MP_WRITE_SESSION_WRITE_REQUEST;
 result = safe_write(ws, &request, sizeof(int));
 if (result != 0)
  goto fin;

 result = safe_write(ws, &data_size, sizeof(size_t));
 if (result != 0)
  goto fin;

 result = safe_write(ws, data, data_size);
 if (result != 0)
  goto fin;

 result = safe_read(ws, &error_code, sizeof(int));
 if (result != 0)
  error_code = -1;

fin:
 return (error_code);
}
