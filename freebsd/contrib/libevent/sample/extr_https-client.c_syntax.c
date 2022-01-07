
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char*,int ) ;
 int stderr ;

__attribute__((used)) static void
syntax(void)
{
 fputs("Syntax:\n", stderr);
 fputs("   https-client -url <https-url> [-data data-file.bin] [-ignore-cert] [-retries num] [-timeout sec] [-crt crt]\n", stderr);
 fputs("Example:\n", stderr);
 fputs("   https-client -url https://ip.appspot.com/\n", stderr);
}
