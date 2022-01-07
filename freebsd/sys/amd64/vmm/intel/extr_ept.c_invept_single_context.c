
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct invept_desc {int dummy; } ;


 int INVEPT_TYPE_SINGLE_CONTEXT ;
 int invept (int ,struct invept_desc) ;

__attribute__((used)) static void
invept_single_context(void *arg)
{
 struct invept_desc desc = *(struct invept_desc *)arg;

 invept(INVEPT_TYPE_SINGLE_CONTEXT, desc);
}
