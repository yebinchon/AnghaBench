
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {int dummy; } ;
struct archive_read_filter {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int UUDECODE (int ) ;
 size_t UUENCODE_BID_MAX_READ ;
 unsigned char* __archive_read_filter_ahead (struct archive_read_filter*,int,scalar_t__*) ;
 scalar_t__* base64 ;
 scalar_t__ bid_get_line (struct archive_read_filter*,unsigned char const**,scalar_t__*,scalar_t__*,scalar_t__*,size_t*) ;
 scalar_t__ memcmp (unsigned char const*,char*,int) ;
 scalar_t__* uuchar ;

__attribute__((used)) static int
uudecode_bidder_bid(struct archive_read_filter_bidder *self,
    struct archive_read_filter *filter)
{
 const unsigned char *b;
 ssize_t avail, ravail;
 ssize_t len, nl;
 int l;
 int firstline;
 size_t nbytes_read;

 (void)self;

 b = __archive_read_filter_ahead(filter, 1, &avail);
 if (b == ((void*)0))
  return (0);

 firstline = 20;
 ravail = avail;
 nbytes_read = avail;
 for (;;) {
  len = bid_get_line(filter, &b, &avail, &ravail, &nl, &nbytes_read);
  if (len < 0 || nl == 0)
   return (0);
  if (len - nl >= 11 && memcmp(b, "begin ", 6) == 0)
   l = 6;
  else if (len -nl >= 18 && memcmp(b, "begin-base64 ", 13) == 0)
   l = 13;
  else
   l = 0;

  if (l > 0 && (b[l] < '0' || b[l] > '7' ||
      b[l+1] < '0' || b[l+1] > '7' ||
      b[l+2] < '0' || b[l+2] > '7' || b[l+3] != ' '))
   l = 0;

  b += len;
  avail -= len;
  if (l)
   break;
  firstline = 0;


  if (nbytes_read >= UUENCODE_BID_MAX_READ)
   return (0);
 }
 if (!avail)
  return (0);
 len = bid_get_line(filter, &b, &avail, &ravail, &nl, &nbytes_read);
 if (len < 0 || nl == 0)
  return (0);
 avail -= len;

 if (l == 6) {

  if (!uuchar[*b])
   return (0);

  l = UUDECODE(*b++); len--;
  if (l > 45)

   return (0);
  if (l > len - nl)
   return (0);
  while (l) {
   if (!uuchar[*b++])
    return (0);
   --len;
   --l;
  }
  if (len-nl == 1 &&
      (uuchar[*b] ||
       (*b >= 'a' && *b <= 'z'))) {
   ++b;
   --len;
  }
  b += nl;
  if (avail && uuchar[*b])
   return (firstline+30);
 } else if (l == 13) {

  while (len-nl > 0) {
   if (!base64[*b++])
    return (0);
   --len;
  }
  b += nl;

  if (avail >= 5 && memcmp(b, "====\n", 5) == 0)
   return (firstline+40);
  if (avail >= 6 && memcmp(b, "====\r\n", 6) == 0)
   return (firstline+40);
  if (avail > 0 && base64[*b])
   return (firstline+30);
 }

 return (0);
}
