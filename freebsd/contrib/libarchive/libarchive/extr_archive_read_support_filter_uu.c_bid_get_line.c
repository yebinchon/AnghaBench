
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter {int dummy; } ;
typedef scalar_t__ ssize_t ;


 size_t UUENCODE_BID_MAX_READ ;
 unsigned char* __archive_read_filter_ahead (struct archive_read_filter*,scalar_t__,scalar_t__*) ;
 scalar_t__ get_line (unsigned char const*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static ssize_t
bid_get_line(struct archive_read_filter *filter,
    const unsigned char **b, ssize_t *avail, ssize_t *ravail,
    ssize_t *nl, size_t* nbytes_read)
{
 ssize_t len;
 int quit;

 quit = 0;
 if (*avail == 0) {
  *nl = 0;
  len = 0;
 } else
  len = get_line(*b, *avail, nl);




 while (*nl == 0 && len == *avail && !quit &&
     *nbytes_read < UUENCODE_BID_MAX_READ) {
  ssize_t diff = *ravail - *avail;
  size_t nbytes_req = (*ravail+1023) & ~1023U;
  ssize_t tested;



  if (nbytes_req < (size_t)*ravail + 160)
   nbytes_req <<= 1;

  *b = __archive_read_filter_ahead(filter, nbytes_req, avail);
  if (*b == ((void*)0)) {
   if (*ravail >= *avail)
    return (0);

   *b = __archive_read_filter_ahead(filter, *avail, avail);
   quit = 1;
  }
  *nbytes_read = *avail;
  *ravail = *avail;
  *b += diff;
  *avail -= diff;
  tested = len;
  len = get_line(*b + tested, *avail - tested, nl);
  if (len >= 0)
   len += tested;
 }
 return (len);
}
