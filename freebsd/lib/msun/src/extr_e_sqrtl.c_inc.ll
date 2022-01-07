; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_sqrtl.c_inc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_sqrtl.c_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80, [16 x i8] }
%struct.TYPE_2__ = type { i64, i64, i32 }

@LDBL_NBIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80)* @inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @inc(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca %union.IEEEl2bits, align 16
  store x86_fp80 %0, x86_fp80* %2, align 16
  %4 = load x86_fp80, x86_fp80* %2, align 16
  %5 = bitcast %union.IEEEl2bits* %3 to x86_fp80*
  store x86_fp80 %4, x86_fp80* %5, align 16
  %6 = bitcast %union.IEEEl2bits* %3 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 16
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %7, align 16
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = bitcast %union.IEEEl2bits* %3 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = bitcast %union.IEEEl2bits* %3 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 16
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 16
  %22 = load i64, i64* @LDBL_NBIT, align 8
  %23 = bitcast %union.IEEEl2bits* %3 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = or i64 %25, %22
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %17, %11
  br label %28

28:                                               ; preds = %27, %1
  %29 = bitcast %union.IEEEl2bits* %3 to x86_fp80*
  %30 = load x86_fp80, x86_fp80* %29, align 16
  ret x86_fp80 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
