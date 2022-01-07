
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {int * bid; } ;
struct archive_read {int archive; struct archive_read_filter_bidder* bidders; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int archive_set_error (int *,int ,char*) ;
 int memset (struct archive_read_filter_bidder*,int ,int) ;

int
__archive_read_get_bidder(struct archive_read *a,
    struct archive_read_filter_bidder **bidder)
{
 int i, number_slots;

 number_slots = sizeof(a->bidders) / sizeof(a->bidders[0]);

 for (i = 0; i < number_slots; i++) {
  if (a->bidders[i].bid == ((void*)0)) {
   memset(a->bidders + i, 0, sizeof(a->bidders[0]));
   *bidder = (a->bidders + i);
   return (ARCHIVE_OK);
  }
 }

 archive_set_error(&a->archive, ENOMEM,
     "Not enough slots for filter registration");
 return (ARCHIVE_FATAL);
}
