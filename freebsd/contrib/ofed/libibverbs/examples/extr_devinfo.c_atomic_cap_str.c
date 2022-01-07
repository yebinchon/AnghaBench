
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ibv_atomic_cap { ____Placeholder_ibv_atomic_cap } ibv_atomic_cap ;






__attribute__((used)) static const char *atomic_cap_str(enum ibv_atomic_cap atom_cap)
{
 switch (atom_cap) {
 case 128: return "ATOMIC_NONE";
 case 129: return "ATOMIC_HCA";
 case 130: return "ATOMIC_GLOB";
 default: return "invalid atomic capability";
 }
}
