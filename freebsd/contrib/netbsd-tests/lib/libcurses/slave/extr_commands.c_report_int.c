
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,int) ;
 int free (char*) ;
 int report_status (char*) ;

void
report_int(int value)
{
 char *string;

 asprintf(&string, "%d", value);
 report_status(string);
 free(string);
}
