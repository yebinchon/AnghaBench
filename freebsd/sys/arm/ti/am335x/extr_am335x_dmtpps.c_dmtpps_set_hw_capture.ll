; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtpps.c_dmtpps_set_hw_capture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_dmtpps.c_dmtpps_set_hw_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmtpps_softc = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@DMT_TCLR_CAPTRAN_LOHI = common dso_local global i32 0, align 4
@DMT_TCLR_CAPTRAN_MASK = common dso_local global i32 0, align 4
@DMT_TCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmtpps_softc*, i32)* @dmtpps_set_hw_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmtpps_set_hw_capture(%struct.dmtpps_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.dmtpps_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dmtpps_softc* %0, %struct.dmtpps_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %17

9:                                                ; preds = %2
  %10 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %11 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %9, %8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %20 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %51

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %27 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @DMT_TCLR_CAPTRAN_LOHI, align 4
  %33 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %34 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %44

37:                                               ; preds = %24
  %38 = load i32, i32* @DMT_TCLR_CAPTRAN_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %41 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %46 = load i32, i32* @DMT_TCLR, align 4
  %47 = load %struct.dmtpps_softc*, %struct.dmtpps_softc** %3, align 8
  %48 = getelementptr inbounds %struct.dmtpps_softc, %struct.dmtpps_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DMTIMER_WRITE4(%struct.dmtpps_softc* %45, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %44, %23
  ret void
}

declare dso_local i32 @DMTIMER_WRITE4(%struct.dmtpps_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
