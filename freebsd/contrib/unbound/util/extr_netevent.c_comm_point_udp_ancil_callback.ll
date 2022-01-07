; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_udp_ancil_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_udp_ancil_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [103 x i8] c"recvmsg: No support for IPV6_PKTINFO; IP_PKTINFO or IP_RECVDSTADDR. Please disable interface-automatic\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@IPV6_PKTINFO = common dso_local global i64 0, align 8
@IP_PKTINFO = common dso_local global i64 0, align 8
@IP_RECVDSTADDR = common dso_local global i64 0, align 8
@NETEVENT_NOERROR = common dso_local global i32 0, align 4
@NUM_UDP_PER_SELECT = common dso_local global i32 0, align 4
@UB_EV_READ = common dso_local global i16 0, align 2
@VERB_ALGO = common dso_local global i64 0, align 8
@comm_udp = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_point_udp_ancil_callback(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i16, i16* %5, align 2
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @fatal_exit(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fatal_exit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
