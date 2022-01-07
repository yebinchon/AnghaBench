
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;





 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int Z_SYNC_FLUSH ;

__attribute__((used)) static int
getstate(enum bufferevent_flush_mode state)
{
 switch (state) {
 case 130:
  return Z_FINISH;
 case 129:
  return Z_SYNC_FLUSH;
 case 128:
 default:
  return Z_NO_FLUSH;
 }
}
