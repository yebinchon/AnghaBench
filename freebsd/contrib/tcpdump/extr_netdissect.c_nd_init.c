
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;
typedef int WORD ;


 int MAKEWORD (int,int) ;
 int WSAStartup (int ,int *) ;
 int smiInit (char*) ;
 int strlcpy (char*,char*,size_t) ;

int
nd_init(char *errbuf, size_t errbuf_size)
{
 strlcpy(errbuf, "", errbuf_size);
 return (0);
}
