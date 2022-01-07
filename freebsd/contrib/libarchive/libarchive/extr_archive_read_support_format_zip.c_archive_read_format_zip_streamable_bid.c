
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;


 char* __archive_read_ahead (struct archive_read*,int,int *) ;

__attribute__((used)) static int
archive_read_format_zip_streamable_bid(struct archive_read *a, int best_bid)
{
 const char *p;

 (void)best_bid;

 if ((p = __archive_read_ahead(a, 4, ((void*)0))) == ((void*)0))
  return (-1);
 if (p[0] == 'P' && p[1] == 'K') {
  if ((p[2] == '\001' && p[3] == '\002')
      || (p[2] == '\003' && p[3] == '\004')
      || (p[2] == '\005' && p[3] == '\006')
      || (p[2] == '\006' && p[3] == '\006')
      || (p[2] == '\007' && p[3] == '\010')
      || (p[2] == '0' && p[3] == '0'))
   return (29);
 }






 return (0);
}
