
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int str; } ;
struct diocgattr_arg {int len; TYPE_2__ value; int name; } ;
struct TYPE_3__ {char const* name; int * ptype; } ;


 int DIOCGATTR ;
 int O_RDONLY ;
 int close (int) ;
 int err (int,char*,char const*) ;
 int ioctl (int,int ,struct diocgattr_arg*) ;
 int memset (TYPE_2__*,int ,int) ;
 int open (char const*,int ) ;
 TYPE_1__* ptype_map ;
 int strncpy (int ,char*,int) ;
 int * strstr (int ,int *) ;

__attribute__((used)) static const char *
getfstype(const char *str)
{
 struct diocgattr_arg attr;
 int fd, i;

 if ((fd = open(str, O_RDONLY)) == -1)
  err(1, "cannot open `%s'", str);

 strncpy(attr.name, "PART::type", sizeof(attr.name));
 memset(&attr.value, 0, sizeof(attr.value));
 attr.len = sizeof(attr.value);
 if (ioctl(fd, DIOCGATTR, &attr) == -1) {
  (void) close(fd);
  return(((void*)0));
 }
 (void) close(fd);
 for (i = 0; ptype_map[i].ptype != ((void*)0); i++)
  if (strstr(attr.value.str, ptype_map[i].ptype) != ((void*)0))
   return (ptype_map[i].name);
 return (((void*)0));
}
