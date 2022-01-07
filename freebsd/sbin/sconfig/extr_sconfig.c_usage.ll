; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sconfig/extr_sconfig.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2086 x i8] c"Serial Adapter Configuration Utility\0ACopyright (C) 1998-2005 Cronyx Engineering.\0ASee also man sconfig (8)\0AUsage:\0A\09sconfig [-aimsxeftuc] [device [parameters ...]]\0A\0AOptions:\0A\09<no options>\09\09 -- print channel options\0A\09-a\09\09\09 -- print all settings of the channel\0A\09-i\09\09\09 -- print network interface status\0A\09-m\09\09\09 -- print modem signal status\0A\09-s\09\09\09 -- print channel statistics\0A\09-x\09\09\09 -- print extended channel statistics\0A\09-e\09\09\09 -- print short E1/G703 statistics\0A\09-f\09\09\09 -- print full E1/G703 statistics\0A\09-t\09\09\09 -- print short E3/T3/STS-1 statistics\0A\09-u\09\09\09 -- print full E3/T3/STS-1 statistics\0A\09-c\09\09\09 -- clear statistics\0A\0AParameters:\0A\09<number>\09\09 -- baud rate, internal clock\0A\09extclock\09\09 -- external clock (default)\0A\0AProtocol options:\0A\09async\09\09\09 -- asynchronous protocol\0A\09sync\09\09\09 -- synchronous protocol\0A\09cisco\09\09\09 -- Cisco/HDLC protocol\0A\09fr\09\09\09 -- Frame Relay protocol\0A\09    dlci<number>\09 -- Add new DLCI\0A\09ppp\09\09\09 -- PPP protocol\0A\09rbrg\09\09\09 -- Remote bridge\0A\09raw\09\09\09 -- raw HDLC protocol\0A\09packet\09\09\09 -- packetized HDLC protocol\0A\09idle\09\09\09 -- no protocol\0A\0AInterface options:\0A\09port={rs232,v35,rs449}\09 -- port type (for old models of Sigma)\0A\09cfg={A,B,C}\09\09 -- adapter configuration\0A\09loop={on,off}\09\09 -- internal loopback\0A\09rloop={on,off}\09\09 -- remote loopback\0A\09dpll={on,off}\09\09 -- DPLL mode\0A\09nrzi={on,off}\09\09 -- NRZI encoding\0A\09invclk={on,off}\09\09 -- invert receive and transmit clock\0A\09invrclk={on,off}\09 -- invert receive clock\0A\09invtclk={on,off}\09 -- invert transmit clock\0A\09higain={on,off}\09\09 -- E1 high non linear input sensitivity \0A\09\09\09\09    (long line)\0A\09monitor={on,off}\09 -- E1 high linear input sensitivity \0A\09\09\09\09    (interception mode)\0A\09phony={on,off}\09\09 -- E1 telepnony mode\0A\09unfram={on,off}\09\09 -- E1 unframed mode\0A\09scrambler={on,off}\09 -- G.703 scrambling mode\0A\09use16={on,off}\09\09 -- E1 timeslot 16 usage\0A\09crc4={on,off}\09\09 -- E1 CRC4 mode\0A\09ami={on,off}\09\09 -- E1 AMI or HDB3 line code\0A\09mtu={size}\09\09 -- set MTU in bytes\0A\09syn={int,rcv,rcvX}\09 -- G.703 transmit clock\0A\09ts=...\09\09\09 -- E1 timeslots\0A\09pass=...\09\09 -- E1 subchannel timeslots\0A\09dir=<num>\09\09 -- connect channel to link<num>\0A\09debug={0,1,2}\09\09 -- enable/disable debug messages\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([2086 x i8], [2086 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
