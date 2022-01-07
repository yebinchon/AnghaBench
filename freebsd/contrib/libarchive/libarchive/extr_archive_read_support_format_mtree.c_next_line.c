
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ MAX_LINE_LEN ;
 char* __archive_read_ahead (struct archive_read*,scalar_t__,scalar_t__*) ;
 scalar_t__ get_line_size (char const*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static ssize_t
next_line(struct archive_read *a,
    const char **b, ssize_t *avail, ssize_t *ravail, ssize_t *nl)
{
 ssize_t len;
 int quit;

 quit = 0;
 if (*avail == 0) {
  *nl = 0;
  len = 0;
 } else
  len = get_line_size(*b, *avail, nl);



 while (*nl == 0 && len == *avail && !quit) {
  ssize_t diff = *ravail - *avail;
  size_t nbytes_req = (*ravail+1023) & ~1023U;
  ssize_t tested;






  if (len >= MAX_LINE_LEN)
   return (-1);



  if (nbytes_req < (size_t)*ravail + 160)
   nbytes_req <<= 1;

  *b = __archive_read_ahead(a, nbytes_req, avail);
  if (*b == ((void*)0)) {
   if (*ravail >= *avail)
    return (0);

   *b = __archive_read_ahead(a, *avail, avail);
   quit = 1;
  }
  *ravail = *avail;
  *b += diff;
  *avail -= diff;
  tested = len;
  len = get_line_size(*b + len, *avail - len, nl);
  if (len >= 0)
   len += tested;
 }
 return (len);
}
