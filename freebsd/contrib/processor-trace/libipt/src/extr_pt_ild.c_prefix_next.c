
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct pt_ild {int dummy; } ;


 int prefix_decode (struct pt_ild*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline int prefix_next(struct pt_ild *ild, uint8_t length, uint8_t rex)
{
 return prefix_decode(ild, length + 1, rex);
}
