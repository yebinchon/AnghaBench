; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/kirkwood/extr_kirkwood.c_get_tclk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/kirkwood/extr_kirkwood.c_get_tclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MV_DEV_88F6281 = common dso_local global i64 0, align 8
@TCLK_200MHZ = common dso_local global i64 0, align 8
@MV_DEV_88F6282 = common dso_local global i64 0, align 8
@TCLK_166MHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_tclk() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @soc_id(i64* %2, i64* %3)
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @MV_DEV_88F6281, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* %3, align 8
  %13 = icmp eq i64 %12, 3
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %8
  %15 = load i64, i64* @TCLK_200MHZ, align 8
  store i64 %15, i64* %1, align 8
  br label %24

16:                                               ; preds = %11, %0
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @MV_DEV_88F6282, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @TCLK_200MHZ, align 8
  store i64 %21, i64* %1, align 8
  br label %24

22:                                               ; preds = %16
  %23 = load i64, i64* @TCLK_166MHZ, align 8
  store i64 %23, i64* %1, align 8
  br label %24

24:                                               ; preds = %22, %20, %14
  %25 = load i64, i64* %1, align 8
  ret i64 %25
}

declare dso_local i32 @soc_id(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
