
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct cleanup {int dummy; } ;
typedef unsigned int CORE_ADDR ;


 int EIO ;
 int LA_PRINT_STRING (struct ui_file*,char*,int,int,int) ;
 int QUIT ;
 scalar_t__ addressprint ;
 scalar_t__ alloca (int) ;
 int discard_cleanups (struct cleanup*) ;
 int do_cleanups (struct cleanup*) ;
 scalar_t__ extract_unsigned_integer (char*,int) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int gdb_flush (struct ui_file*) ;
 struct cleanup* make_cleanup (int ,char*) ;
 unsigned int min (unsigned int,unsigned int) ;
 int null_cleanup ;
 int partial_memory_read (unsigned int,char*,unsigned int,int*) ;
 int print_address_numeric (unsigned int,int,struct ui_file*) ;
 unsigned int print_max ;
 int safe_strerror (int) ;
 scalar_t__ target_read_memory (unsigned int,char*,int) ;
 int xfree ;
 scalar_t__ xmalloc (unsigned int) ;
 scalar_t__ xrealloc (char*,unsigned int) ;

int
val_print_string (CORE_ADDR addr, int len, int width, struct ui_file *stream)
{
  int force_ellipsis = 0;
  int errcode;
  unsigned int fetchlimit;
  unsigned int nfetch;
  unsigned int chunksize;
  char *buffer = ((void*)0);
  char *bufptr;
  char *limit;
  struct cleanup *old_chain = ((void*)0);
  int found_nul;
  fetchlimit = (len == -1 ? print_max : min (len, print_max));
  chunksize = (len == -1 ? min (8, fetchlimit) : fetchlimit);




  found_nul = 0;
  old_chain = make_cleanup (null_cleanup, 0);

  if (len > 0)
    {
      buffer = (char *) xmalloc (len * width);
      bufptr = buffer;
      old_chain = make_cleanup (xfree, buffer);

      nfetch = partial_memory_read (addr, bufptr, len * width, &errcode)
 / width;
      addr += nfetch * width;
      bufptr += nfetch * width;
    }
  else if (len == -1)
    {
      unsigned long bufsize = 0;
      do
 {
   QUIT;
   nfetch = min (chunksize, fetchlimit - bufsize);

   if (buffer == ((void*)0))
     buffer = (char *) xmalloc (nfetch * width);
   else
     {
       discard_cleanups (old_chain);
       buffer = (char *) xrealloc (buffer, (nfetch + bufsize) * width);
     }

   old_chain = make_cleanup (xfree, buffer);
   bufptr = buffer + bufsize * width;
   bufsize += nfetch;


   nfetch = partial_memory_read (addr, bufptr, nfetch * width, &errcode)
     / width;







   limit = bufptr + nfetch * width;
   while (bufptr < limit)
     {
       unsigned long c;

       c = extract_unsigned_integer (bufptr, width);
       addr += width;
       bufptr += width;
       if (c == 0)
  {


    errcode = 0;
    found_nul = 1;
    break;
  }
     }
 }
      while (errcode == 0
      && bufptr - buffer < fetchlimit * width
      && !found_nul);
    }
  else
    {
      buffer = bufptr = ((void*)0);
      errcode = 0;
    }







  if (len == -1 && !found_nul)
    {
      char *peekbuf;





      peekbuf = (char *) alloca (width);

      if (target_read_memory (addr, peekbuf, width) == 0
   && extract_unsigned_integer (peekbuf, width) != 0)
 force_ellipsis = 1;
    }
  else if ((len >= 0 && errcode != 0) || (len > (bufptr - buffer) / width))
    {



      force_ellipsis = 1;
    }

  QUIT;




  if (errcode == 0 || bufptr > buffer)
    {
      if (addressprint)
 {
   fputs_filtered (" ", stream);
 }
      LA_PRINT_STRING (stream, buffer, (bufptr - buffer) / width, width, force_ellipsis);
    }

  if (errcode != 0)
    {
      if (errcode == EIO)
 {
   fprintf_filtered (stream, " <Address ");
   print_address_numeric (addr, 1, stream);
   fprintf_filtered (stream, " out of bounds>");
 }
      else
 {
   fprintf_filtered (stream, " <Error reading address ");
   print_address_numeric (addr, 1, stream);
   fprintf_filtered (stream, ": %s>", safe_strerror (errcode));
 }
    }
  gdb_flush (stream);
  do_cleanups (old_chain);
  return ((bufptr - buffer) / width);
}
