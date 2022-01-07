; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [381 x i8] c"usage:\0Aeapol_test [-enWSv] -c<conf> [-a<AS IP>] [-p<AS port>] [-s<AS secret>]\\\0A           [-r<count>] [-t<timeout>] [-C<Connect-Info>] \\\0A           [-M<client MAC address>] [-o<server cert file] \\\0A           [-N<attr spec>] [-R<PC/SC reader>] [-P<PC/SC PIN>] \\\0A           [-A<client IP>] [-i<ifname>] [-T<ctrl_iface>]\0Aeapol_test scard\0Aeapol_test sim <PIN> <num triplets> [debug]\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [1428 x i8] c"options:\0A  -c<conf> = configuration file\0A  -a<AS IP> = IP address of the authentication server, default 127.0.0.1\0A  -p<AS port> = UDP port of the authentication server, default 1812\0A  -s<AS secret> = shared secret with the authentication server, default 'radius'\0A  -A<client IP> = IP address of the client, default: select automatically\0A  -r<count> = number of re-authentications\0A  -e = Request EAP-Key-Name\0A  -W = wait for a control interface monitor before starting\0A  -S = save configuration after authentication\0A  -n = no MPPE keys expected\0A  -v = show version\0A  -t<timeout> = sets timeout in seconds (default: 30 s)\0A  -C<Connect-Info> = RADIUS Connect-Info (default: CONNECT 11Mbps 802.11b)\0A  -M<client MAC address> = Set own MAC address (Calling-Station-Id,\0A                           default: 02:00:00:00:00:01)\0A  -o<server cert file> = Write received server certificate\0A                         chain to the specified file\0A  -N<attr spec> = send arbitrary attribute specified by:\0A                  attr_id:syntax:value or attr_id\0A                  attr_id - number id of the attribute\0A                  syntax - one of: s, d, x\0A                     s = string\0A                     d = integer\0A                     x = octet string\0A                  value - attribute value.\0A       When only attr_id is specified, NULL will be used as value.\0A       Multiple attributes can be specified by using the option several times.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([381 x i8], [381 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @printf(i8* getelementptr inbounds ([1428 x i8], [1428 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
