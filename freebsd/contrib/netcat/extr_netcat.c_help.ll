; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netcat/extr_netcat.c_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netcat/extr_netcat.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"\09Command Summary:\0A\09\09-4\09\09Use IPv4\0A\09\09-6\09\09Use IPv6\0A\09\09-D\09\09Enable the debug socket option\0A\09\09-d\09\09Detach from stdin\0A\00", align 1
@.str.1 = private unnamed_addr constant [1023 x i8] c"\09\09-F\09\09Pass socket fd\0A\09\09-h\09\09This help text\0A\09\09-I length\09TCP receive buffer length\0A\09\09-i secs\09\09Delay interval for lines sent, ports scanned\0A\09\09-k\09\09Keep inbound sockets open for multiple connects\0A\09\09-l\09\09Listen mode, for inbound connects\0A\09\09-N\09\09Shutdown the network socket after EOF on stdin\0A\09\09-n\09\09Suppress name/port resolutions\0A\09\09--no-tcpopt\09Disable TCP options\0A\09\09-O length\09TCP send buffer length\0A\09\09-P proxyuser\09Username for proxy authentication\0A\09\09-p port\09\09Specify local port for remote connects\0A\09\09-r\09\09Randomize remote ports\0A\09\09-S\09\09Enable the TCP MD5 signature option\0A\09\09-s addr\09\09Local source address\0A\09\09-T toskeyword\09Set IP Type of Service\0A\09\09-t\09\09Answer TELNET negotiation\0A\09\09-U\09\09Use UNIX domain socket\0A\09\09-u\09\09UDP mode\0A\09\09-V rtable\09Specify alternate routing table\0A\09\09-v\09\09Verbose\0A\09\09-w secs\09\09Timeout for connects and final net reads\0A\09\09-X proto\09Proxy protocol: \224\22, \225\22 (SOCKS) or \22connect\22\0A\09\09-x addr[:port]\09Specify proxy address and port\0A\09\09-z\09\09Zero-I/O mode [used for scanning]\0A\09Port numbers can be individual or ranges: lo-hi [inclusive]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @help() #0 {
  %1 = call i32 @usage(i32 0)
  %2 = load i32, i32* @stderr, align 4
  %3 = call i32 @fprintf(i32 %2, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([1023 x i8], [1023 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

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
