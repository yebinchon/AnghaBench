; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_combiner.c_combiner_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_combiner.c_combiner_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { void (i8*)*, i32, i8* }
%struct.combiner_softc = type { i32 }

@CIPSR = common dso_local global i32 0, align 4
@intr_map = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @combiner_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combiner_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.combiner_softc*, align 8
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
  %14 = bitcast i8* %13 to %struct.combiner_softc*
  store %struct.combiner_softc* %14, %struct.combiner_softc** %3, align 8
  %15 = load %struct.combiner_softc*, %struct.combiner_softc** %3, align 8
  %16 = load i32, i32* @CIPSR, align 4
  %17 = call i32 @READ4(%struct.combiner_softc* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %94, %1
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 32
  br i1 %20, label %21, label %97

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %10, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %93

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  %29 = sdiv i32 %28, 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %10, align 4
  %31 = srem i32 %30, 4
  %32 = mul nsw i32 %31, 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.combiner_softc*, %struct.combiner_softc** %3, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @ISTR(i32 %34)
  %36 = call i32 @READ4(%struct.combiner_softc* %33, i32 %35)
  store i32 %36, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %89, %27
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %92

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = shl i32 1, %44
  %46 = and i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %40
  %49 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @intr_map, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %49, i64 %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load void (i8*)*, void (i8*)** %57, align 8
  store void (i8*)* %58, void (i8*)** %4, align 8
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @intr_map, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %5, align 8
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @intr_map, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %71
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %48
  %82 = load void (i8*)*, void (i8*)** %4, align 8
  %83 = icmp ne void (i8*)* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load void (i8*)*, void (i8*)** %4, align 8
  %86 = load i8*, i8** %5, align 8
  call void %85(i8* %86)
  br label %87

87:                                               ; preds = %84, %81, %48
  br label %88

88:                                               ; preds = %87, %40
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %37

92:                                               ; preds = %37
  br label %93

93:                                               ; preds = %92, %21
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %18

97:                                               ; preds = %18
  ret void
}

declare dso_local i32 @READ4(%struct.combiner_softc*, i32) #1

declare dso_local i32 @ISTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
