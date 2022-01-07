
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_ild {int dummy; } ;


 int prefix_next (struct pt_ild*,int ,int ) ;

__attribute__((used)) static int prefix_ignore(struct pt_ild *ild, uint8_t length, uint8_t rex)
{
 (void) rex;

 return prefix_next(ild, length, 0);
}
