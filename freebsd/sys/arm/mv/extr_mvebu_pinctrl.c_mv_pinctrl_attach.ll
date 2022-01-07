; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mvebu_pinctrl.c_mv_pinctrl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mvebu_pinctrl.c_mv_pinctrl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pinctrl_softc = type { i32*, i32, %struct.mv_padconf* }
%struct.mv_padconf = type { i32 }
%struct.TYPE_2__ = type { i64 }

@compat_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot get syscon for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"marvell,pins\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_pinctrl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_pinctrl_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_pinctrl_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.mv_pinctrl_softc* @device_get_softc(i32 %6)
  store %struct.mv_pinctrl_softc* %7, %struct.mv_pinctrl_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.mv_pinctrl_softc*, %struct.mv_pinctrl_softc** %4, align 8
  %10 = getelementptr inbounds %struct.mv_pinctrl_softc, %struct.mv_pinctrl_softc* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @compat_data, align 4
  %13 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.mv_padconf*
  %17 = load %struct.mv_pinctrl_softc*, %struct.mv_pinctrl_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mv_pinctrl_softc, %struct.mv_pinctrl_softc* %17, i32 0, i32 2
  store %struct.mv_padconf* %16, %struct.mv_padconf** %18, align 8
  %19 = load %struct.mv_pinctrl_softc*, %struct.mv_pinctrl_softc** %4, align 8
  %20 = getelementptr inbounds %struct.mv_pinctrl_softc, %struct.mv_pinctrl_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mv_pinctrl_softc*, %struct.mv_pinctrl_softc** %4, align 8
  %23 = getelementptr inbounds %struct.mv_pinctrl_softc, %struct.mv_pinctrl_softc* %22, i32 0, i32 0
  %24 = call i64 @SYSCON_GET_HANDLE(i32 %21, i32** %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.mv_pinctrl_softc*, %struct.mv_pinctrl_softc** %4, align 8
  %28 = getelementptr inbounds %struct.mv_pinctrl_softc, %struct.mv_pinctrl_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %1
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %2, align 4
  br label %42

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ofw_bus_get_node(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @fdt_pinctrl_register(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @fdt_pinctrl_configure_tree(i32 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %35, %31
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.mv_pinctrl_softc* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i64 @SYSCON_GET_HANDLE(i32, i32**) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @fdt_pinctrl_register(i32, i8*) #1

declare dso_local i32 @fdt_pinctrl_configure_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
