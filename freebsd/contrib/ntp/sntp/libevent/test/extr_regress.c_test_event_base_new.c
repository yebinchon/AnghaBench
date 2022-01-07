
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct event {int dummy; } ;
struct basic_test_data {int * pair; } ;
struct basic_cb_args {scalar_t__ callcount; struct event* ev; struct event_base* eb; } ;


 int EV_PERSIST ;
 int EV_READ ;
 int SHUT_WR ;
 int TEST1 ;
 int basic_read_cb ;
 scalar_t__ event_add (struct event*,int *) ;
 int event_assign (struct event*,struct event_base*,int ,int,int ,struct basic_cb_args*) ;
 int event_base_free (struct event_base*) ;
 scalar_t__ event_base_loop (struct event_base*,int ) ;
 struct event_base* event_base_new () ;
 scalar_t__ shutdown (int ,int ) ;
 scalar_t__ strlen (int ) ;
 int tt_abort_msg (char*) ;
 int tt_abort_perror (char*) ;
 int tt_abort_printf (char*) ;
 int write (int ,int ,int) ;

__attribute__((used)) static void
test_event_base_new(void *ptr)
{
 struct basic_test_data *data = ptr;
 struct event_base *base = 0;
 struct event ev1;
 struct basic_cb_args args;

 int towrite = (int)strlen(TEST1)+1;
 int len = write(data->pair[0], TEST1, towrite);

 if (len < 0)
  tt_abort_perror("initial write");
 else if (len != towrite)
  tt_abort_printf(("initial write fell short (%d of %d bytes)",
     len, towrite));

 if (shutdown(data->pair[0], SHUT_WR))
  tt_abort_perror("initial write shutdown");

 base = event_base_new();
 if (!base)
  tt_abort_msg("failed to create event base");

 args.eb = base;
 args.ev = &ev1;
 args.callcount = 0;
 event_assign(&ev1, base, data->pair[1],
       EV_READ|EV_PERSIST, basic_read_cb, &args);

 if (event_add(&ev1, ((void*)0)))
  tt_abort_perror("initial event_add");

 if (event_base_loop(base, 0))
  tt_abort_msg("unsuccessful exit from event loop");

end:
 if (base)
  event_base_free(base);
}
