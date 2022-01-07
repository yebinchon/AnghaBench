
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int snprintf (char*,int,char*,int const,int const,int const,int const) ;

__attribute__((used)) static const char *
format_nid(const u_char *data)
{
    static char buf[4][11+5];
    static int i = 0;
    i = (i + 1) % 4;
    snprintf(buf[i], 16, "%02x:%02x:%02x:%02x",
             data[0], data[1], data[2], data[3]);
    return buf[i];
}
