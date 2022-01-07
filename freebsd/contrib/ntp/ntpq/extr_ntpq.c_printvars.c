
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int cookedprint (int,size_t,char const*,int,int,int *) ;
 scalar_t__ rawmode ;
 int rawprint (int,size_t,char const*,int,int,int *) ;

void
printvars(
 size_t length,
 const char *data,
 int status,
 int sttype,
 int quiet,
 FILE *fp
 )
{
 if (rawmode)
     rawprint(sttype, length, data, status, quiet, fp);
 else
     cookedprint(sttype, length, data, status, quiet, fp);
}
