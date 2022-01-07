
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_ild {int dummy; } ;


 int prefix_decode (struct pt_ild*,int ,int ) ;

__attribute__((used)) static int decode(struct pt_ild *ild)
{
 return prefix_decode(ild, 0, 0);
}
