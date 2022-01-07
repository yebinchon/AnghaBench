
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int TEXTDUMP_BLOCKSIZE ;
 int bzero (int,int ) ;
 int db_capture_buf ;
 int db_capture_bufoff ;
 int db_capture_bufpadding ;
 int db_capture_bufsize ;
 int min (int,int) ;

__attribute__((used)) static void
db_capture_zeropad(void)
{
 u_int len;

 len = min(TEXTDUMP_BLOCKSIZE, (db_capture_bufsize -
     db_capture_bufoff) % TEXTDUMP_BLOCKSIZE);
 bzero(db_capture_buf + db_capture_bufoff, len);
 db_capture_bufpadding = len;
}
