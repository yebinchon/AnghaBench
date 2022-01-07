
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int codefile ;
 int fprintf (int ,char*,char const*,char const*,char const*) ;
 int used_fail ;

__attribute__((used)) static void
copy_primitive (const char *typename, const char *from, const char *to)
{
    fprintf (codefile, "if(der_copy_%s(%s, %s)) goto fail;\n",
      typename, from, to);
    used_fail++;
}
