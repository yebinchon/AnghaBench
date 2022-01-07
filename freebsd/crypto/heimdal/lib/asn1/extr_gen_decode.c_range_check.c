
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range {int min; int max; } ;


 int codefile ;
 int fprintf (int ,char*,char const*,char const*,int,char const*) ;

__attribute__((used)) static void
range_check(const char *name,
     const char *length,
     const char *forwstr,
     struct range *r)
{
    if (r->min == r->max + 2 || r->min < r->max)
 fprintf (codefile,
   "if ((%s)->%s > %d) {\n"
   "e = ASN1_MAX_CONSTRAINT; %s;\n"
   "}\n",
   name, length, r->max, forwstr);
    if (r->min - 1 == r->max || r->min < r->max)
 fprintf (codefile,
   "if ((%s)->%s < %d) {\n"
   "e = ASN1_MIN_CONSTRAINT; %s;\n"
   "}\n",
   name, length, r->min, forwstr);
    if (r->max == r->min)
 fprintf (codefile,
   "if ((%s)->%s != %d) {\n"
   "e = ASN1_EXACT_CONSTRAINT; %s;\n"
   "}\n",
   name, length, r->min, forwstr);
}
