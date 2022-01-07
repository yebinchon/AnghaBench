
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url_stat {int dummy; } ;
struct url {int dummy; } ;
typedef int FILE ;


 int ftp_get_proxy (struct url*,char const*) ;
 int * ftp_request (struct url*,char*,struct url_stat*,int ,char const*) ;

FILE *
fetchXGetFTP(struct url *url, struct url_stat *us, const char *flags)
{
 return (ftp_request(url, "RETR", us, ftp_get_proxy(url, flags), flags));
}
