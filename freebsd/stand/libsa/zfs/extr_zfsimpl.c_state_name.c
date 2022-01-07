
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vdev_state_t ;



__attribute__((used)) static const char *
state_name(vdev_state_t state)
{
 static const char* names[] = {
  "UNKNOWN",
  "CLOSED",
  "OFFLINE",
  "REMOVED",
  "CANT_OPEN",
  "FAULTED",
  "DEGRADED",
  "ONLINE"
 };
 return names[state];
}
