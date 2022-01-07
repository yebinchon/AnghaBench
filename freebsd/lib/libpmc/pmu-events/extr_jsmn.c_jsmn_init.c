
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int toksuper; scalar_t__ toknext; scalar_t__ pos; } ;
typedef TYPE_1__ jsmn_parser ;



void jsmn_init(jsmn_parser *parser)
{
 parser->pos = 0;
 parser->toknext = 0;
 parser->toksuper = -1;
}
