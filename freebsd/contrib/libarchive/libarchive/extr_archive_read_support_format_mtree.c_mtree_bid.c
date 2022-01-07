
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;


 char* __archive_read_ahead (struct archive_read*,scalar_t__,int *) ;
 int detect_form (struct archive_read*,int *) ;
 scalar_t__ memcmp (char const*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
mtree_bid(struct archive_read *a, int best_bid)
{
 const char *signature = "#mtree";
 const char *p;

 (void)best_bid;


 p = __archive_read_ahead(a, strlen(signature), ((void*)0));
 if (p == ((void*)0))
  return (-1);

 if (memcmp(p, signature, strlen(signature)) == 0)
  return (8 * (int)strlen(signature));




 return (detect_form(a, ((void*)0)));
}
