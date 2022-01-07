
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int equal; int * arch; int * sec; int * manpath; void* query; } ;
struct req {TYPE_1__ q; scalar_t__ isquery; } ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int free (int *) ;
 scalar_t__ isdigit (unsigned char) ;
 void* mandoc_strdup (char const*) ;
 void* mandoc_strndup (char const*,int) ;
 int pg_error_badrequest (char*) ;
 char* strchr (char const*,char) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strrchr (char const*,char) ;
 scalar_t__ validate_arch (int *) ;
 scalar_t__ validate_manpath (struct req*,int *) ;

__attribute__((used)) static void
parse_path_info(struct req *req, const char *path)
{
 const char *name, *sec, *end;

 req->isquery = 0;
 req->q.equal = 1;
 req->q.manpath = ((void*)0);
 req->q.arch = ((void*)0);


 if ((name = strrchr(path, '/')) == ((void*)0))
  name = path;
 else
  name++;


 sec = strrchr(name, '.');
 if (sec != ((void*)0) && isdigit((unsigned char)*++sec)) {
  req->q.query = mandoc_strndup(name, sec - name - 1);
  req->q.sec = mandoc_strdup(sec);
 } else {
  req->q.query = mandoc_strdup(name);
  req->q.sec = ((void*)0);
 }


 if (name == path)
  return;


 end = strchr(path, '/');
 req->q.manpath = mandoc_strndup(path, end - path);
 if (validate_manpath(req, req->q.manpath)) {
  path = end + 1;
  if (name == path)
   return;
 } else {
  free(req->q.manpath);
  req->q.manpath = ((void*)0);
 }


 if (strncmp(path, "man", 3) == 0 || strncmp(path, "cat", 3) == 0) {
  path += 3;
  end = strchr(path, '/');
  free(req->q.sec);
  req->q.sec = mandoc_strndup(path, end - path);
  path = end + 1;
  if (name == path)
   return;
 }


 end = strchr(path, '/');
 if (end + 1 != name) {
  pg_error_badrequest(
      "You specified too many directory components.");
  exit(EXIT_FAILURE);
 }
 req->q.arch = mandoc_strndup(path, end - path);
 if (validate_arch(req->q.arch) == 0) {
  pg_error_badrequest(
      "You specified an invalid directory component.");
  exit(EXIT_FAILURE);
 }
}
