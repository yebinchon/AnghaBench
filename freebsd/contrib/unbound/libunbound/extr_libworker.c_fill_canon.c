
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ub_result {int canonname; } ;


 int dname_str (int *,char*) ;
 int strdup (char*) ;

__attribute__((used)) static int
fill_canon(struct ub_result* res, uint8_t* s)
{
 char buf[255+2];
 dname_str(s, buf);
 res->canonname = strdup(buf);
 return res->canonname != 0;
}
