
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int w2 ;
typedef int w1 ;
struct both {int nread; int ev; } ;
typedef int r2 ;
typedef int r1 ;


 int EV_READ ;
 int EV_WRITE ;
 int cleanup_test () ;
 int combined_read_cb ;
 int combined_write_cb ;
 int event_add (int *,int *) ;
 int event_dispatch () ;
 int event_set (int *,int ,int ,int ,struct both*) ;
 int memset (struct both*,int ,int) ;
 int * pair ;
 int setup_test (char*) ;
 int test_ok ;
 int tt_assert (int) ;

__attribute__((used)) static void
test_combined(void)
{
 struct both r1, r2, w1, w2;

 setup_test("Combined read/write: ");
 memset(&r1, 0, sizeof(r1));
 memset(&r2, 0, sizeof(r2));
 memset(&w1, 0, sizeof(w1));
 memset(&w2, 0, sizeof(w2));

 w1.nread = 4096;
 w2.nread = 8192;

 event_set(&r1.ev, pair[0], EV_READ, combined_read_cb, &r1);
 event_set(&w1.ev, pair[0], EV_WRITE, combined_write_cb, &w1);
 event_set(&r2.ev, pair[1], EV_READ, combined_read_cb, &r2);
 event_set(&w2.ev, pair[1], EV_WRITE, combined_write_cb, &w2);
 tt_assert(event_add(&r1.ev, ((void*)0)) != -1);
 tt_assert(!event_add(&w1.ev, ((void*)0)));
 tt_assert(!event_add(&r2.ev, ((void*)0)));
 tt_assert(!event_add(&w2.ev, ((void*)0)));
 event_dispatch();

 if (r1.nread == 8192 && r2.nread == 4096)
  test_ok = 1;

end:
 cleanup_test();
}
