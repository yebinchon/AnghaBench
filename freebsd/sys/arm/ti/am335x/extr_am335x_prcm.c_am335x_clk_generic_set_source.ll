; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_clk_generic_set_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_clk_generic_set_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_prcm_softc = type { i32 }
%struct.ti_clock_dev = type { i32 }
%struct.am335x_clk_details = type { i32 }

@am335x_prcm_sc = common dso_local global %struct.am335x_prcm_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*, i32)* @am335x_clk_generic_set_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_clk_generic_set_source(%struct.ti_clock_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_clock_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.am335x_prcm_softc*, align 8
  %7 = alloca %struct.am335x_clk_details*, align 8
  %8 = alloca i32, align 4
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** @am335x_prcm_sc, align 8
  store %struct.am335x_prcm_softc* %9, %struct.am335x_prcm_softc** %6, align 8
  %10 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** %6, align 8
  %11 = icmp eq %struct.am335x_prcm_softc* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  %16 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.am335x_clk_details* @am335x_clk_details(i32 %17)
  store %struct.am335x_clk_details* %18, %struct.am335x_clk_details** %7, align 8
  %19 = load %struct.am335x_clk_details*, %struct.am335x_clk_details** %7, align 8
  %20 = icmp eq %struct.am335x_clk_details* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %28 [
    i32 130, label %25
    i32 128, label %26
    i32 129, label %27
  ]

25:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %30

26:                                               ; preds = %23
  store i32 1, i32* %8, align 4
  br label %30

27:                                               ; preds = %23
  store i32 2, i32* %8, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %27, %26, %25
  %31 = load %struct.am335x_clk_details*, %struct.am335x_clk_details** %7, align 8
  %32 = getelementptr inbounds %struct.am335x_clk_details, %struct.am335x_clk_details* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @prcm_write_4(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %44, %30
  %37 = load %struct.am335x_clk_details*, %struct.am335x_clk_details** %7, align 8
  %38 = getelementptr inbounds %struct.am335x_clk_details, %struct.am335x_clk_details* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @prcm_read_4(i32 %39)
  %41 = and i32 %40, 3
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 @DELAY(i32 10)
  br label %36

46:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %28, %21, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.am335x_clk_details* @am335x_clk_details(i32) #1

declare dso_local i32 @prcm_write_4(i32, i32) #1

declare dso_local i32 @prcm_read_4(i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
