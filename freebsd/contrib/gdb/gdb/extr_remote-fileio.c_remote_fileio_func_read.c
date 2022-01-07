
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef scalar_t__ LONGEST ;
typedef scalar_t__ CORE_ADDR ;


 int EINTR ;


 int FIO_FD_INVALID ;
 int SEEK_CUR ;
 int errno ;
 int gdb_stdtargin ;
 int lseek (int,int ,int ) ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,int) ;
 int read (int,char*,size_t) ;
 int remote_fileio_badfd () ;
 scalar_t__ remote_fileio_extract_int (char**,long*) ;
 scalar_t__ remote_fileio_extract_long (char**,scalar_t__*) ;
 int remote_fileio_ioerror () ;
 int remote_fileio_map_fd (int) ;
 int remote_fileio_return_errno (int) ;
 int remote_fileio_return_success (int) ;
 int remote_fileio_write_bytes (scalar_t__,char*,int) ;
 int remote_fio_no_longjmp ;
 int ui_file_read (int ,char*,int) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (size_t) ;

__attribute__((used)) static void
remote_fileio_func_read (char *buf)
{
  long target_fd, num;
  LONGEST lnum;
  CORE_ADDR ptrval;
  int fd, ret, retlength;
  char *buffer;
  size_t length;
  off_t old_offset, new_offset;


  if (remote_fileio_extract_int (&buf, &target_fd))
    {
      remote_fileio_ioerror ();
      return;
    }
  fd = remote_fileio_map_fd ((int) target_fd);
  if (fd == FIO_FD_INVALID)
    {
      remote_fileio_badfd ();
      return;
    }

  if (remote_fileio_extract_long (&buf, &lnum))
    {
      remote_fileio_ioerror ();
      return;
    }
  ptrval = (CORE_ADDR) lnum;

  if (remote_fileio_extract_int (&buf, &num))
    {
      remote_fileio_ioerror ();
      return;
    }
  length = (size_t) num;

  switch (fd)
    {
      case 128:
 remote_fileio_badfd ();
 return;
      case 129:
 {
   static char *remaining_buf = ((void*)0);
   static int remaining_length = 0;

   buffer = (char *) xmalloc (32768);
   if (remaining_buf)
     {
       remote_fio_no_longjmp = 1;
       if (remaining_length > length)
  {
    memcpy (buffer, remaining_buf, length);
    memmove (remaining_buf, remaining_buf + length,
      remaining_length - length);
    remaining_length -= length;
    ret = length;
  }
       else
  {
    memcpy (buffer, remaining_buf, remaining_length);
    xfree (remaining_buf);
    remaining_buf = ((void*)0);
    ret = remaining_length;
  }
     }
   else
     {
       ret = ui_file_read (gdb_stdtargin, buffer, 32767);
       remote_fio_no_longjmp = 1;
       if (ret > 0 && (size_t)ret > length)
  {
    remaining_buf = (char *) xmalloc (ret - length);
    remaining_length = ret - length;
    memcpy (remaining_buf, buffer + length, remaining_length);
    ret = length;
  }
     }
 }
 break;
      default:
 buffer = (char *) xmalloc (length);





 old_offset = lseek (fd, 0, SEEK_CUR);
 remote_fio_no_longjmp = 1;
 ret = read (fd, buffer, length);
 if (ret < 0 && errno == EINTR)
   {
     new_offset = lseek (fd, 0, SEEK_CUR);


     if (old_offset != new_offset)
       ret = new_offset - old_offset;
   }
 break;
    }

  if (ret > 0)
    {
      retlength = remote_fileio_write_bytes (ptrval, buffer, ret);
      if (retlength != ret)
 ret = -1;
    }

  if (ret < 0)
    remote_fileio_return_errno (-1);
  else
    remote_fileio_return_success (ret);

  xfree (buffer);
}
