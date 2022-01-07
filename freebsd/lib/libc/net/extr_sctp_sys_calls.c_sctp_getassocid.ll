; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_getassocid.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_getassocid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sctp_paddrinfo = type { i32, i32 }

@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SCTP_GET_PEER_ADDR_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_getassocid(i32 %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sctp_paddrinfo, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 8, i32* %7, align 4
  %8 = call i32 @memset(%struct.sctp_paddrinfo* %6, i32 0, i32 8)
  %9 = getelementptr inbounds %struct.sctp_paddrinfo, %struct.sctp_paddrinfo* %6, i32 0, i32 1
  %10 = ptrtoint i32* %9 to i32
  %11 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memcpy(i32 %10, %struct.sockaddr* %11, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IPPROTO_SCTP, align 4
  %18 = load i32, i32* @SCTP_GET_PEER_ADDR_INFO, align 4
  %19 = call i64 @getsockopt(i32 %16, i32 %17, i32 %18, %struct.sctp_paddrinfo* %6, i32* %7)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.sctp_paddrinfo, %struct.sctp_paddrinfo* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %21
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @memset(%struct.sctp_paddrinfo*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockopt(i32, i32, i32, %struct.sctp_paddrinfo*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
