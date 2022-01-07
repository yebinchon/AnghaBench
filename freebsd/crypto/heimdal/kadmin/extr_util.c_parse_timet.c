
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int krb5_timestamp ;


 int fprintf (int ,char*,...) ;
 int stderr ;
 scalar_t__ str2time_t (char const*,int *) ;

int
parse_timet (const char *resp, krb5_timestamp *value, int *mask, int bit)
{
    time_t tmp;

    if (str2time_t(resp, &tmp) == 0) {
 *value = tmp;
 if(mask)
     *mask |= bit;
 return 0;
    }
    if(*resp != '?')
 fprintf (stderr, "Unable to parse time \"%s\"\n", resp);
    fprintf (stderr, "Print date on format YYYY-mm-dd [hh:mm:ss]\n");
    return -1;
}
