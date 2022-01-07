
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dot_unlock (char*) ;

__attribute__((used)) static void
dotlock_cleanup(void* lockpath)
{
 dot_unlock((char*)lockpath);
}
