; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_process_cmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_process_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__, i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.cmsghdr* }
%struct.cmsghdr = type { i64, i64 }

@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@IPV6_PKTINFO = common dso_local global i64 0, align 8
@ISC_MSGSET_SOCKET = common dso_local global i32 0, align 4
@ISC_MSG_IFRECEIVED = common dso_local global i32 0, align 4
@ISC_MSG_PROCESSCMSG = common dso_local global i32 0, align 4
@ISC_SOCKEVENTATTR_CTRUNC = common dso_local global i32 0, align 4
@ISC_SOCKEVENTATTR_MULTICAST = common dso_local global i32 0, align 4
@ISC_SOCKEVENTATTR_PKTINFO = common dso_local global i32 0, align 4
@ISC_SOCKEVENTATTR_TIMESTAMP = common dso_local global i32 0, align 4
@ISC_SOCKEVENTATTR_TRUNC = common dso_local global i32 0, align 4
@MSG_CTRUNC = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@SCM_TIMESTAMP = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i64 0, align 8
@TRACE = common dso_local global i32 0, align 4
@isc_msgcat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msghdr*, %struct.msghdr*, %struct.msghdr*)* @process_cmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_cmsg(%struct.msghdr* %0, %struct.msghdr* %1, %struct.msghdr* %2) #0 {
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca %struct.msghdr*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store %struct.msghdr* %2, %struct.msghdr** %6, align 8
  %7 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %8 = call i32 @UNUSED(%struct.msghdr* %7)
  %9 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %10 = call i32 @UNUSED(%struct.msghdr* %9)
  %11 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %12 = call i32 @UNUSED(%struct.msghdr* %11)
  ret void
}

declare dso_local i32 @UNUSED(%struct.msghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
