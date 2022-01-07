
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ch ;


 void db_capture_write (char*,int) ;

void
db_capture_writech(char ch)
{

 return (db_capture_write(&ch, sizeof(ch)));
}
