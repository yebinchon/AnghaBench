; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_find_dom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_optimize.c_find_dom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.block**, i32* }
%struct.block = type { i32, i64*, i32, %struct.block* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.block*)* @find_dom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_dom(%struct.TYPE_5__* %0, %struct.block* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.block*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.block* %1, %struct.block** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %22, %2
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %5, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %7, align 8
  store i32 -1, i32* %23, align 4
  br label %18

25:                                               ; preds = %18
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %33, %25
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.block*, %struct.block** %4, align 8
  %35 = getelementptr inbounds %struct.block, %struct.block* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 0, i64* %39, align 8
  br label %29

40:                                               ; preds = %29
  %41 = load %struct.block*, %struct.block** %4, align 8
  %42 = getelementptr inbounds %struct.block, %struct.block* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %98, %40
  %45 = load i32, i32* %5, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %101

47:                                               ; preds = %44
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load %struct.block**, %struct.block*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.block*, %struct.block** %50, i64 %52
  %54 = load %struct.block*, %struct.block** %53, align 8
  store %struct.block* %54, %struct.block** %6, align 8
  br label %55

55:                                               ; preds = %93, %47
  %56 = load %struct.block*, %struct.block** %6, align 8
  %57 = icmp ne %struct.block* %56, null
  br i1 %57, label %58, label %97

58:                                               ; preds = %55
  %59 = load %struct.block*, %struct.block** %6, align 8
  %60 = getelementptr inbounds %struct.block, %struct.block* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.block*, %struct.block** %6, align 8
  %63 = getelementptr inbounds %struct.block, %struct.block* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @SET_INSERT(i64* %61, i32 %64)
  %66 = load %struct.block*, %struct.block** %6, align 8
  %67 = call %struct.TYPE_6__* @JT(%struct.block* %66)
  %68 = icmp eq %struct.TYPE_6__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %93

70:                                               ; preds = %58
  %71 = load %struct.block*, %struct.block** %6, align 8
  %72 = call %struct.TYPE_6__* @JT(%struct.block* %71)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.block*, %struct.block** %6, align 8
  %76 = getelementptr inbounds %struct.block, %struct.block* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @SET_INTERSECT(i32 %74, i64* %77, i32 %80)
  %82 = load %struct.block*, %struct.block** %6, align 8
  %83 = call %struct.TYPE_7__* @JF(%struct.block* %82)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.block*, %struct.block** %6, align 8
  %87 = getelementptr inbounds %struct.block, %struct.block* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @SET_INTERSECT(i32 %85, i64* %88, i32 %91)
  br label %93

93:                                               ; preds = %70, %69
  %94 = load %struct.block*, %struct.block** %6, align 8
  %95 = getelementptr inbounds %struct.block, %struct.block* %94, i32 0, i32 3
  %96 = load %struct.block*, %struct.block** %95, align 8
  store %struct.block* %96, %struct.block** %6, align 8
  br label %55

97:                                               ; preds = %55
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %5, align 4
  br label %44

101:                                              ; preds = %44
  ret void
}

declare dso_local i32 @SET_INSERT(i64*, i32) #1

declare dso_local %struct.TYPE_6__* @JT(%struct.block*) #1

declare dso_local i32 @SET_INTERSECT(i32, i64*, i32) #1

declare dso_local %struct.TYPE_7__* @JF(%struct.block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
