
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ntpq_getvar (int ,int ,char const*,char*,int) ;
 int peervarlen ;
 int peervars ;

int ntpq_get_peervar( const char *varname, char *varvalue, int maxlen)
{
    return ( ntpq_getvar(peervars,peervarlen,varname,varvalue,maxlen) );
}
