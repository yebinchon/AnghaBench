
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timerfd {scalar_t__ tfd_count; } ;
struct knote {struct timerfd* kn_hook; } ;



__attribute__((used)) static int
filt_timerfdread(struct knote *kn, long hint)
{
 struct timerfd *tfd = kn->kn_hook;

 return (tfd->tfd_count > 0);
}
