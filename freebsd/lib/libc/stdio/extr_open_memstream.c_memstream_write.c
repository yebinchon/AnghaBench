
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstream {int offset; int len; int* bufp; } ;
typedef int ssize_t ;


 int fprintf (int ,char*,struct memstream*,int,int) ;
 int memcpy (int,char const*,int) ;
 int memstream_grow (struct memstream*,int) ;
 int memstream_update (struct memstream*) ;
 int stderr ;

__attribute__((used)) static int
memstream_write(void *cookie, const char *buf, int len)
{
 struct memstream *ms;
 ssize_t tocopy;

 ms = cookie;
 if (!memstream_grow(ms, ms->offset + len))
  return (-1);
 tocopy = ms->len - ms->offset;
 if (len < tocopy)
  tocopy = len;
 memcpy(*ms->bufp + ms->offset, buf, tocopy);
 ms->offset += tocopy;
 memstream_update(ms);



 return (tocopy);
}
