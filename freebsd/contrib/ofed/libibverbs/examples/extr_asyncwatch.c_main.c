
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {char* name; int has_arg; char val; } ;
struct ibv_device {int dummy; } ;
struct ibv_context {int async_fd; } ;
struct TYPE_2__ {int port_num; } ;
struct ibv_async_event {int event_type; TYPE_1__ element; } ;


 int SWITCH_FALLTHROUGH ;
 int _IOLBF ;
 char* event_name_str (int) ;
 int fprintf (int ,char*,char*) ;
 int getopt_long (int,char**,char*,struct option*,int *) ;
 int ibv_ack_async_event (struct ibv_async_event*) ;
 scalar_t__ ibv_get_async_event (struct ibv_context*,struct ibv_async_event*) ;
 struct ibv_device** ibv_get_device_list (int *) ;
 char* ibv_get_device_name (struct ibv_device*) ;
 struct ibv_context* ibv_open_device (struct ibv_device*) ;
 int optarg ;
 int perror (char*) ;
 int printf (char*,char*,int,...) ;
 int setvbuf (int ,int *,int ,int ) ;
 int stderr ;
 int stdout ;
 int strcmp (char*,char*) ;
 char* strdupa (int ) ;
 int usage (char*) ;

int main(int argc, char *argv[])
{
 struct ibv_device **dev_list;
 struct ibv_context *context;
 struct ibv_async_event event;
 char *ib_devname = ((void*)0);
 int i = 0;


 setvbuf(stdout, ((void*)0), _IOLBF, 0);

 while (1) {
  int ret = 1;
  int c;
  static struct option long_options[] = {
   { .name = "ib-dev", .has_arg = 1, .val = 'd' },
   { .name = "help", .has_arg = 0, .val = 'h' },
   {}
  };

  c = getopt_long(argc, argv, "d:h", long_options, ((void*)0));
  if (c == -1)
   break;
  switch (c) {
  case 'd':
   ib_devname = strdupa(optarg);
   break;
  case 'h':
   ret = 0;
   SWITCH_FALLTHROUGH;
  default:
   usage(argv[0]);
   return ret;
  }
 }
 dev_list = ibv_get_device_list(((void*)0));
 if (!dev_list) {
  perror("Failed to get IB devices list");
  return 1;
 }
 if (ib_devname) {
  for (; dev_list[i]; ++i) {
   if (!strcmp(ibv_get_device_name(dev_list[i]), ib_devname))
    break;
  }
 }

 if (!dev_list[i]) {
  fprintf(stderr, "IB device %s not found\n",
   ib_devname ? ib_devname : "");
  return 1;
 }

 context = ibv_open_device(dev_list[i]);
 if (!context) {
  fprintf(stderr, "Couldn't get context for %s\n",
   ibv_get_device_name(dev_list[i]));
  return 1;
 }

 printf("%s: async event FD %d\n",
        ibv_get_device_name(dev_list[i]), context->async_fd);

 while (1) {
  if (ibv_get_async_event(context, &event))
   return 1;

  printf("  event_type %s (%d), port %d\n",
         event_name_str(event.event_type),
         event.event_type, event.element.port_num);

  ibv_ack_async_event(&event);
 }

 return 0;
}
