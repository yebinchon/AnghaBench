
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int message_fatal (int ) ;

extern void
message_bug(void)
{
 message_fatal(_("Internal error (bug)"));
}
