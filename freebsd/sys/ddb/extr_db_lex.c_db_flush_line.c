
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* db_endlp ;
 void* db_line ;
 void* db_lp ;

__attribute__((used)) static void
db_flush_line()
{
 db_lp = db_line;
 db_endlp = db_line;
}
