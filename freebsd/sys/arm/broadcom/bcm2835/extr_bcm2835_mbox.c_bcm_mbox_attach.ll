; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm_mbox_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_mbox.c_bcm_mbox_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_mbox_softc = type { i32, i64*, i64*, i32, i32*, i32, i32*, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not allocate interrupt resource\0A\00", align 1
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@bcm_mbox_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Unable to setup the clock irq handler.\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"vcio mbox\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@BCM2835_MBOX_CHANS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"mboxprop\00", align 1
@REG_STATUS = common dso_local global i32 0, align 4
@STATUS_EMPTY = common dso_local global i32 0, align 4
@REG_READ = common dso_local global i32 0, align 4
@REG_CONFIG = common dso_local global i32 0, align 4
@CONFIG_DATA_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_mbox_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_mbox_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_mbox_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.bcm_mbox_softc* @device_get_softc(i32 %7)
  store %struct.bcm_mbox_softc* %8, %struct.bcm_mbox_softc** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SYS_RES_MEMORY, align 4
  %11 = load i32, i32* @RF_ACTIVE, align 4
  %12 = call i8* @bus_alloc_resource_any(i32 %9, i32 %10, i32* %6, i32 %11)
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %15 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %14, i32 0, i32 6
  store i32* %13, i32** %15, align 8
  %16 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %17 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %122

24:                                               ; preds = %1
  %25 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %26 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @rman_get_bustag(i32* %27)
  %29 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %30 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %32 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @rman_get_bushandle(i32* %33)
  %35 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %36 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %6, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SYS_RES_IRQ, align 4
  %39 = load i32, i32* @RF_ACTIVE, align 4
  %40 = call i8* @bus_alloc_resource_any(i32 %37, i32 %38, i32* %6, i32 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %43 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %42, i32 0, i32 4
  store i32* %41, i32** %43, align 8
  %44 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %45 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %24
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %2, align 4
  br label %122

52:                                               ; preds = %24
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %55 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @INTR_MPSAFE, align 4
  %58 = load i32, i32* @INTR_TYPE_MISC, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @bcm_mbox_intr, align 4
  %61 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %62 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %63 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %62, i32 0, i32 5
  %64 = call i64 @bus_setup_intr(i32 %53, i32* %56, i32 %59, i32* null, i32 %60, %struct.bcm_mbox_softc* %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %52
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @SYS_RES_IRQ, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %71 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @bus_release_resource(i32 %67, i32 %68, i32 %69, i32* %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @ENXIO, align 4
  store i32 %76, i32* %2, align 4
  br label %122

77:                                               ; preds = %52
  %78 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %79 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %78, i32 0, i32 3
  %80 = load i32, i32* @MTX_DEF, align 4
  %81 = call i32 @mtx_init(i32* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %80)
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %99, %77
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @BCM2835_MBOX_CHANS, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %88 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64 0, i64* %92, align 8
  %93 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %94 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %86
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %82

102:                                              ; preds = %82
  %103 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %104 = getelementptr inbounds %struct.bcm_mbox_softc, %struct.bcm_mbox_softc* %103, i32 0, i32 0
  %105 = call i32 @sx_init(i32* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %106

106:                                              ; preds = %113, %102
  %107 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %108 = load i32, i32* @REG_STATUS, align 4
  %109 = call i32 @mbox_read_4(%struct.bcm_mbox_softc* %107, i32 %108)
  %110 = load i32, i32* @STATUS_EMPTY, align 4
  %111 = and i32 %109, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %115 = load i32, i32* @REG_READ, align 4
  %116 = call i32 @mbox_read_4(%struct.bcm_mbox_softc* %114, i32 %115)
  br label %106

117:                                              ; preds = %106
  %118 = load %struct.bcm_mbox_softc*, %struct.bcm_mbox_softc** %4, align 8
  %119 = load i32, i32* @REG_CONFIG, align 4
  %120 = load i32, i32* @CONFIG_DATA_IRQ, align 4
  %121 = call i32 @mbox_write_4(%struct.bcm_mbox_softc* %118, i32 %119, i32 %120)
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %117, %66, %48, %20
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.bcm_mbox_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.bcm_mbox_softc*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @mbox_read_4(%struct.bcm_mbox_softc*, i32) #1

declare dso_local i32 @mbox_write_4(%struct.bcm_mbox_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
