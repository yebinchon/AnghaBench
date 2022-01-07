; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_mpcore_timer.c_attach_et.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_mpcore_timer.c_attach_et.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, %struct.arm_tmr_softc*, i32, i32, i32, i32 }
%struct.arm_tmr_softc = type { i32, i32, %struct.TYPE_3__, i32, i32, i32*, i32* }

@arm_tmr_et = common dso_local global %struct.TYPE_3__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not allocate prv mem resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PRV_TIMER_CTRL = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"could not allocate prv irq resources\0A\00", align 1
@INTR_TYPE_CLK = common dso_local global i32 0, align 4
@arm_tmr_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to setup the et irq handler.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"MPCore\00", align 1
@ET_FLAGS_PERIODIC = common dso_local global i32 0, align 4
@ET_FLAGS_ONESHOT = common dso_local global i32 0, align 4
@ET_FLAGS_PERCPU = common dso_local global i32 0, align 4
@SBT_1S = common dso_local global i32 0, align 4
@arm_tmr_start = common dso_local global i32 0, align 4
@arm_tmr_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_tmr_softc*)* @attach_et to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_et(%struct.arm_tmr_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arm_tmr_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.arm_tmr_softc* %0, %struct.arm_tmr_softc** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arm_tmr_et, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @EBUSY, align 4
  store i32 %10, i32* %2, align 4
  br label %152

11:                                               ; preds = %1
  %12 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %13 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %16 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i8* @bus_alloc_resource_any(i32 %17, i32 %18, i32* %6, i32 %19)
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %23 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %22, i32 0, i32 6
  store i32* %21, i32** %23, align 8
  %24 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %25 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %11
  %29 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %30 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %152

34:                                               ; preds = %11
  %35 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %36 = load i32, i32* @PRV_TIMER_CTRL, align 4
  %37 = call i32 @tmr_prv_write_4(%struct.arm_tmr_softc* %35, i32 %36, i32 0)
  %38 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %39 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %42 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SYS_RES_IRQ, align 4
  %45 = load i32, i32* @RF_ACTIVE, align 4
  %46 = call i8* @bus_alloc_resource_any(i32 %43, i32 %44, i32* %5, i32 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %49 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %48, i32 0, i32 5
  store i32* %47, i32** %49, align 8
  %50 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %51 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %34
  %55 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %56 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SYS_RES_MEMORY, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %61 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %60, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @bus_release_resource(i32 %57, i32 %58, i32 %59, i32* %62)
  %64 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %65 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %2, align 4
  br label %152

69:                                               ; preds = %34
  %70 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %71 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %74 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @INTR_TYPE_CLK, align 4
  %77 = load i32, i32* @arm_tmr_intr, align 4
  %78 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %79 = call i64 @bus_setup_intr(i32 %72, i32* %75, i32 %76, i32 %77, i32* null, %struct.arm_tmr_softc* %78, i8** %4)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %69
  %82 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %83 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SYS_RES_MEMORY, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %88 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @bus_release_resource(i32 %84, i32 %85, i32 %86, i32* %89)
  %91 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %92 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SYS_RES_IRQ, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %97 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @bus_release_resource(i32 %93, i32 %94, i32 %95, i32* %98)
  %100 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %101 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @device_printf(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* @ENXIO, align 4
  store i32 %104, i32* %2, align 4
  br label %152

105:                                              ; preds = %69
  %106 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %107 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %108, align 8
  %109 = load i32, i32* @ET_FLAGS_PERIODIC, align 4
  %110 = load i32, i32* @ET_FLAGS_ONESHOT, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @ET_FLAGS_PERCPU, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %115 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 8
  %117 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %118 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  store i32 1000, i32* %119, align 4
  %120 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %121 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %124 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 8
  store i32 %122, i32* %125, align 4
  %126 = call i32 @nstosbt(i32 20)
  %127 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %128 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 7
  store i32 %126, i32* %129, align 8
  %130 = load i32, i32* @SBT_1S, align 4
  %131 = mul nsw i32 2, %130
  %132 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %133 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  store i32 %131, i32* %134, align 8
  %135 = load i32, i32* @arm_tmr_start, align 4
  %136 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %137 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 6
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* @arm_tmr_stop, align 4
  %140 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %141 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 5
  store i32 %139, i32* %142, align 8
  %143 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %144 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %145 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 4
  store %struct.arm_tmr_softc* %143, %struct.arm_tmr_softc** %146, align 8
  %147 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %148 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %147, i32 0, i32 2
  %149 = call i32 @et_register(%struct.TYPE_3__* %148)
  %150 = load %struct.arm_tmr_softc*, %struct.arm_tmr_softc** %3, align 8
  %151 = getelementptr inbounds %struct.arm_tmr_softc, %struct.arm_tmr_softc* %150, i32 0, i32 2
  store %struct.TYPE_3__* %151, %struct.TYPE_3__** @arm_tmr_et, align 8
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %105, %81, %54, %28, %9
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @tmr_prv_write_4(%struct.arm_tmr_softc*, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.arm_tmr_softc*, i8**) #1

declare dso_local i32 @nstosbt(i32) #1

declare dso_local i32 @et_register(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
