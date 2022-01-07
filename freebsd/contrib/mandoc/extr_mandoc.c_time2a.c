
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_mday; } ;


 int free (char*) ;
 struct tm* localtime (int *) ;
 char* mandoc_malloc (int) ;
 char* mandoc_strdup (char*) ;
 int snprintf (char*,int,char*,int) ;
 size_t strftime (char*,int,char*,struct tm*) ;

__attribute__((used)) static char *
time2a(time_t t)
{
 struct tm *tm;
 char *buf, *p;
 size_t ssz;
 int isz;

 buf = ((void*)0);
 tm = localtime(&t);
 if (tm == ((void*)0))
  goto fail;
 p = buf = mandoc_malloc(10 + 4 + 4 + 1);

 if ((ssz = strftime(p, 10 + 1, "%B ", tm)) == 0)
  goto fail;
 p += (int)ssz;
 isz = snprintf(p, 4 + 1, "%d, ", tm->tm_mday);
 if (isz < 0 || isz > 4)
  goto fail;
 p += isz;

 if (strftime(p, 4 + 1, "%Y", tm) == 0)
  goto fail;
 return buf;

fail:
 free(buf);
 return mandoc_strdup("");
}
