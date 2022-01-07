
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int str ;
typedef int krb5_context ;
typedef int FILE ;


 int TRUE ;
 int fclose (int *) ;
 int fprintf (int *,char*,char*) ;
 int krb5_format_time (int ,int ,char*,int,int ) ;
 int * open_stats (int ) ;
 int time (int *) ;

__attribute__((used)) static void
write_master_down(krb5_context context)
{
    char str[100];
    time_t t = time(((void*)0));
    FILE *fp;

    fp = open_stats(context);
    if (fp == ((void*)0))
 return;
    krb5_format_time(context, t, str, sizeof(str), TRUE);
    fprintf(fp, "master down at %s\n", str);

    fclose(fp);
}
