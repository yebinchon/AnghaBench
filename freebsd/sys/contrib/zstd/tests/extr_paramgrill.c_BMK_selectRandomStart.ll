; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_BMK_selectRandomStart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_BMK_selectRandomStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_12__ = type { i32 }

@g_rand = common dso_local global i32 0, align 4
@NB_LEVELS_TRACKED = common dso_local global i32 0, align 4
@wlog_ind = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, i32, i32)* @BMK_selectRandomStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BMK_selectRandomStart(i32* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32 @FUZ_rand(i32* @g_rand)
  %13 = load i32, i32* @NB_LEVELS_TRACKED, align 4
  %14 = add nsw i32 %13, 1
  %15 = srem i32 %12, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @wlog_ind, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %19, %4
  %31 = call i32 (...) @randomParams()
  %32 = call i32 @pvalsToCParams(i32 %31)
  %33 = call i32 @cParamsToPVals(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64* @adjustParams(i32 %33, i32 %35, i32 0)
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i64* %36, i64** %37, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @playAround(i32* %38, %struct.TYPE_10__* %39, i64* %42, i32 %44, i32 %40)
  br label %59

46:                                               ; preds = %19
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %8, align 4
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @playAround(i32* %47, %struct.TYPE_10__* %48, i64* %55, i32 %57, i32 %53)
  br label %59

59:                                               ; preds = %46, %30
  ret void
}

declare dso_local i32 @FUZ_rand(i32*) #1

declare dso_local i64* @adjustParams(i32, i32, i32) #1

declare dso_local i32 @cParamsToPVals(i32) #1

declare dso_local i32 @pvalsToCParams(i32) #1

declare dso_local i32 @randomParams(...) #1

declare dso_local i32 @playAround(i32*, %struct.TYPE_10__*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
