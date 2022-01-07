
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int R_IP; int R_CS; } ;
struct x86emu {TYPE_1__ x86; } ;


 int fetch_byte (struct x86emu*,int ,int ) ;

__attribute__((used)) static uint8_t
fetch_byte_imm(struct x86emu *emu)
{
 uint8_t fetched;

 fetched = fetch_byte(emu, emu->x86.R_CS, emu->x86.R_IP);
 emu->x86.R_IP++;
 return fetched;
}
