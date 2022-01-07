
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int DbgFp ;
 int fprintf (int ,char*,int) ;
 int fputc (int ,int ) ;
 int fputs (char*,int ) ;

void
DspFlnm(u_int size, char *flnm)
{
 int i;

 (void) fprintf(DbgFp, "\n\t\tFile Name (%u): <", size);
 for (i = 0; i < size; i++)
  (void) fputc(*flnm++, DbgFp);
 (void) fputs(">\n", DbgFp);
}
