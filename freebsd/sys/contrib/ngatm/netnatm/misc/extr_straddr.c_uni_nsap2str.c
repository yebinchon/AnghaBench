
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int uni_prefix2str (char*,int const*,int,int) ;

void
uni_nsap2str(char *out, const u_char *in, int dotit)
{
 uni_prefix2str(out, in, 20, dotit);
}
