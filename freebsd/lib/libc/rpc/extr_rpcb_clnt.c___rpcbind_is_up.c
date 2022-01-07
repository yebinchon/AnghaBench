
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_len; int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct netconfig {int * nc_protofmly; } ;
typedef int bool_t ;


 int AF_LOCAL ;
 int FALSE ;
 int NC_LOOPBACK ;
 int SOCK_STREAM ;
 int SUN_LEN (struct sockaddr_un*) ;
 int TRUE ;
 int _PATH_RPCBINDSOCK ;
 int _close (int) ;
 scalar_t__ _connect (int,struct sockaddr*,int ) ;
 int _socket (int ,int ,int ) ;
 int endnetconfig (void*) ;
 struct netconfig* getnetconfig (void*) ;
 int memset (struct sockaddr_un*,int ,int) ;
 void* setnetconfig () ;
 scalar_t__ strcmp (int *,int ) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static bool_t
__rpcbind_is_up(void)
{
 struct netconfig *nconf;
 struct sockaddr_un sun;
 void *localhandle;
 int sock;

 nconf = ((void*)0);
 localhandle = setnetconfig();
 while ((nconf = getnetconfig(localhandle)) != ((void*)0)) {
  if (nconf->nc_protofmly != ((void*)0) &&
      strcmp(nconf->nc_protofmly, NC_LOOPBACK) == 0)
    break;
 }
 endnetconfig(localhandle);

 if (nconf == ((void*)0))
  return (FALSE);

 memset(&sun, 0, sizeof sun);
 sock = _socket(AF_LOCAL, SOCK_STREAM, 0);
 if (sock < 0)
  return (FALSE);
 sun.sun_family = AF_LOCAL;
 strncpy(sun.sun_path, _PATH_RPCBINDSOCK, sizeof(sun.sun_path));
 sun.sun_len = SUN_LEN(&sun);

 if (_connect(sock, (struct sockaddr *)&sun, sun.sun_len) < 0) {
  _close(sock);
  return (FALSE);
 }

 _close(sock);
 return (TRUE);
}
