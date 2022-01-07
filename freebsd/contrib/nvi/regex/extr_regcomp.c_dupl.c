
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {scalar_t__ ssize; scalar_t__ slen; scalar_t__ strip; scalar_t__ stripdata; } ;
typedef scalar_t__ sopno ;
typedef int sop ;
typedef int RCHAR_T ;


 scalar_t__ HERE () ;
 int assert (int) ;
 int enlarge (struct parse*,scalar_t__) ;
 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static sopno
dupl(struct parse *p,
    sopno start,
    sopno finish)
{
 sopno ret = HERE();
 sopno len = finish - start;

 assert(finish >= start);
 if (len == 0)
  return(ret);
 if (!enlarge(p, p->ssize + len))
  return ret;
 assert(p->ssize >= p->slen + len);
 (void) memcpy((char *)(p->strip + p->slen),
  (char *)(p->strip + start), (size_t)len*sizeof(sop));
 (void) memcpy((char *)(p->stripdata + p->slen),
  (char *)(p->stripdata + start), (size_t)len*sizeof(RCHAR_T));
 p->slen += len;
 return(ret);
}
