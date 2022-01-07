
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct iter_forwards {int dummy; } ;
struct delegpt {int dummy; } ;


 struct delegpt* forwards_lookup (struct iter_forwards*,int *,int ) ;

struct delegpt*
forwards_lookup_root(struct iter_forwards* fwd, uint16_t qclass)
{
 uint8_t root = 0;
 return forwards_lookup(fwd, &root, qclass);
}
