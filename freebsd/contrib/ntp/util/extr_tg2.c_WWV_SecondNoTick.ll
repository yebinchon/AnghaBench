; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_tg2.c_WWV_SecondNoTick.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_tg2.c_WWV_SecondNoTick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tone = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@LOW = common dso_local global i32 0, align 4
@TotalCyclesRemoved = common dso_local global i32 0, align 4
@Debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"\0A* Shorter Second: \00", align 1
@TotalCyclesAdded = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"\0A* Longer Second: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WWV_SecondNoTick(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @tone, align 4
  %6 = load i32, i32* @OFF, align 4
  %7 = call i32 @peep(i32 30, i32 %5, i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 %8, 30
  %10 = load i32, i32* @LOW, align 4
  %11 = call i32 @peep(i32 %9, i32 100, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 990, %15
  %17 = load i32, i32* @OFF, align 4
  %18 = call i32 @peep(i32 %16, i32 100, i32 %17)
  %19 = load i32, i32* @TotalCyclesRemoved, align 4
  %20 = add nsw i32 %19, 10
  store i32 %20, i32* @TotalCyclesRemoved, align 4
  %21 = load i64, i64* @Debug, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %14
  br label %47

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 1010, %30
  %32 = load i32, i32* @OFF, align 4
  %33 = call i32 @peep(i32 %31, i32 100, i32 %32)
  %34 = load i32, i32* @TotalCyclesAdded, align 4
  %35 = add nsw i32 %34, 10
  store i32 %35, i32* @TotalCyclesAdded, align 4
  %36 = load i64, i64* @Debug, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %29
  br label %46

41:                                               ; preds = %26
  %42 = load i32, i32* %3, align 4
  %43 = sub nsw i32 1000, %42
  %44 = load i32, i32* @OFF, align 4
  %45 = call i32 @peep(i32 %43, i32 100, i32 %44)
  br label %46

46:                                               ; preds = %41, %40
  br label %47

47:                                               ; preds = %46, %25
  ret void
}

declare dso_local i32 @peep(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
