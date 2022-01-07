
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pt_mapped_section {int dummy; } ;


 scalar_t__ pt_msec_begin (struct pt_mapped_section const*) ;
 scalar_t__ pt_msec_end (struct pt_mapped_section const*) ;

__attribute__((used)) static inline int pt_blk_is_in_section(const struct pt_mapped_section *msec,
           uint64_t ip)
{
 uint64_t begin, end;

 begin = pt_msec_begin(msec);
 end = pt_msec_end(msec);

 return (begin <= ip && ip < end);
}
