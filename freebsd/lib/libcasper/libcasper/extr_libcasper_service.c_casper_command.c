
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct casper_service {int cs_service; } ;
typedef int nvlist_t ;


 int EINVAL ;
 int ENOENT ;
 int ENOTCAPABLE ;
 int casper_allowed_service (int const*,char const*) ;
 int close (int) ;
 int errno ;
 int nvlist_add_number (int *,char*,int ) ;
 int nvlist_add_string (int *,char*,char const*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 int nvlist_exists_string (int *,char*) ;
 char* nvlist_get_string (int *,char*) ;
 int nvlist_move_descriptor (int *,char*,int) ;
 int nvlist_send (int,int *) ;
 struct casper_service* service_find (char const*) ;
 int service_get_channel_flags (int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int zygote_clone_service_execute (int*,int*) ;

__attribute__((used)) static int
casper_command(const char *cmd, const nvlist_t *limits, nvlist_t *nvlin,
    nvlist_t *nvlout)
{
 struct casper_service *casserv;
 const char *servname;
 nvlist_t *nvl;
 int chanfd, procfd, error;

 if (strcmp(cmd, "open") != 0)
  return (EINVAL);
 if (!nvlist_exists_string(nvlin, "service"))
  return (EINVAL);

 servname = nvlist_get_string(nvlin, "service");
 casserv = service_find(servname);
 if (casserv == ((void*)0))
  return (ENOENT);

 if (!casper_allowed_service(limits, servname))
  return (ENOTCAPABLE);

 if (zygote_clone_service_execute(&chanfd, &procfd) == -1)
  return (errno);

 nvl = nvlist_create(0);
 nvlist_add_string(nvl, "service", servname);
 nvlist_move_descriptor(nvl, "procfd", procfd);
 if (nvlist_send(chanfd, nvl) == -1) {
  error = errno;
  nvlist_destroy(nvl);
  close(chanfd);
  return (error);
 }
 nvlist_destroy(nvl);

 nvlist_move_descriptor(nvlout, "chanfd", chanfd);
 nvlist_add_number(nvlout, "chanflags",
     service_get_channel_flags(casserv->cs_service));

 return (0);
}
