; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/altera/socfpga/extr_socfpga_a10_manager.c_fpga_wait_dclk_pulses.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/altera/socfpga/extr_socfpga_a10_manager.c_fpga_wait_dclk_pulses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpgamgr_a10_softc = type { i32 }

@FPGAMGR_DCLKSTAT = common dso_local global i32 0, align 4
@FPGAMGR_DCLKCNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error: dclkpulses wait timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpgamgr_a10_softc*, i32)* @fpga_wait_dclk_pulses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_wait_dclk_pulses(%struct.fpgamgr_a10_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpgamgr_a10_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fpgamgr_a10_softc* %0, %struct.fpgamgr_a10_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %8 = load i32, i32* @FPGAMGR_DCLKSTAT, align 4
  %9 = call i32 @READ4(%struct.fpgamgr_a10_softc* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %13 = load i32, i32* @FPGAMGR_DCLKSTAT, align 4
  %14 = call i32 @WRITE4(%struct.fpgamgr_a10_softc* %12, i32 %13, i32 1)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %17 = load i32, i32* @FPGAMGR_DCLKCNT, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @WRITE4(%struct.fpgamgr_a10_softc* %16, i32 %17, i32 %18)
  store i32 1000, i32* %6, align 4
  br label %20

20:                                               ; preds = %32, %15
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %25 = load i32, i32* @FPGAMGR_DCLKSTAT, align 4
  %26 = call i32 @READ4(%struct.fpgamgr_a10_softc* %24, i32 %25)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %30 = load i32, i32* @FPGAMGR_DCLKSTAT, align 4
  %31 = call i32 @WRITE4(%struct.fpgamgr_a10_softc* %29, i32 %30, i32 1)
  br label %36

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = call i32 @DELAY(i32 10)
  br label %20

36:                                               ; preds = %28, %20
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.fpgamgr_a10_softc*, %struct.fpgamgr_a10_softc** %4, align 8
  %41 = getelementptr inbounds %struct.fpgamgr_a10_softc, %struct.fpgamgr_a10_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @READ4(%struct.fpgamgr_a10_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.fpgamgr_a10_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
