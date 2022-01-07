
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int assert (int ) ;
 int free (char*) ;
 char* malloc (int) ;
 int open (char*,int ,int ) ;
 int snprintf (char*,int,char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
vm_device_open(const char *name)
{
 int fd, len;
 char *vmfile;

 len = strlen("/dev/vmm/") + strlen(name) + 1;
 vmfile = malloc(len);
 assert(vmfile != ((void*)0));
 snprintf(vmfile, len, "/dev/vmm/%s", name);


 fd = open(vmfile, O_RDWR, 0);

 free(vmfile);
 return (fd);
}
