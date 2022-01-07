
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 char volatile* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PAGE_SIZE ;
 int PROT_READ ;
 int _close (int) ;
 int _open (char*,int ) ;
 scalar_t__ atomic_cmpset_rel_ptr (uintptr_t volatile*,uintptr_t,uintptr_t) ;
 scalar_t__ cap_getmode (unsigned int*) ;
 char** hpet_dev_map ;
 char* mmap (int *,int ,int ,int ,int,int ) ;
 int munmap (void*,int ) ;
 char* stpcpy (char*,char const*) ;

__attribute__((used)) static void
__vdso_init_hpet(uint32_t u)
{
 static const char devprefix[] = "/dev/hpet";
 char devname[64], *c, *c1, t;
 volatile char *new_map, *old_map;
 unsigned int mode;
 uint32_t u1;
 int fd;

 c1 = c = stpcpy(devname, devprefix);
 u1 = u;
 do {
  *c++ = u1 % 10 + '0';
  u1 /= 10;
 } while (u1 != 0);
 *c = '\0';
 for (c--; c1 != c; c1++, c--) {
  t = *c1;
  *c1 = *c;
  *c = t;
 }

 old_map = hpet_dev_map[u];
 if (old_map != ((void*)0))
  return;





 if ((cap_getmode(&mode) == 0 && mode != 0) ||
     (fd = _open(devname, O_RDONLY)) == -1) {

  atomic_cmpset_rel_ptr((volatile uintptr_t *)&hpet_dev_map[u],
      (uintptr_t)old_map, (uintptr_t)MAP_FAILED);
  return;
 }

 new_map = mmap(((void*)0), PAGE_SIZE, PROT_READ, MAP_SHARED, fd, 0);
 _close(fd);
 if (atomic_cmpset_rel_ptr((volatile uintptr_t *)&hpet_dev_map[u],
     (uintptr_t)old_map, (uintptr_t)new_map) == 0 &&
     new_map != MAP_FAILED)
  munmap((void *)new_map, PAGE_SIZE);
}
