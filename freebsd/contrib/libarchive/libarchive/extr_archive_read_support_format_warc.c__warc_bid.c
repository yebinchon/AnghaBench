
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
typedef int ssize_t ;


 char* __archive_read_ahead (struct archive_read*,unsigned int,int*) ;
 unsigned int _warc_rdver (char const*,int) ;

__attribute__((used)) static int
_warc_bid(struct archive_read *a, int best_bid)
{
 const char *hdr;
 ssize_t nrd;
 unsigned int ver;

 (void)best_bid;


 if ((hdr = __archive_read_ahead(a, 12U, &nrd)) == ((void*)0)) {

  return -1;
 } else if (nrd < 12) {

  return -1;
 }


 ver = _warc_rdver(hdr, nrd);
 if (ver < 1200U || ver > 10000U) {

  return -1;
 }


 return (64);
}
