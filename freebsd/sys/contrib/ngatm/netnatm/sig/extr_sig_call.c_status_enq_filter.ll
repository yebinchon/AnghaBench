; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_status_enq_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_status_enq_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sig = type { i64, i64, %struct.call* }
%struct.call = type { i32 }

@SIG_CALL = common dso_local global i64 0, align 8
@SIGC_SEND_STATUS_ENQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sig*, i8*)* @status_enq_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_enq_filter(%struct.sig* %0, i8* %1) #0 {
  %3 = alloca %struct.sig*, align 8
  %4 = alloca i8*, align 8
  store %struct.sig* %0, %struct.sig** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.sig*, %struct.sig** %3, align 8
  %6 = getelementptr inbounds %struct.sig, %struct.sig* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SIG_CALL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.call*
  %13 = load %struct.sig*, %struct.sig** %3, align 8
  %14 = getelementptr inbounds %struct.sig, %struct.sig* %13, i32 0, i32 2
  %15 = load %struct.call*, %struct.call** %14, align 8
  %16 = icmp eq %struct.call* %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct.sig*, %struct.sig** %3, align 8
  %19 = getelementptr inbounds %struct.sig, %struct.sig* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SIGC_SEND_STATUS_ENQ, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %17, %10, %2
  %24 = phi i1 [ false, %10 ], [ false, %2 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
