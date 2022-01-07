
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t const uint64_t ;



__attribute__((used)) static uint64_t time_win_to_unix(uint64_t win_time) {
 const size_t ns_in_sec = 10000000;
 const uint64_t sec_to_unix = 11644473600LL;
 return win_time / ns_in_sec - sec_to_unix;
}
