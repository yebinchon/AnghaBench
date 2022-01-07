
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QuoteModeOff () ;
 int USE (void*) ;

__attribute__((used)) static void
quote_mode_cleanup(void *unused)
{
    USE(unused);
    QuoteModeOff();
}
