; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_tg2.c_WWV_Second.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_tg2.c_WWV_Second.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tone = common dso_local global i32 0, align 4
@HIGH = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@LOW = common dso_local global i32 0, align 4
@TotalCyclesRemoved = common dso_local global i32 0, align 4
@Debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"\0A* Shorter Second: \00", align 1
@TotalCyclesAdded = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"\0A* Longer Second: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WWV_Second(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @tone, align 4
  %6 = load i32, i32* @HIGH, align 4
  %7 = call i32 @peep(i32 5, i32 %5, i32 %6)
  %8 = load i32, i32* @tone, align 4
  %9 = load i32, i32* @OFF, align 4
  %10 = call i32 @peep(i32 25, i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 %11, 30
  %13 = load i32, i32* @LOW, align 4
  %14 = call i32 @peep(i32 %12, i32 100, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 990, %18
  %20 = load i32, i32* @OFF, align 4
  %21 = call i32 @peep(i32 %19, i32 100, i32 %20)
  %22 = load i32, i32* @TotalCyclesRemoved, align 4
  %23 = add nsw i32 %22, 10
  store i32 %23, i32* @TotalCyclesRemoved, align 4
  %24 = load i64, i64* @Debug, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %17
  br label %50

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 1010, %33
  %35 = load i32, i32* @OFF, align 4
  %36 = call i32 @peep(i32 %34, i32 100, i32 %35)
  %37 = load i32, i32* @TotalCyclesAdded, align 4
  %38 = add nsw i32 %37, 10
  store i32 %38, i32* @TotalCyclesAdded, align 4
  %39 = load i64, i64* @Debug, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %32
  br label %49

44:                                               ; preds = %29
  %45 = load i32, i32* %3, align 4
  %46 = sub nsw i32 1000, %45
  %47 = load i32, i32* @OFF, align 4
  %48 = call i32 @peep(i32 %46, i32 100, i32 %47)
  br label %49

49:                                               ; preds = %44, %43
  br label %50

50:                                               ; preds = %49, %28
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
