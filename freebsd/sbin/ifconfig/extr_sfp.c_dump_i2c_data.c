
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct i2c_info {scalar_t__ error; } ;
typedef int buf ;


 int MIN (int,scalar_t__) ;
 int fprintf (int ,char*) ;
 int memset (unsigned char*,int ,int) ;
 int printf (char*,...) ;
 int read_i2c (struct i2c_info*,scalar_t__,scalar_t__,int,unsigned char*) ;
 int stderr ;

__attribute__((used)) static void
dump_i2c_data(struct i2c_info *ii, uint8_t addr, uint8_t off, uint8_t len)
{
 unsigned char buf[16];
 int i, read;

 while (len > 0) {
  memset(buf, 0, sizeof(buf));
  read = MIN(sizeof(buf), len);
  read_i2c(ii, addr, off, read, buf);
  if (ii->error != 0) {
   fprintf(stderr, "Error reading i2c info\n");
   return;
  }

  printf("\t");
  for (i = 0; i < read; i++)
   printf("%02X ", buf[i]);
  printf("\n");
  len -= read;
  off += read;
 }
}
