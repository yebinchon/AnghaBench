
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eui64 {int* octet; } ;


 int snprintf (char*,size_t,char*,int,int,int,int,int,int,int,int) ;

int
eui64_ntoa(const struct eui64 *id, char *a, size_t len)
{
        int i;

        i = snprintf(a, len, "%02x-%02x-%02x-%02x-%02x-%02x-%02x-%02x",
     id->octet[0], id->octet[1], id->octet[2], id->octet[3],
     id->octet[4], id->octet[5], id->octet[6], id->octet[7]);
        if (i < 23 || i >= len)
                return (-1);
        return (0);
}
