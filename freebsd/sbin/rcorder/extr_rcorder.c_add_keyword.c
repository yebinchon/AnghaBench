
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int keyword_list; } ;
typedef TYPE_1__ filenode ;


 int strnode_add (int *,char*,TYPE_1__*) ;

__attribute__((used)) static void
add_keyword(filenode *fnode, char *s)
{

 strnode_add(&fnode->keyword_list, s, fnode);
}
