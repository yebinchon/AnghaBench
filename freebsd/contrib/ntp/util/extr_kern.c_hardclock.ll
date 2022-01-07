; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_kern.c_hardclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_kern.c_hardclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@tick = common dso_local global i32 0, align 4
@time_adj = common dso_local global i64 0, align 8
@time_phase = common dso_local global i32 0, align 4
@FINEUSEC = common dso_local global i32 0, align 4
@SHIFT_SCALE = common dso_local global i32 0, align 4
@timex = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hardclock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @tick, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i64, i64* @time_adj, align 8
  %5 = load i32, i32* @time_phase, align 4
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, %4
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* @time_phase, align 4
  %9 = load i32, i32* @time_phase, align 4
  %10 = load i32, i32* @FINEUSEC, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %0
  %14 = load i32, i32* @time_phase, align 4
  %15 = sub nsw i32 0, %14
  %16 = load i32, i32* @SHIFT_SCALE, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @SHIFT_SCALE, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* @time_phase, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* @time_phase, align 4
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %2, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %0
  %27 = load i32, i32* @time_phase, align 4
  %28 = load i32, i32* @FINEUSEC, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32, i32* @time_phase, align 4
  %32 = load i32, i32* @SHIFT_SCALE, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @SHIFT_SCALE, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* @time_phase, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* @time_phase, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %30, %26
  br label %43

43:                                               ; preds = %42, %13
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timex, i32 0, i32 0), align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timex, i32 0, i32 0), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
