
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db_look_token ;

void
db_unread_token(int t)
{
 db_look_token = t;
}
