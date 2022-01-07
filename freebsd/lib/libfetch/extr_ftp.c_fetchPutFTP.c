
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {int dummy; } ;
typedef int FILE ;


 scalar_t__ CHECK_FLAG (char) ;
 int ftp_get_proxy (struct url*,char const*) ;
 int * ftp_request (struct url*,char*,int *,int ,char const*) ;

FILE *
fetchPutFTP(struct url *url, const char *flags)
{
 return (ftp_request(url, CHECK_FLAG('a') ? "APPE" : "STOR", ((void*)0),
     ftp_get_proxy(url, flags), flags));
}
