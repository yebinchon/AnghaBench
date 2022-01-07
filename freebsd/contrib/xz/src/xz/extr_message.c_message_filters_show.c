
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lzma_filter ;
typedef enum message_verbosity { ____Placeholder_message_verbosity } message_verbosity ;


 int FILTERS_STR_SIZE ;
 char* _ (char*) ;
 int fprintf (int ,char*,char*,char*) ;
 int message_filters_to_str (char*,int const*,int) ;
 char* progname ;
 int stderr ;
 int verbosity ;

extern void
message_filters_show(enum message_verbosity v, const lzma_filter *filters)
{
 if (v > verbosity)
  return;

 char buf[FILTERS_STR_SIZE];
 message_filters_to_str(buf, filters, 1);
 fprintf(stderr, _("%s: Filter chain: %s\n"), progname, buf);
 return;
}
