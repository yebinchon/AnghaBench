; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_timer.c_DELAY.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_timer.c_DELAY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@rt1310_timecounter = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@rt1310_timer_initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DELAY(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rt1310_timecounter, i32 0, i32 0), align 4
  %8 = sdiv i32 %7, 1000000
  %9 = add nsw i32 %8, 1
  %10 = load i32, i32* %2, align 4
  %11 = mul nsw i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @rt1310_timer_initialized, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %27, %14
  %16 = load i32, i32* %2, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  store i64 100, i64* %3, align 8
  br label %19

19:                                               ; preds = %23, %18
  %20 = load i64, i64* %3, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %3, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %3, align 8
  br label %19

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %2, align 4
  br label %15

30:                                               ; preds = %15
  br label %55

31:                                               ; preds = %1
  %32 = call i32 (...) @TSENTER()
  %33 = call i64 @rt1310_get_timecount(%struct.TYPE_3__* @rt1310_timecounter)
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %44, %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = call i64 @rt1310_get_timecount(%struct.TYPE_3__* @rt1310_timecounter)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, i64* %4, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %4, align 8
  %47 = sub nsw i64 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  %52 = load i64, i64* %5, align 8
  store i64 %52, i64* %4, align 8
  br label %34

53:                                               ; preds = %34
  %54 = call i32 (...) @TSEXIT()
  br label %55

55:                                               ; preds = %53, %30
  ret void
}

declare dso_local i32 @TSENTER(...) #1

declare dso_local i64 @rt1310_get_timecount(%struct.TYPE_3__*) #1

declare dso_local i32 @TSEXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
