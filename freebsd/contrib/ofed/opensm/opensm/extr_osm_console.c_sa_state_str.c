
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int osm_sa_state_t ;





__attribute__((used)) static const char *sa_state_str(osm_sa_state_t state)
{
 switch (state) {
 case 129:
  return "Init";
 case 128:
  return "Ready";
 }
 return "UNKNOWN";
}
