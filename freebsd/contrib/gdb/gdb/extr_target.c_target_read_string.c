
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int MIN (int,int) ;
 int target_xfer_memory (int,char*,int,int ) ;
 char* xmalloc (int) ;
 char* xrealloc (char*,int) ;

int
target_read_string (CORE_ADDR memaddr, char **string, int len, int *errnop)
{
  int tlen, origlen, offset, i;
  char buf[4];
  int errcode = 0;
  char *buffer;
  int buffer_allocated;
  char *bufptr;
  unsigned int nbytes_read = 0;


  buffer_allocated = 4;
  buffer = xmalloc (buffer_allocated);
  bufptr = buffer;

  origlen = len;

  while (len > 0)
    {
      tlen = MIN (len, 4 - (memaddr & 3));
      offset = memaddr & 3;

      errcode = target_xfer_memory (memaddr & ~3, buf, 4, 0);
      if (errcode != 0)
 {



   tlen = 1;
   offset = 0;
   errcode = target_xfer_memory (memaddr, buf, 1, 0);
   if (errcode != 0)
     goto done;
 }

      if (bufptr - buffer + tlen > buffer_allocated)
 {
   unsigned int bytes;
   bytes = bufptr - buffer;
   buffer_allocated *= 2;
   buffer = xrealloc (buffer, buffer_allocated);
   bufptr = buffer + bytes;
 }

      for (i = 0; i < tlen; i++)
 {
   *bufptr++ = buf[i + offset];
   if (buf[i + offset] == '\000')
     {
       nbytes_read += i + 1;
       goto done;
     }
 }

      memaddr += tlen;
      len -= tlen;
      nbytes_read += tlen;
    }
done:
  if (errnop != ((void*)0))
    *errnop = errcode;
  if (string != ((void*)0))
    *string = buffer;
  return nbytes_read;
}
