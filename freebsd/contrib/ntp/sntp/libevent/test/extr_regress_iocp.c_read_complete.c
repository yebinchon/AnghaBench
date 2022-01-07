
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_overlapped {int dummy; } ;
typedef int ev_ssize_t ;


 int count_incr () ;
 int evbuffer_commit_read_ (int ,int ) ;
 int rbuf ;
 int tt_assert (int) ;

__attribute__((used)) static void
read_complete(struct event_overlapped *eo, uintptr_t key,
    ev_ssize_t nbytes, int ok)
{
 tt_assert(ok);
 evbuffer_commit_read_(rbuf, nbytes);
 count_incr();
end:
 ;
}
