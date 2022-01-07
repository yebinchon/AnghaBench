
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff {char control; } ;



int
roff_getcontrol(const struct roff *r, const char *cp, int *ppos)
{
 int pos;

 pos = *ppos;

 if (r->control != '\0' && cp[pos] == r->control)
  pos++;
 else if (r->control != '\0')
  return 0;
 else if ('\\' == cp[pos] && '.' == cp[pos + 1])
  pos += 2;
 else if ('.' == cp[pos] || '\'' == cp[pos])
  pos++;
 else
  return 0;

 while (' ' == cp[pos] || '\t' == cp[pos])
  pos++;

 *ppos = pos;
 return 1;
}
