
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IBV_QPT_XRC_RECV ;

__attribute__((used)) static inline int is_xrc_tgt(int type)
{
 return type == IBV_QPT_XRC_RECV;
}
