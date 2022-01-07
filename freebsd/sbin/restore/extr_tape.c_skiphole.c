
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXBSIZE ;
 void stub1 (char*,size_t) ;

__attribute__((used)) static void
skiphole(void (*skip)(char *, size_t), size_t *seekpos)
{
 char buf[MAXBSIZE];

 if (*seekpos > 0) {
  (*skip)(buf, *seekpos);
  *seekpos = 0;
 }
}
