
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cloudabi_signal_t ;
 int nitems (scalar_t__ const*) ;

__attribute__((used)) static cloudabi_signal_t
convert_signal(int sig)
{
 static const cloudabi_signal_t signals[] = {
  [153] = 179,
  [152] = 178,
  [151] = 177,
  [150] = 176,
  [149] = 175,
  [148] = 174,
  [147] = 173,
  [146] = 172,
  [145] = 171,
  [144] = 170,
  [143] = 169,
  [142] = 168,
  [141] = 167,
  [140] = 166,
  [139] = 165,
  [138] = 164,
  [137] = 163,
  [136] = 162,
  [135] = 161,
  [134] = 160,
  [133] = 159,
  [132] = 158,
  [131] = 157,
  [130] = 156,
  [129] = 155,
  [128] = 154,
 };


 if (sig < 0 || sig >= nitems(signals) || signals[sig] == 0)
  return (153);
 return (signals[sig]);
}
