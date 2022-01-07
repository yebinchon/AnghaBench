
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct p2p_message {TYPE_2__* wfd_subelems; } ;
struct TYPE_4__ {TYPE_3__* wfd_subelems; } ;
struct p2p_device {TYPE_1__ info; } ;
struct TYPE_6__ {scalar_t__ used; int buf; } ;
struct TYPE_5__ {scalar_t__ used; int buf; } ;


 int os_memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int p2p_compare_wfd_info(struct p2p_device *dev,
         const struct p2p_message *msg)
{
 if (dev->info.wfd_subelems && msg->wfd_subelems) {
  if (dev->info.wfd_subelems->used != msg->wfd_subelems->used)
   return 1;

  return os_memcmp(dev->info.wfd_subelems->buf,
     msg->wfd_subelems->buf,
     dev->info.wfd_subelems->used);
 }
 if (dev->info.wfd_subelems || msg->wfd_subelems)
  return 1;

 return 0;
}
