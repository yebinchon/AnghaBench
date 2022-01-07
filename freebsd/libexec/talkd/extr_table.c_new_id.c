
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ID ;

int
new_id(void)
{
 static int current_id = 0;

 current_id = (current_id + 1) % MAX_ID;

 if (current_id == 0)
  current_id = 1;
 return (current_id);
}
