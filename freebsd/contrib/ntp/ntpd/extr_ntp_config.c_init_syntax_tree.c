
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mdnstries; } ;
typedef TYPE_1__ config_tree ;


 int ZERO (TYPE_1__) ;

__attribute__((used)) static void
init_syntax_tree(
 config_tree *ptree
 )
{
 ZERO(*ptree);
 ptree->mdnstries = 5;
}
