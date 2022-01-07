
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int epbuf ;


 int REG_ITOA ;
 int assert (int) ;
 size_t regerror (int,int *,char*,int) ;

__attribute__((used)) static char *
eprint(int err)
{
 static char epbuf[100];
 size_t len;

 len = regerror(REG_ITOA|err, ((void*)0), epbuf, sizeof(epbuf));
 assert(len <= sizeof(epbuf));
 return(epbuf);
}
