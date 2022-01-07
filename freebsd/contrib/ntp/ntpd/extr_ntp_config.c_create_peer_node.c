
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* u_char ;
struct TYPE_13__ {int s; void* u; void* i; } ;
struct TYPE_14__ {int host_mode; int attr; TYPE_1__ value; int group; void* peerversion; int peerkey; void* ttl; void* maxpoll; void* minpoll; int peerflags; int * addr; } ;
typedef TYPE_2__ peer_node ;
typedef int keyid_t ;
typedef TYPE_2__ attr_val_fifo ;
typedef TYPE_2__ attr_val ;
typedef int address_node ;


 int APPEND_G_FIFO (int ,TYPE_2__*) ;
 int CHECK_FIFO_CONSISTENCY (TYPE_2__) ;
 void* KEYID_T_MAX ;
 int LOG_ERR ;
 int LOG_INFO ;
 void* MAX_TTL ;
 void* NTP_MAXPOLL ;
 void* NTP_MINPOLL ;
 void* NTP_VERSION ;
 void* UCHAR_MAX ;
 int UNLINK_FIFO (TYPE_2__*,TYPE_2__,int ) ;
 TYPE_2__* emalloc_zero (int) ;
 int free (TYPE_2__*) ;
 int is_refclk_addr (int *) ;
 int link ;
 int msyslog (int ,char*,...) ;
 int token_name (int) ;

peer_node *
create_peer_node(
 int hmode,
 address_node * addr,
 attr_val_fifo * options
 )
{
 peer_node *my_node;
 attr_val *option;
 int freenode;
 int errflag = 0;

 my_node = emalloc_zero(sizeof(*my_node));


 my_node->peerversion = NTP_VERSION;


 my_node->host_mode = hmode;
 my_node->addr = addr;
 if (options != ((void*)0))
  CHECK_FIFO_CONSISTENCY(*options);
 while (options != ((void*)0)) {
  UNLINK_FIFO(option, *options, link);
  if (((void*)0) == option) {
   free(options);
   break;
  }

  freenode = 1;

  switch (option->attr) {

  case 135:
   APPEND_G_FIFO(my_node->peerflags, option);
   freenode = 0;
   break;

  case 131:
   if (option->value.i < NTP_MINPOLL ||
       option->value.i > UCHAR_MAX) {
    msyslog(LOG_INFO,
     "minpoll: provided value (%d) is out of range [%d-%d])",
     option->value.i, NTP_MINPOLL,
     UCHAR_MAX);
    my_node->minpoll = NTP_MINPOLL;
   } else {
    my_node->minpoll =
     (u_char)option->value.u;
   }
   break;

  case 132:
   if (option->value.i < 0 ||
       option->value.i > NTP_MAXPOLL) {
    msyslog(LOG_INFO,
     "maxpoll: provided value (%d) is out of range [0-%d])",
     option->value.i, NTP_MAXPOLL);
    my_node->maxpoll = NTP_MAXPOLL;
   } else {
    my_node->maxpoll =
     (u_char)option->value.u;
   }
   break;

  case 129:
   if (is_refclk_addr(addr)) {
    msyslog(LOG_ERR, "'ttl' does not apply for refclocks");
    errflag = 1;
   } else if (option->value.u >= MAX_TTL) {
    msyslog(LOG_ERR, "ttl: invalid argument");
    errflag = 1;
   } else {
    my_node->ttl = (u_char)option->value.u;
   }
   break;

  case 130:
   if (is_refclk_addr(addr)) {
    my_node->ttl = option->value.u;
   } else {
    msyslog(LOG_ERR, "'mode' does not apply for network peers");
    errflag = 1;
   }
   break;

  case 133:
   if (option->value.u >= KEYID_T_MAX) {
    msyslog(LOG_ERR, "key: invalid argument");
    errflag = 1;
   } else {
    my_node->peerkey =
     (keyid_t)option->value.u;
   }
   break;

  case 128:
   if (option->value.u >= UCHAR_MAX) {
    msyslog(LOG_ERR, "version: invalid argument");
    errflag = 1;
   } else {
    my_node->peerversion =
     (u_char)option->value.u;
   }
   break;

  case 134:
   my_node->group = option->value.s;
   break;

  default:
   msyslog(LOG_ERR,
    "Unknown peer/server option token %s",
    token_name(option->attr));
   errflag = 1;
  }
  if (freenode)
   free(option);
 }


 if (errflag) {
  free(my_node);
  my_node = ((void*)0);
 }

 return my_node;
}
