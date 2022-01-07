; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_getaddrlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_sctp_sys_calls.c_sctp_getaddrlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_assoc_value = type { i64 }

@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SCTP_GET_ADDR_LEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_getaddrlen(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_assoc_value, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds %struct.sctp_assoc_value, %struct.sctp_assoc_value* %7, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  store i32 8, i32* %6, align 4
  store i32 -1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IPPROTO_SCTP, align 4
  %16 = load i32, i32* @SCTP_GET_ADDR_LEN, align 4
  %17 = call i32 @getsockopt(i32 %14, i32 %15, i32 %16, %struct.sctp_assoc_value* %7, i32* %6)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @close(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.sctp_assoc_value, %struct.sctp_assoc_value* %7, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %22, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @getsockopt(i32, i32, i32, %struct.sctp_assoc_value*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
