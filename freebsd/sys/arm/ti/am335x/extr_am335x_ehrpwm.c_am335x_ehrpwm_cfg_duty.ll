; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_ehrpwm.c_am335x_ehrpwm_cfg_duty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_ehrpwm.c_am335x_ehrpwm_cfg_duty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_ehrpwm_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EPWM_CMPA = common dso_local global i32 0, align 4
@EPWM_CMPB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.am335x_ehrpwm_softc*, i64, i64)* @am335x_ehrpwm_cfg_duty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am335x_ehrpwm_cfg_duty(%struct.am335x_ehrpwm_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.am335x_ehrpwm_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.am335x_ehrpwm_softc* %0, %struct.am335x_ehrpwm_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %18

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %14 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = udiv i64 %12, %15
  %17 = call i64 @max(i32 1, i64 %16)
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %11, %10
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %21 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = mul i64 %19, %22
  %24 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %25 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %23, i64* %29, align 8
  %30 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %31 = call i32 @PWM_LOCK_ASSERT(%struct.am335x_ehrpwm_softc* %30)
  %32 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = load i32, i32* @EPWM_CMPA, align 4
  br label %39

37:                                               ; preds = %18
  %38 = load i32, i32* @EPWM_CMPB, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @EPWM_WRITE2(%struct.am335x_ehrpwm_softc* %32, i32 %40, i64 %41)
  ret void
}

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @PWM_LOCK_ASSERT(%struct.am335x_ehrpwm_softc*) #1

declare dso_local i32 @EPWM_WRITE2(%struct.am335x_ehrpwm_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
