
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ch; } ;
typedef TYPE_1__ KEYLIST ;



__attribute__((used)) static int
v_key_cmp(
 const void *ap,
 const void *bp)
{
 return (((KEYLIST *)ap)->ch - ((KEYLIST *)bp)->ch);
}
