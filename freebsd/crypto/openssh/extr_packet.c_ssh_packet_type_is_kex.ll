; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_type_is_kex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_type_is_kex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSH2_MSG_TRANSPORT_MIN = common dso_local global i64 0, align 8
@SSH2_MSG_TRANSPORT_MAX = common dso_local global i64 0, align 8
@SSH2_MSG_SERVICE_REQUEST = common dso_local global i64 0, align 8
@SSH2_MSG_SERVICE_ACCEPT = common dso_local global i64 0, align 8
@SSH2_MSG_EXT_INFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ssh_packet_type_is_kex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssh_packet_type_is_kex(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @SSH2_MSG_TRANSPORT_MIN, align 8
  %5 = icmp sge i64 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @SSH2_MSG_TRANSPORT_MAX, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @SSH2_MSG_SERVICE_REQUEST, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @SSH2_MSG_SERVICE_ACCEPT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @SSH2_MSG_EXT_INFO, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %18, %14, %10, %6, %1
  %23 = phi i1 [ false, %14 ], [ false, %10 ], [ false, %6 ], [ false, %1 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
