; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_ccung.c_aw_ccung_reset_assert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_ccung.c_aw_ccung_reset_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_ccung_softc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"%sassert reset id %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"De\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"offset=%x Read %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"offset=%x Write %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @aw_ccung_reset_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_ccung_reset_assert(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aw_ccung_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.aw_ccung_softc* @device_get_softc(i32 %10)
  store %struct.aw_ccung_softc* %11, %struct.aw_ccung_softc** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %16 = load i64, i64* %6, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %8, align 8
  %21 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %3
  %25 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %8, align 8
  %26 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24, %3
  store i32 0, i32* %4, align 4
  br label %104

34:                                               ; preds = %24
  %35 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %8, align 8
  %36 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %35, i32 0, i32 1
  %37 = call i32 @mtx_lock(i32* %36)
  %38 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %8, align 8
  %39 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %8, align 8
  %40 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @CCU_READ4(%struct.aw_ccung_softc* %38, i8* %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %8, align 8
  %48 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %34
  %59 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %8, align 8
  %60 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 1, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %81

70:                                               ; preds = %34
  %71 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %8, align 8
  %72 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 1, %77
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %70, %58
  %82 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %8, align 8
  %83 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %88, i32 %89)
  %91 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %8, align 8
  %92 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %8, align 8
  %93 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @CCU_WRITE4(%struct.aw_ccung_softc* %91, i8* %98, i32 %99)
  %101 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %8, align 8
  %102 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %101, i32 0, i32 1
  %103 = call i32 @mtx_unlock(i32* %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %81, %33
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.aw_ccung_softc* @device_get_softc(i32) #1

declare dso_local i32 @dprintf(i8*, i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @CCU_READ4(%struct.aw_ccung_softc*, i8*) #1

declare dso_local i32 @CCU_WRITE4(%struct.aw_ccung_softc*, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
