; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_ts.c_aw_ts_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_ts.c_aw_ts_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_ts_softc = type { i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@aw_ts_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@aw_ts_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@compat_data = common dso_local global i32 0, align 4
@TP_CTRL0 = common dso_local global i32 0, align 4
@TP_CTRL1 = common dso_local global i32 0, align 4
@TP_CTRL1_MODE_EN = common dso_local global i32 0, align 4
@TP_TPR = common dso_local global i32 0, align 4
@TP_TPR_TEMP_EN = common dso_local global i32 0, align 4
@TP_FIFOC = common dso_local global i32 0, align 4
@TP_FIFOC_TEMP_IRQ_ENABLE = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@sysctl_handle_int = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"IK3\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"CPU Temperature\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aw_ts_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_ts_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aw_ts_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.aw_ts_softc* @device_get_softc(i32 %5)
  store %struct.aw_ts_softc* %6, %struct.aw_ts_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %9 = getelementptr inbounds %struct.aw_ts_softc, %struct.aw_ts_softc* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @aw_ts_spec, align 4
  %12 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %13 = getelementptr inbounds %struct.aw_ts_softc, %struct.aw_ts_softc* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @bus_alloc_resources(i32 %10, i32 %11, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %101

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %24 = getelementptr inbounds %struct.aw_ts_softc, %struct.aw_ts_softc* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @INTR_TYPE_MISC, align 4
  %29 = load i32, i32* @INTR_MPSAFE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @aw_ts_intr, align 4
  %32 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %33 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %34 = getelementptr inbounds %struct.aw_ts_softc, %struct.aw_ts_softc* %33, i32 0, i32 4
  %35 = call i64 @bus_setup_intr(i32 %22, i32 %27, i32 %30, i32* null, i32 %31, %struct.aw_ts_softc* %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %21
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @aw_ts_spec, align 4
  %40 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %41 = getelementptr inbounds %struct.aw_ts_softc, %struct.aw_ts_softc* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @bus_release_resources(i32 %38, i32 %39, i32* %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %101

47:                                               ; preds = %21
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @compat_data, align 4
  %50 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %48, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %63 [
    i32 129, label %53
    i32 128, label %58
  ]

53:                                               ; preds = %47
  %54 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %55 = getelementptr inbounds %struct.aw_ts_softc, %struct.aw_ts_softc* %54, i32 0, i32 0
  store i32 257000, i32* %55, align 8
  %56 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %57 = getelementptr inbounds %struct.aw_ts_softc, %struct.aw_ts_softc* %56, i32 0, i32 1
  store i32 133, i32* %57, align 4
  br label %63

58:                                               ; preds = %47
  %59 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %60 = getelementptr inbounds %struct.aw_ts_softc, %struct.aw_ts_softc* %59, i32 0, i32 0
  store i32 144700, i32* %60, align 8
  %61 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %62 = getelementptr inbounds %struct.aw_ts_softc, %struct.aw_ts_softc* %61, i32 0, i32 1
  store i32 100, i32* %62, align 4
  br label %63

63:                                               ; preds = %47, %58, %53
  %64 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %65 = load i32, i32* @TP_CTRL0, align 4
  %66 = call i32 @TP_CTRL0_CLK_SELECT(i32 0)
  %67 = call i32 @TP_CTRL0_CLK_DIV(i32 2)
  %68 = or i32 %66, %67
  %69 = call i32 @TP_CTRL0_FS_DIV(i32 7)
  %70 = or i32 %68, %69
  %71 = call i32 @TP_CTRL0_TACQ(i32 63)
  %72 = or i32 %70, %71
  %73 = call i32 @WRITE(%struct.aw_ts_softc* %64, i32 %65, i32 %72)
  %74 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %75 = load i32, i32* @TP_CTRL1, align 4
  %76 = load i32, i32* @TP_CTRL1_MODE_EN, align 4
  %77 = call i32 @WRITE(%struct.aw_ts_softc* %74, i32 %75, i32 %76)
  %78 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %79 = load i32, i32* @TP_TPR, align 4
  %80 = load i32, i32* @TP_TPR_TEMP_EN, align 4
  %81 = call i32 @TP_TPR_TEMP_PERIOD(i32 1953)
  %82 = or i32 %80, %81
  %83 = call i32 @WRITE(%struct.aw_ts_softc* %78, i32 %79, i32 %82)
  %84 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %85 = load i32, i32* @TP_FIFOC, align 4
  %86 = load i32, i32* @TP_FIFOC_TEMP_IRQ_ENABLE, align 4
  %87 = call i32 @WRITE(%struct.aw_ts_softc* %84, i32 %85, i32 %86)
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @device_get_sysctl_ctx(i32 %88)
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @device_get_sysctl_tree(i32 %90)
  %92 = call i32 @SYSCTL_CHILDREN(i32 %91)
  %93 = load i32, i32* @OID_AUTO, align 4
  %94 = load i32, i32* @CTLTYPE_INT, align 4
  %95 = load i32, i32* @CTLFLAG_RD, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.aw_ts_softc*, %struct.aw_ts_softc** %4, align 8
  %98 = getelementptr inbounds %struct.aw_ts_softc, %struct.aw_ts_softc* %97, i32 0, i32 2
  %99 = load i32, i32* @sysctl_handle_int, align 4
  %100 = call i32 @SYSCTL_ADD_PROC(i32 %89, i32 %92, i32 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32* %98, i32 0, i32 %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %63, %37, %17
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.aw_ts_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.aw_ts_softc*, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @WRITE(%struct.aw_ts_softc*, i32, i32) #1

declare dso_local i32 @TP_CTRL0_CLK_SELECT(i32) #1

declare dso_local i32 @TP_CTRL0_CLK_DIV(i32) #1

declare dso_local i32 @TP_CTRL0_FS_DIV(i32) #1

declare dso_local i32 @TP_CTRL0_TACQ(i32) #1

declare dso_local i32 @TP_TPR_TEMP_PERIOD(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
