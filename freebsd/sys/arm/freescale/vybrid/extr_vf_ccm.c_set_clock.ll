; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_ccm.c_set_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_ccm.c_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.clk*, i32* }
%struct.clk = type { i64, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.ccm_softc = type { i32 }

@clock_map = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccm_softc*, i8*)* @set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_clock(%struct.ccm_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.ccm_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ccm_softc* %0, %struct.ccm_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %105, %2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock_map, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %108

16:                                               ; preds = %8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock_map, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strcmp(i32* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %104

26:                                               ; preds = %16
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clock_map, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.clk*, %struct.clk** %31, align 8
  store %struct.clk* %32, %struct.clk** %5, align 8
  %33 = load %struct.clk*, %struct.clk** %5, align 8
  %34 = getelementptr inbounds %struct.clk, %struct.clk* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %26
  %38 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %39 = load %struct.clk*, %struct.clk** %5, align 8
  %40 = getelementptr inbounds %struct.clk, %struct.clk* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @READ4(%struct.ccm_softc* %38, i64 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.clk*, %struct.clk** %5, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.clk*, %struct.clk** %5, align 8
  %47 = getelementptr inbounds %struct.clk, %struct.clk* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %45, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.clk*, %struct.clk** %5, align 8
  %54 = getelementptr inbounds %struct.clk, %struct.clk* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.clk*, %struct.clk** %5, align 8
  %57 = getelementptr inbounds %struct.clk, %struct.clk* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %55, %58
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %63 = load %struct.clk*, %struct.clk** %5, align 8
  %64 = getelementptr inbounds %struct.clk, %struct.clk* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @WRITE4(%struct.ccm_softc* %62, i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %37, %26
  %69 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %70 = load %struct.clk*, %struct.clk** %5, align 8
  %71 = getelementptr inbounds %struct.clk, %struct.clk* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @READ4(%struct.ccm_softc* %69, i64 %72)
  store i32 %73, i32* %6, align 4
  %74 = load %struct.clk*, %struct.clk** %5, align 8
  %75 = getelementptr inbounds %struct.clk, %struct.clk* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load %struct.clk*, %struct.clk** %5, align 8
  %80 = getelementptr inbounds %struct.clk, %struct.clk* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.clk*, %struct.clk** %5, align 8
  %83 = getelementptr inbounds %struct.clk, %struct.clk* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 %81, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load %struct.clk*, %struct.clk** %5, align 8
  %90 = getelementptr inbounds %struct.clk, %struct.clk* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.clk*, %struct.clk** %5, align 8
  %93 = getelementptr inbounds %struct.clk, %struct.clk* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = shl i32 %91, %94
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load %struct.ccm_softc*, %struct.ccm_softc** %3, align 8
  %99 = load %struct.clk*, %struct.clk** %5, align 8
  %100 = getelementptr inbounds %struct.clk, %struct.clk* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @WRITE4(%struct.ccm_softc* %98, i64 %101, i32 %102)
  br label %104

104:                                              ; preds = %68, %16
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %8

108:                                              ; preds = %8
  ret i32 0
}

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @READ4(%struct.ccm_softc*, i64) #1

declare dso_local i32 @WRITE4(%struct.ccm_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
