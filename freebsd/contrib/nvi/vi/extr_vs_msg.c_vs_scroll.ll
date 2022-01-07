; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_msg.c_vs_scroll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_msg.c_vs_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*, i64, i32)*, i32 (%struct.TYPE_16__*)* }
%struct.TYPE_15__ = type { i64, i64 }

@q = common dso_local global i32 0, align 4
@SCROLL_W_QUIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32*, i64)* @vs_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vs_scroll(%struct.TYPE_16__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %7, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = call %struct.TYPE_15__* @VIP(%struct.TYPE_16__* %12)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %8, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = call i32 @IS_ONELINE(%struct.TYPE_16__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %63, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load i32 (%struct.TYPE_16__*, i64, i32)*, i32 (%struct.TYPE_16__*, i64, i32)** %19, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %17
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = call i64 @LASTLINE(%struct.TYPE_16__* %30)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  br label %37

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi i64 [ %35, %29 ], [ 0, %36 ]
  %39 = call i32 %20(%struct.TYPE_16__* %21, i64 %38, i32 0)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 2
  %42 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %41, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %44 = call i32 %42(%struct.TYPE_16__* %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = load i32, i32* @q, align 4
  %47 = call i32* @TAILQ_NEXT(%struct.TYPE_16__* %45, i32 %46)
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %37
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_16__*, i64, i32)*, i32 (%struct.TYPE_16__*, i64, i32)** %51, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = call i64 @LASTLINE(%struct.TYPE_16__* %54)
  %56 = call i32 %52(%struct.TYPE_16__* %53, i64 %55, i32 0)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %58, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = call i32 %59(%struct.TYPE_16__* %60)
  br label %62

62:                                               ; preds = %49, %37
  br label %63

63:                                               ; preds = %62, %3
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @SCROLL_W_QUIT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %81

76:                                               ; preds = %67, %63
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @vs_wait(%struct.TYPE_16__* %77, i32* %78, i64 %79)
  br label %81

81:                                               ; preds = %76, %75
  ret void
}

declare dso_local %struct.TYPE_15__* @VIP(%struct.TYPE_16__*) #1

declare dso_local i32 @IS_ONELINE(%struct.TYPE_16__*) #1

declare dso_local i64 @LASTLINE(%struct.TYPE_16__*) #1

declare dso_local i32* @TAILQ_NEXT(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vs_wait(%struct.TYPE_16__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
