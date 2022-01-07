
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {scalar_t__ member_0; scalar_t__ member_1; scalar_t__ member_4; scalar_t__ l_type; scalar_t__ l_whence; scalar_t__ l_start; scalar_t__ l_len; int member_3; int member_2; } ;
typedef scalar_t__ off_t ;


 int ATF_REQUIRE (int) ;
 int F_GETLK ;
 int F_RDLCK ;
 scalar_t__ F_UNLCK ;
 int RL (int ) ;
 scalar_t__ SEEK_SET ;
 int rump_sys_fcntl (int,int ,struct flock const*) ;

__attribute__((used)) static unsigned int
fcntl_getlocks(int fildes, off_t start, off_t len,
    struct flock *lock, struct flock *end)
{
 unsigned int rv = 0;
 const struct flock l = { start, len, 0, F_RDLCK, SEEK_SET };

 if (lock == end)
  return rv;

 RL(rump_sys_fcntl(fildes, F_GETLK, &l));

 if (l.l_type == F_UNLCK)
  return rv;

 *lock++ = l;
 rv += 1;

 ATF_REQUIRE(l.l_whence == SEEK_SET);

 if (l.l_start > start) {
  unsigned int n =
      fcntl_getlocks(fildes, start, l.l_start - start, lock, end);
  rv += n;
  lock += n;
  if (lock == end)
   return rv;
 }

 if (l.l_len == 0)
  return rv;

 if (len == 0) {
  rv += fcntl_getlocks(fildes, l.l_start + l.l_len, len, lock, end);
 } else if (l.l_start + l.l_len < start + len) {
  len -= l.l_start + l.l_len - start;
  rv += fcntl_getlocks(fildes, l.l_start + l.l_len, len, lock, end);
 }

 return rv;
}
