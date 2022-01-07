
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTRANGE_FIRST ;
 int PORTRANGE_LAST ;
 int get_int_via_sysctlbyname (int ) ;
 int portrange_first ;
 int portrange_last ;
 int printf (char*,int) ;
 int rand () ;
 int srand (unsigned int) ;

__attribute__((used)) static int
generate_random_port(int seed)
{
 int random_port;

 printf("Generating a random port with seed=%d\n", seed);
 if (portrange_first == 0) {
  portrange_first = get_int_via_sysctlbyname(PORTRANGE_FIRST);
  printf("Port range lower bound: %d\n", portrange_first);
 }

 if (portrange_last == 0) {
  portrange_last = get_int_via_sysctlbyname(PORTRANGE_LAST);
  printf("Port range upper bound: %d\n", portrange_last);
 }

 srand((unsigned)seed);

 random_port = rand() % (portrange_last - portrange_first) +
     portrange_first;

 printf("Random port generated: %d\n", random_port);
 return (random_port);
}
