
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_device {int flags; } ;


 int P2P_DEV_PREFER_PERSISTENT_GROUP ;
 int P2P_DEV_PREFER_PERSISTENT_RECONN ;

__attribute__((used)) static void p2p_set_dev_persistent(struct p2p_device *dev,
       int persistent_group)
{
 switch (persistent_group) {
 case 0:
  dev->flags &= ~(P2P_DEV_PREFER_PERSISTENT_GROUP |
    P2P_DEV_PREFER_PERSISTENT_RECONN);
  break;
 case 1:
  dev->flags |= P2P_DEV_PREFER_PERSISTENT_GROUP;
  dev->flags &= ~P2P_DEV_PREFER_PERSISTENT_RECONN;
  break;
 case 2:
  dev->flags |= P2P_DEV_PREFER_PERSISTENT_GROUP |
   P2P_DEV_PREFER_PERSISTENT_RECONN;
  break;
 }
}
