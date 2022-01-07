
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct dumperinfo {int dummy; } ;


 int DDB_CAPTURE_FILENAME ;
 scalar_t__ TEXTDUMP_BLOCKSIZE ;
 scalar_t__ db_capture_buf ;
 scalar_t__ db_capture_bufoff ;
 scalar_t__ db_capture_bufpadding ;
 int db_capture_zeropad () ;
 scalar_t__ textdump_block_buffer ;
 int textdump_mkustar (scalar_t__,int ,scalar_t__) ;
 int textdump_writenextblock (struct dumperinfo*,scalar_t__) ;

void
db_capture_dump(struct dumperinfo *di)
{
 u_int offset;

 if (db_capture_bufoff == 0)
  return;

 db_capture_zeropad();
 textdump_mkustar(textdump_block_buffer, DDB_CAPTURE_FILENAME,
     db_capture_bufoff);
 (void)textdump_writenextblock(di, textdump_block_buffer);
 for (offset = 0; offset < db_capture_bufoff + db_capture_bufpadding;
     offset += TEXTDUMP_BLOCKSIZE)
  (void)textdump_writenextblock(di, db_capture_buf + offset);
 db_capture_bufoff = 0;
 db_capture_bufpadding = 0;
}
