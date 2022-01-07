
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CPU_CONFIG ;
 int CPU_CONFIG_DC_PREF ;
 int CPU_CONFIG_IC_PREF ;
 int CPU_CONTROL ;
 int CPU_CONTROL_L2_MODE ;
 int CPU_CONTROL_L2_SIZE ;
 int CPU_L2_CONFIG ;
 int CPU_L2_CONFIG_MODE ;
 scalar_t__ bootverbose ;
 int get_cpu_freq () ;
 int get_tclk () ;
 int printf (char*,...) ;
 int read_cpu_ctrl (int ) ;

__attribute__((used)) static void
soc_identify(uint32_t d, uint32_t r)
{
 uint32_t size, mode, freq;
 const char *dev;
 const char *rev;

 printf("SOC: ");
 if (bootverbose)
  printf("(0x%4x:0x%02x) ", d, r);

 rev = "";
 switch (d) {
 case 144:
  dev = "Marvell 88F5181";
  if (r == 3)
   rev = "B1";
  break;
 case 143:
  dev = "Marvell 88F5182";
  if (r == 2)
   rev = "A2";
  break;
 case 142:
  dev = "Marvell 88F5281";
  if (r == 4)
   rev = "D0";
  else if (r == 5)
   rev = "D1";
  else if (r == 6)
   rev = "D2";
  break;
 case 141:
  dev = "Marvell 88F6281";
  if (r == 0)
   rev = "Z0";
  else if (r == 2)
   rev = "A0";
  else if (r == 3)
   rev = "A1";
  break;
 case 135:
  dev = "Marvell 88RC8180";
  break;
 case 134:
  dev = "Marvell 88RC9480";
  break;
 case 133:
  dev = "Marvell 88RC9580";
  break;
 case 139:
  dev = "Marvell 88F6781";
  if (r == 2)
   rev = "Y0";
  break;
 case 140:
  dev = "Marvell 88F6282";
  if (r == 0)
   rev = "A0";
  else if (r == 1)
   rev = "A1";
  break;
 case 136:
  dev = "Marvell 88F6828";
  break;
 case 137:
  dev = "Marvell 88F6820";
  break;
 case 138:
  dev = "Marvell 88F6810";
  break;
 case 131:
  dev = "Marvell MV78100 Z0";
  break;
 case 132:
  dev = "Marvell MV78100";
  break;
 case 130:
  dev = "Marvell MV78160";
  break;
 case 129:
  dev = "Marvell MV78260";
  break;
 case 128:
  dev = "Marvell MV78460";
  break;
 default:
  dev = "UNKNOWN";
  break;
 }

 printf("%s", dev);
 if (*rev != '\0')
  printf(" rev %s", rev);
 printf(", TClock %dMHz", get_tclk() / 1000 / 1000);
 freq = get_cpu_freq();
 if (freq != 0)
  printf(", Frequency %dMHz", freq / 1000 / 1000);
 printf("\n");

 mode = read_cpu_ctrl(CPU_CONFIG);
 printf("  Instruction cache prefetch %s, data cache prefetch %s\n",
     (mode & CPU_CONFIG_IC_PREF) ? "enabled" : "disabled",
     (mode & CPU_CONFIG_DC_PREF) ? "enabled" : "disabled");

 switch (d) {
 case 141:
 case 140:
  mode = read_cpu_ctrl(CPU_L2_CONFIG) & CPU_L2_CONFIG_MODE;
  printf("  256KB 4-way set-associative %s unified L2 cache\n",
      mode ? "write-through" : "write-back");
  break;
 case 132:
  mode = read_cpu_ctrl(CPU_CONTROL);
  size = mode & CPU_CONTROL_L2_SIZE;
  mode = mode & CPU_CONTROL_L2_MODE;
  printf("  %s set-associative %s unified L2 cache\n",
      size ? "256KB 4-way" : "512KB 8-way",
      mode ? "write-through" : "write-back");
  break;
 default:
  break;
 }
}
