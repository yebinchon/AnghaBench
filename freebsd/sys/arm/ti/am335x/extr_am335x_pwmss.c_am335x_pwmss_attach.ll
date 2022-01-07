; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_pwmss.c_am335x_pwmss_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_pwmss.c_am335x_pwmss_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_pwmss_softc = type { i32, i32 }

@INVALID_CLK_IDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to get device id based on ti,hwmods\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SCM_PWMSS_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unknown pwmss clock id: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @am335x_pwmss_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_pwmss_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.am335x_pwmss_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.am335x_pwmss_softc* @device_get_softc(i32 %8)
  store %struct.am335x_pwmss_softc* %9, %struct.am335x_pwmss_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.am335x_pwmss_softc*, %struct.am335x_pwmss_softc** %4, align 8
  %12 = getelementptr inbounds %struct.am335x_pwmss_softc, %struct.am335x_pwmss_softc* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @ti_hwmods_get_clock(i32 %13)
  %15 = load %struct.am335x_pwmss_softc*, %struct.am335x_pwmss_softc** %4, align 8
  %16 = getelementptr inbounds %struct.am335x_pwmss_softc, %struct.am335x_pwmss_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.am335x_pwmss_softc*, %struct.am335x_pwmss_softc** %4, align 8
  %18 = getelementptr inbounds %struct.am335x_pwmss_softc, %struct.am335x_pwmss_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @INVALID_CLK_IDENT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %2, align 4
  br label %81

26:                                               ; preds = %1
  %27 = load %struct.am335x_pwmss_softc*, %struct.am335x_pwmss_softc** %4, align 8
  %28 = getelementptr inbounds %struct.am335x_pwmss_softc, %struct.am335x_pwmss_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ti_prcm_clk_enable(i32 %29)
  %31 = load i32, i32* @SCM_PWMSS_CTRL, align 4
  %32 = call i32 @ti_scm_reg_read_4(i32 %31, i32* %5)
  %33 = load %struct.am335x_pwmss_softc*, %struct.am335x_pwmss_softc** %4, align 8
  %34 = getelementptr inbounds %struct.am335x_pwmss_softc, %struct.am335x_pwmss_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %39 [
    i32 130, label %36
    i32 129, label %37
    i32 128, label %38
  ]

36:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %46

37:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %46

38:                                               ; preds = %26
  store i32 2, i32* %6, align 4
  br label %46

39:                                               ; preds = %26
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.am335x_pwmss_softc*, %struct.am335x_pwmss_softc** %4, align 8
  %42 = getelementptr inbounds %struct.am335x_pwmss_softc, %struct.am335x_pwmss_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %2, align 4
  br label %81

46:                                               ; preds = %38, %37, %36
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @SCM_PWMSS_CTRL, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ti_scm_reg_write_4(i32 %51, i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @ofw_bus_get_node(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %81

60:                                               ; preds = %46
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @simplebus_init(i32 %61, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @bus_generic_probe(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @OF_child(i32 %66)
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %75, %60
  %69 = load i32, i32* %7, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @simplebus_add_device(i32 %72, i32 %73, i32 0, i32* null, i32 -1, i32* null)
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @OF_peer(i32 %76)
  store i32 %77, i32* %7, align 4
  br label %68

78:                                               ; preds = %68
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @bus_generic_attach(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %58, %39, %22
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.am335x_pwmss_softc* @device_get_softc(i32) #1

declare dso_local i32 @ti_hwmods_get_clock(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ti_prcm_clk_enable(i32) #1

declare dso_local i32 @ti_scm_reg_read_4(i32, i32*) #1

declare dso_local i32 @ti_scm_reg_write_4(i32, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @simplebus_init(i32, i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i32 @simplebus_add_device(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @OF_peer(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
