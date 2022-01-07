
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct url {scalar_t__ port; int pwd; int user; int host; } ;
struct TYPE_2__ {scalar_t__ port; int pwd; int user; int host; } ;


 scalar_t__ cached_connection ;
 TYPE_1__ cached_host ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
ftp_isconnected(struct url *url)
{
 return (cached_connection
     && (strcmp(url->host, cached_host.host) == 0)
     && (strcmp(url->user, cached_host.user) == 0)
     && (strcmp(url->pwd, cached_host.pwd) == 0)
     && (url->port == cached_host.port));
}
