
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_deltat ;


 int fprintf (int ,char*,char const*) ;
 int print_time_table (int ) ;
 int stderr ;
 scalar_t__ str2deltat (char const*,int *) ;

int
parse_deltat (const char *resp, krb5_deltat *value, int *mask, int bit)
{
    krb5_deltat tmp;

    if (str2deltat(resp, &tmp) == 0) {
 *value = tmp;
 if (mask)
     *mask |= bit;
 return 0;
    } else if(*resp == '?') {
 print_time_table (stderr);
    } else {
 fprintf (stderr, "Unable to parse time \"%s\"\n", resp);
    }
    return -1;
}
