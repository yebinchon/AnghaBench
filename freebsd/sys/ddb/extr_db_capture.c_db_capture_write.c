
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int KASSERT (int,char*) ;
 int bcopy (char*,scalar_t__,scalar_t__) ;
 scalar_t__ db_capture_buf ;
 scalar_t__ db_capture_bufoff ;
 scalar_t__ db_capture_bufsize ;
 scalar_t__ db_capture_inpager ;
 scalar_t__ db_capture_inprogress ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

void
db_capture_write(char *buffer, u_int buflen)
{
 u_int len;

 if (db_capture_inprogress == 0 || db_capture_inpager)
  return;
 len = min(buflen, db_capture_bufsize - db_capture_bufoff);
 bcopy(buffer, db_capture_buf + db_capture_bufoff, len);
 db_capture_bufoff += len;

 KASSERT(db_capture_bufoff <= db_capture_bufsize,
     ("db_capture_write: bufoff > bufsize"));
}
