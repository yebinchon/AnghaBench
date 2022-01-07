
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ DISK_HIGH ;
 scalar_t__ DISK_LOW ;
 scalar_t__ VOTE_HIGH ;
 scalar_t__ VOTE_LOW ;

__attribute__((used)) static int
is_ubik(uint32_t opcode)
{
 if ((opcode >= VOTE_LOW && opcode <= VOTE_HIGH) ||
     (opcode >= DISK_LOW && opcode <= DISK_HIGH))
  return(1);
 else
  return(0);
}
