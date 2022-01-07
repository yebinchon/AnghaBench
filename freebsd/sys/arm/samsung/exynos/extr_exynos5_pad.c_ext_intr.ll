; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pad.c_ext_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pad.c_ext_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, void (i8*)*, i8* }
%struct.pad_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i32 }

@intr_map = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ext_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pad_softc*, align 8
  %4 = alloca void (i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.pad_softc*
  store %struct.pad_softc* %14, %struct.pad_softc** %3, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %134, %1
  %16 = load %struct.pad_softc*, %struct.pad_softc** %3, align 8
  %17 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %137

25:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  %26 = load %struct.pad_softc*, %struct.pad_softc** %3, align 8
  %27 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  %34 = load %struct.pad_softc*, %struct.pad_softc** %3, align 8
  %35 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %25
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %134

47:                                               ; preds = %25
  %48 = load %struct.pad_softc*, %struct.pad_softc** %3, align 8
  %49 = load %struct.pad_softc*, %struct.pad_softc** %3, align 8
  %50 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pad_softc*, %struct.pad_softc** %3, align 8
  %58 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @READ4(%struct.pad_softc* %48, i32 %56, i64 %64)
  store i32 %65, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %104, %47
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = shl i32 1, %72
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %70
  store i32 1, i32* %7, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intr_map, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %102

87:                                               ; preds = %76
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intr_map, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load void (i8*)*, void (i8*)** %92, align 8
  store void (i8*)* %93, void (i8*)** %4, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @intr_map, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %5, align 8
  %100 = load void (i8*)*, void (i8*)** %4, align 8
  %101 = load i8*, i8** %5, align 8
  call void %100(i8* %101)
  br label %102

102:                                              ; preds = %87, %76
  br label %103

103:                                              ; preds = %102, %70
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %66

107:                                              ; preds = %66
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  %111 = load %struct.pad_softc*, %struct.pad_softc** %3, align 8
  %112 = load %struct.pad_softc*, %struct.pad_softc** %3, align 8
  %113 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.pad_softc*, %struct.pad_softc** %3, align 8
  %121 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @WRITE4(%struct.pad_softc* %111, i32 %119, i64 %127, i32 %128)
  br label %130

130:                                              ; preds = %110, %107
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %130, %43
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %15

137:                                              ; preds = %15
  ret void
}

declare dso_local i32 @READ4(%struct.pad_softc*, i32, i64) #1

declare dso_local i32 @WRITE4(%struct.pad_softc*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
