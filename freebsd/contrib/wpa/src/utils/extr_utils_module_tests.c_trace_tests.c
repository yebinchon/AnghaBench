
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_INFO ;
 int wpa_printf (int ,char*) ;
 int wpa_trace_dump_funcname (char*,int (*) ()) ;
 int wpa_trace_show (char*) ;

__attribute__((used)) static int trace_tests(void)
{
 wpa_printf(MSG_INFO, "trace tests");

 wpa_trace_show("test backtrace");
 wpa_trace_dump_funcname("test funcname", trace_tests);

 return 0;
}
