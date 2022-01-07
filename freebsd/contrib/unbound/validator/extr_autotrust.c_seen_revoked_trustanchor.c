
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct autr_ta {int revoked; } ;



__attribute__((used)) static void
seen_revoked_trustanchor(struct autr_ta* ta, uint8_t revoked)
{
 ta->revoked = revoked;
}
