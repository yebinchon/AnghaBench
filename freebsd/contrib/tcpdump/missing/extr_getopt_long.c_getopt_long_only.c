
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int FLAG_LONGONLY ;
 int FLAG_PERMUTE ;
 int getopt_internal (int,char* const*,char const*,struct option const*,int*,int) ;

int
getopt_long_only(int nargc, char * const *nargv, const char *options,
 const struct option *long_options, int *idx)
{

 return (getopt_internal(nargc, nargv, options, long_options, idx,
     FLAG_PERMUTE|FLAG_LONGONLY));
}
