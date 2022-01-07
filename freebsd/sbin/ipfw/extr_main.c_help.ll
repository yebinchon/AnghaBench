; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_main.c_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_main.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1959 x i8] c"ipfw syntax summary (but please do read the ipfw(8) manpage):\0A\0A\09ipfw [-abcdefhnNqStTv] <command>\0A\0Awhere <command> is one of the following:\0A\0Aadd [num] [set N] [prob x] RULE-BODY\0A{pipe|queue} N config PIPE-BODY\0A[pipe|queue] {zero|delete|show} [N{,N}]\0Anat N config {ip IPADDR|if IFNAME|log|deny_in|same_ports|unreg_only|reset|\0A\09\09reverse|proxy_only|redirect_addr linkspec|\0A\09\09redirect_port linkspec|redirect_proto linkspec}\0Aset [disable N... enable N...] | move [rule] X to Y | swap X Y | show\0Aset N {show|list|zero|resetlog|delete} [N{,N}] | flush\0Atable N {add ip[/bits] [value] | delete ip[/bits] | flush | list}\0Atable all {flush | list}\0A\0ARULE-BODY:\09check-state [PARAMS] | ACTION [PARAMS] ADDR [OPTION_LIST]\0AACTION:\09check-state | allow | count | deny | unreach{,6} CODE |\0A               skipto N | {divert|tee} PORT | forward ADDR |\0A               pipe N | queue N | nat N | setfib FIB | reass\0APARAMS: \09[log [logamount LOGLIMIT]] [altq QUEUE_NAME]\0AADDR:\09\09[ MAC dst src ether_type ] \0A\09\09[ ip from IPADDR [ PORT ] to IPADDR [ PORTLIST ] ]\0A\09\09[ ipv6|ip6 from IP6ADDR [ PORT ] to IP6ADDR [ PORTLIST ] ]\0AIPADDR:\09[not] { any | me | ip/bits{x,y,z} | table(t[,v]) | IPLIST }\0AIP6ADDR:\09[not] { any | me | me6 | ip6/bits | IP6LIST }\0AIP6LIST:\09{ ip6 | ip6/bits }[,IP6LIST]\0AIPLIST:\09{ ip | ip/bits | ip:mask }[,IPLIST]\0AOPTION_LIST:\09OPTION [OPTION_LIST]\0AOPTION:\09bridged | diverted | diverted-loopback | diverted-output |\0A\09{dst-ip|src-ip} IPADDR | {dst-ip6|src-ip6|dst-ipv6|src-ipv6} IP6ADDR |\0A\09{dst-port|src-port} LIST |\0A\09estab | frag | {gid|uid} N | icmptypes LIST | in | out | ipid LIST |\0A\09iplen LIST | ipoptions SPEC | ipprecedence | ipsec | iptos SPEC |\0A\09ipttl LIST | ipversion VER | keep-state | layer2 | limit ... |\0A\09icmp6types LIST | ext6hdr LIST | flow-id N[,N] | fib FIB |\0A\09mac ... | mac-type LIST | proto LIST | {recv|xmit|via} {IF|IPADDR} |\0A\09setup | {tcpack|tcpseq|tcpwin} NN | tcpflags SPEC | tcpoptions SPEC |\0A\09tcpdatalen LIST | verrevpath | versrcreach | antispoof\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([1959 x i8], [1959 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @exit(i32 0) #3
  unreachable
}

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
