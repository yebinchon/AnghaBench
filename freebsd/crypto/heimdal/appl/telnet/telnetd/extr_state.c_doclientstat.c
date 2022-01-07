
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TELOPT_LINEMODE ;
 int WILL ;
 int clientstat (int ,int ,int ) ;

void
doclientstat(void)
{
    clientstat(TELOPT_LINEMODE, WILL, 0);
}
