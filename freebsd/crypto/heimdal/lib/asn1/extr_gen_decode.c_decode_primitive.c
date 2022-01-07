
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int codefile ;
 int fprintf (int ,char*,char const*,char const*,char const*) ;

__attribute__((used)) static void
decode_primitive (const char *typename, const char *name, const char *forwstr)
{
    fprintf (codefile,
      "e = der_get_%s(p, len, %s, &l);\n"
      "if(e) %s;\np += l; len -= l; ret += l;\n",
      typename,
      name,
      forwstr);

}
