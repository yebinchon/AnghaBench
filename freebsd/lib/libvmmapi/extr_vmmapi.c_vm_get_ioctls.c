
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_ioctl_cmds ;
typedef int const cap_ioctl_t ;
 int bcopy (int const*,int const*,int) ;
 int const* malloc (int) ;
 size_t nitems (int const*) ;

const cap_ioctl_t *
vm_get_ioctls(size_t *len)
{
 cap_ioctl_t *cmds;

 static const cap_ioctl_t vm_ioctl_cmds[] = { 140, 130, 147,
     180, 173, 150, 150,
     151, 137, 172,
     135, 170,
     136, 171,
     165, 155, 154,
     153, 163, 162,
     160, 161, 159,
     158, 157, 156,
     139, 178, 179,
     128, 152, 149,
     148, 164, 132, 131,
     133, 168,
     175, 176, 167,
     166,
     181, 177, 129, 145,
     138, 174,
     141, 143, 142, 144,
     146, 134, 169 };

 if (len == ((void*)0)) {
  cmds = malloc(sizeof(vm_ioctl_cmds));
  if (cmds == ((void*)0))
   return (((void*)0));
  bcopy(vm_ioctl_cmds, cmds, sizeof(vm_ioctl_cmds));
  return (cmds);
 }

 *len = nitems(vm_ioctl_cmds);
 return (((void*)0));
}
