; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-calm-fast.c_calm_fast_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-calm-fast.c_calm_fast_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.lladdr_info = type { i32, i32 (%struct.TYPE_5__*, i32)* }

@.str = private unnamed_addr constant [10 x i8] c"CALM FAST\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" src:%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"SrcNwref:%d; \00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"DstNwref:%d; \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"[|calm fast]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calm_fast_print(%struct.TYPE_5__* %0, i32* %1, i32 %2, %struct.lladdr_info* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lladdr_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.lladdr_info* %3, %struct.lladdr_info** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ND_TCHECK2(i32 %12, i32 2)
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %67

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 2
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32* %27, i32** %6, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([10 x i8]* @.str to %struct.TYPE_5__*))
  %30 = load %struct.lladdr_info*, %struct.lladdr_info** %8, align 8
  %31 = icmp ne %struct.lladdr_info* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %17
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = load %struct.lladdr_info*, %struct.lladdr_info** %8, align 8
  %35 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %34, i32 0, i32 1
  %36 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %35, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = load %struct.lladdr_info*, %struct.lladdr_info** %8, align 8
  %39 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %36(%struct.TYPE_5__* %37, i32 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to %struct.TYPE_5__*
  %44 = call i32 @ND_PRINT(%struct.TYPE_5__* %43)
  br label %45

45:                                               ; preds = %32, %17
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([3 x i8]* @.str.2 to %struct.TYPE_5__*))
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to %struct.TYPE_5__*
  %52 = call i32 @ND_PRINT(%struct.TYPE_5__* %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to %struct.TYPE_5__*
  %57 = call i32 @ND_PRINT(%struct.TYPE_5__* %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %45
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ND_DEFAULTPRINT(i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %45
  br label %70

67:                                               ; preds = %16
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([13 x i8]* @.str.5 to %struct.TYPE_5__*))
  br label %70

70:                                               ; preds = %67, %66
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
