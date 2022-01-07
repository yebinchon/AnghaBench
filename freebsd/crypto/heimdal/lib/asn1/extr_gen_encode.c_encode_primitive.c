
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int codefile ;
 int fprintf (int ,char*,char const*,char const*) ;

__attribute__((used)) static void
encode_primitive (const char *typename, const char *name)
{
    fprintf (codefile,
      "e = der_put_%s(p, len, %s, &l);\n"
      "if (e) return e;\np -= l; len -= l; ret += l;\n\n",
      typename,
      name);
}
