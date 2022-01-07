
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,int,int,char const*) ;
 int time_second ;

__attribute__((used)) static void
cpsw_debugf_head(const char *funcname)
{
 int t = (int)(time_second % (24 * 60 * 60));

 printf("%02d:%02d:%02d %s ", t / (60 * 60), (t / 60) % 60, t % 60, funcname);
}
