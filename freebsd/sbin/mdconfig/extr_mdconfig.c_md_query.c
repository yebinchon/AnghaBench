
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const OPT_UNIT ;
 int md_list (char const*,int const,char const*) ;

__attribute__((used)) static int
md_query(const char *name, const int opt, const char *fflag)
{

 return (md_list(name, opt | OPT_UNIT, fflag));
}
