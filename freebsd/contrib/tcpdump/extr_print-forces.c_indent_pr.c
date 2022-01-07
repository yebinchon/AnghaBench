
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char IND_CHR ;
 char IND_PREF ;
 int IND_SIZE ;
 char IND_SUF ;
 char* ind_buf ;

__attribute__((used)) static inline char *indent_pr(int indent, int nlpref)
{
 int i = 0;
 char *r = ind_buf;

 if (indent > (IND_SIZE - 1))
  indent = IND_SIZE - 1;

 if (nlpref) {
  r[i] = IND_PREF;
  i++;
  indent--;
 }

 while (--indent >= 0)
  r[i++] = IND_CHR;

 r[i] = IND_SUF;
 return r;
}
