
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct autr_ta {int pending_count; int fetched; } ;



__attribute__((used)) static void
seen_trustanchor(struct autr_ta* ta, uint8_t seen)
{
 ta->fetched = seen;
 if(ta->pending_count < 250)
  ta->pending_count++;
}
