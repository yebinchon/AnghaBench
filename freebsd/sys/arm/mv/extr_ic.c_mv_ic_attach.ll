; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_ic.c_mv_ic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_ic.c_mv_ic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_ic_softc = type { i32, i32, i32*, i32, i32 }

@mv_ic_sc = common dso_local global %struct.mv_ic_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@MV_DEV_88F6281 = common dso_local global i64 0, align 8
@MV_DEV_88F6282 = common dso_local global i64 0, align 8
@MV_DEV_MV78100 = common dso_local global i64 0, align 8
@MV_DEV_MV78100_Z0 = common dso_local global i64 0, align 8
@mv_ic_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_ic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_ic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_ic_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @device_get_softc(i32 %8)
  %10 = inttoptr i64 %9 to %struct.mv_ic_softc*
  store %struct.mv_ic_softc* %10, %struct.mv_ic_softc** %4, align 8
  %11 = load %struct.mv_ic_softc*, %struct.mv_ic_softc** @mv_ic_sc, align 8
  %12 = icmp ne %struct.mv_ic_softc* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.mv_ic_softc*, %struct.mv_ic_softc** %4, align 8
  store %struct.mv_ic_softc* %16, %struct.mv_ic_softc** @mv_ic_sc, align 8
  %17 = call i32 @soc_id(i64* %5, i64* %6)
  %18 = load %struct.mv_ic_softc*, %struct.mv_ic_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mv_ic_softc, %struct.mv_ic_softc* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.mv_ic_softc*, %struct.mv_ic_softc** %4, align 8
  %21 = getelementptr inbounds %struct.mv_ic_softc, %struct.mv_ic_softc* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @MV_DEV_88F6281, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %15
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @MV_DEV_88F6282, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @MV_DEV_MV78100, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @MV_DEV_MV78100_Z0, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %29, %25, %15
  %38 = load %struct.mv_ic_softc*, %struct.mv_ic_softc** %4, align 8
  %39 = getelementptr inbounds %struct.mv_ic_softc, %struct.mv_ic_softc* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @MV_DEV_MV78100, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @MV_DEV_MV78100_Z0, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %40
  %49 = load %struct.mv_ic_softc*, %struct.mv_ic_softc** %4, align 8
  %50 = getelementptr inbounds %struct.mv_ic_softc, %struct.mv_ic_softc* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @mv_ic_spec, align 4
  %54 = load %struct.mv_ic_softc*, %struct.mv_ic_softc** %4, align 8
  %55 = getelementptr inbounds %struct.mv_ic_softc, %struct.mv_ic_softc* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @bus_alloc_resources(i32 %52, i32 %53, i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  br label %82

64:                                               ; preds = %51
  %65 = load %struct.mv_ic_softc*, %struct.mv_ic_softc** %4, align 8
  %66 = getelementptr inbounds %struct.mv_ic_softc, %struct.mv_ic_softc* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rman_get_bustag(i32 %69)
  %71 = load %struct.mv_ic_softc*, %struct.mv_ic_softc** %4, align 8
  %72 = getelementptr inbounds %struct.mv_ic_softc, %struct.mv_ic_softc* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.mv_ic_softc*, %struct.mv_ic_softc** %4, align 8
  %74 = getelementptr inbounds %struct.mv_ic_softc, %struct.mv_ic_softc* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @rman_get_bushandle(i32 %77)
  %79 = load %struct.mv_ic_softc*, %struct.mv_ic_softc** %4, align 8
  %80 = getelementptr inbounds %struct.mv_ic_softc, %struct.mv_ic_softc* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = call i32 (...) @arm_mask_irq_all()
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %64, %60, %13
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @soc_id(i64*, i64*) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @arm_mask_irq_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
