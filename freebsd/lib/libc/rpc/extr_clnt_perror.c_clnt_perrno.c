
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;


 char* clnt_sperrno (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void
clnt_perrno(enum clnt_stat num)
{
 (void) fprintf(stderr, "%s\n", clnt_sperrno(num));
}
