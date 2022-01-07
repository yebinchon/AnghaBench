; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_tempmon_throttle_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_tempmon_throttle_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_anatop_softc = type { i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tempmon_throttle_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tempmon_throttle_check(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.imx6_anatop_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.imx6_anatop_softc*
  store %struct.imx6_anatop_softc* %5, %struct.imx6_anatop_softc** %3, align 8
  %6 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %7 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %10 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %15 = call i32 @tempmon_goslow(%struct.imx6_anatop_softc* %14)
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %18 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %21 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %26 = call i32 @tempmon_gofast(%struct.imx6_anatop_softc* %25)
  br label %27

27:                                               ; preds = %24, %16
  br label %28

28:                                               ; preds = %27, %13
  %29 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %30 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %29, i32 0, i32 4
  %31 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %32 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %35 = call i32 @callout_reset_sbt(i32* %30, i32 %33, i32 0, void (i8*)* @tempmon_throttle_check, %struct.imx6_anatop_softc* %34, i32 0)
  ret void
}

declare dso_local i32 @tempmon_goslow(%struct.imx6_anatop_softc*) #1

declare dso_local i32 @tempmon_gofast(%struct.imx6_anatop_softc*) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, void (i8*)*, %struct.imx6_anatop_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
