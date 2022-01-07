; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_cpufreq_nearest_oppt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_cpufreq_nearest_oppt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oppt = type { i64 }
%struct.imx6_anatop_softc = type { i64, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@imx6_oppt_table = common dso_local global %struct.oppt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.oppt* (%struct.imx6_anatop_softc*, i64)* @cpufreq_nearest_oppt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.oppt* @cpufreq_nearest_oppt(%struct.imx6_anatop_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.imx6_anatop_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.imx6_anatop_softc* %0, %struct.imx6_anatop_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %11 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %16 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %21 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %19, %14, %2
  %24 = load i32, i32* @INT_MAX, align 4
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %49, %23
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.oppt*, %struct.oppt** @imx6_oppt_table, align 8
  %28 = call i32 @nitems(%struct.oppt* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load i64, i64* %4, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.oppt*, %struct.oppt** @imx6_oppt_table, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.oppt, %struct.oppt* %33, i64 %35
  %37 = getelementptr inbounds %struct.oppt, %struct.oppt* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = sub nsw i32 %32, %39
  %41 = call i32 @abs(i32 %40) #3
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %45, %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load %struct.oppt*, %struct.oppt** @imx6_oppt_table, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.oppt, %struct.oppt* %53, i64 %55
  ret %struct.oppt* %56
}

declare dso_local i32 @nitems(%struct.oppt*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
