
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ShellText ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void initText(ShellText *p){
  memset(p, 0, sizeof(*p));
}
