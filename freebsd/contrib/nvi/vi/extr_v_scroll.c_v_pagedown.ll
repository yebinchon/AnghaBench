; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_scroll.c_v_pagedown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_scroll.c_v_pagedown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@VC_C1SET = common dso_local global i32 0, align 4
@O_WINDOW = common dso_local global i32 0, align 4
@CNTRL_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_pagedown(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %8 = load i32, i32* @VC_C1SET, align 4
  %9 = call i64 @F_ISSET(%struct.TYPE_9__* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ %14, %11 ], [ 1, %15 ]
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = call i64 @IS_SPLIT(%struct.TYPE_10__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = load i32, i32* @O_WINDOW, align 4
  %27 = call i32 @O_VAL(%struct.TYPE_10__* %25, i32 %26)
  %28 = call i32 @MIN(i32 %24, i32 %27)
  br label %33

29:                                               ; preds = %16
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = load i32, i32* @O_WINDOW, align 4
  %32 = call i32 @O_VAL(%struct.TYPE_10__* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %21
  %34 = phi i32 [ %28, %21 ], [ %32, %29 ]
  %35 = mul nsw i32 %17, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sle i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 2
  br label %42

42:                                               ; preds = %39, %38
  %43 = phi i32 [ 1, %38 ], [ %41, %39 ]
  store i32 %43, i32* %6, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CNTRL_F, align 4
  %49 = call i64 @vs_sm_scroll(%struct.TYPE_10__* %44, i32* %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %58

52:                                               ; preds = %42
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %51
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @F_ISSET(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @IS_SPLIT(%struct.TYPE_10__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @O_VAL(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @vs_sm_scroll(%struct.TYPE_10__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
