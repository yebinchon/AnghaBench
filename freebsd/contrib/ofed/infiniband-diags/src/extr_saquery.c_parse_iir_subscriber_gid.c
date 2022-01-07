
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int raw; } ;
struct TYPE_5__ {TYPE_1__ subscriber_gid; } ;
typedef TYPE_2__ ib_inform_info_record_t ;


 int AF_INET6 ;
 int EINVAL ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int inet_pton (int ,char*,int *) ;
 int stderr ;

__attribute__((used)) static int parse_iir_subscriber_gid(char *str, ib_inform_info_record_t *ir)
{
       int rc = inet_pton(AF_INET6,str,&(ir->subscriber_gid.raw));
       if(rc < 1){
          fprintf(stderr, "Invalid SubscriberGID specified: \"%s\"\n",str);
          exit(EINVAL);
       }
       return rc;
}
