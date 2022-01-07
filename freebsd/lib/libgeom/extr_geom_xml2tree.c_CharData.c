
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mystate {size_t level; int * sbuf; } ;
typedef char XML_Char ;


 scalar_t__ isspace (char const) ;
 int sbuf_bcat (int ,char const*,int) ;

__attribute__((used)) static void
CharData(void *userData , const XML_Char *s , int len)
{
 struct mystate *mt;
 const char *b, *e;

 mt = userData;

 b = s;
 e = s + len - 1;
 while (isspace(*b) && b < e)
  b++;
 while (isspace(*e) && e > b)
  e--;
 if (e != b || (*b && !isspace(*b)))
  sbuf_bcat(mt->sbuf[mt->level], b, e - b + 1);
}
