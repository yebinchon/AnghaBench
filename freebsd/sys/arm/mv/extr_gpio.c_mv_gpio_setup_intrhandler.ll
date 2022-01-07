; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_setup_intrhandler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_setup_intrhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_event = type { i32 }
%struct.mv_gpio_pindev = type { i32 }
%struct.mv_gpio_softc = type { i32, %struct.intr_event**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MV_GPIO_IN_DEBOUNCE = common dso_local global i32 0, align 4
@MV_GPIO_IN_IRQ_DOUBLE_EDGE = common dso_local global i32 0, align 4
@mv_gpio_intr_mask = common dso_local global i64 0, align 8
@mv_gpio_intr_unmask = common dso_local global i64 0, align 8
@mv_gpio_int_ack = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"gpio%d:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv_gpio_setup_intrhandler(i32 %0, i8* %1, i32* %2, void (i8*)* %3, i8* %4, i32 %5, i32 %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca void (i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca %struct.intr_event*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.mv_gpio_pindev*, align 8
  %21 = alloca %struct.mv_gpio_softc*, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store void (i8*)* %3, void (i8*)** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8** %7, i8*** %17, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @device_get_softc(i32 %22)
  %24 = inttoptr i64 %23 to %struct.mv_gpio_softc*
  store %struct.mv_gpio_softc* %24, %struct.mv_gpio_softc** %21, align 8
  %25 = load i32, i32* @M_DEVBUF, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = load i32, i32* @M_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.mv_gpio_pindev* @malloc(i32 4, i32 %25, i32 %28)
  store %struct.mv_gpio_pindev* %29, %struct.mv_gpio_pindev** %20, align 8
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %8
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %21, align 8
  %35 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %8
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %9, align 4
  br label %126

40:                                               ; preds = %32
  %41 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %21, align 8
  %42 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %41, i32 0, i32 1
  %43 = load %struct.intr_event**, %struct.intr_event*** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %43, i64 %45
  %47 = load %struct.intr_event*, %struct.intr_event** %46, align 8
  store %struct.intr_event* %47, %struct.intr_event** %18, align 8
  %48 = load %struct.intr_event*, %struct.intr_event** %18, align 8
  %49 = icmp eq %struct.intr_event* %48, null
  br i1 %49, label %50, label %115

50:                                               ; preds = %40
  %51 = call i32 (...) @MV_GPIO_LOCK()
  %52 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %21, align 8
  %53 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MV_GPIO_IN_DEBOUNCE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %50
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @mv_gpio_debounce_init(i32 %64, i32 %65)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = call i32 (...) @MV_GPIO_UNLOCK()
  %71 = load i32, i32* %19, align 4
  store i32 %71, i32* %9, align 4
  br label %126

72:                                               ; preds = %63
  br label %90

73:                                               ; preds = %50
  %74 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %21, align 8
  %75 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MV_GPIO_IN_IRQ_DOUBLE_EDGE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %73
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @mv_gpio_double_edge_init(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %73
  br label %90

90:                                               ; preds = %89, %72
  %91 = call i32 (...) @MV_GPIO_UNLOCK()
  %92 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %20, align 8
  %93 = bitcast %struct.mv_gpio_pindev* %92 to i8*
  %94 = load i32, i32* %15, align 4
  %95 = load i64, i64* @mv_gpio_intr_mask, align 8
  %96 = inttoptr i64 %95 to void (i8*)*
  %97 = load i64, i64* @mv_gpio_intr_unmask, align 8
  %98 = inttoptr i64 %97 to void (i8*)*
  %99 = load i64, i64* @mv_gpio_int_ack, align 8
  %100 = inttoptr i64 %99 to void (i8*)*
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @intr_event_create(%struct.intr_event** %18, i8* %93, i32 0, i32 %94, void (i8*)* %96, void (i8*)* %98, void (i8*)* %100, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %101)
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %19, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %90
  %106 = load i32, i32* %19, align 4
  store i32 %106, i32* %9, align 4
  br label %126

107:                                              ; preds = %90
  %108 = load %struct.intr_event*, %struct.intr_event** %18, align 8
  %109 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %21, align 8
  %110 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %109, i32 0, i32 1
  %111 = load %struct.intr_event**, %struct.intr_event*** %110, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %111, i64 %113
  store %struct.intr_event* %108, %struct.intr_event** %114, align 8
  br label %115

115:                                              ; preds = %107, %40
  %116 = load %struct.intr_event*, %struct.intr_event** %18, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = load void (i8*)*, void (i8*)** %13, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @intr_priority(i32 %121)
  %123 = load i32, i32* %16, align 4
  %124 = load i8**, i8*** %17, align 8
  %125 = call i32 @intr_event_add_handler(%struct.intr_event* %116, i8* %117, i32* %118, void (i8*)* %119, i8* %120, i32 %122, i32 %123, i8** %124)
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %115, %105, %69, %38
  %127 = load i32, i32* %9, align 4
  ret i32 %127
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local %struct.mv_gpio_pindev* @malloc(i32, i32, i32) #1

declare dso_local i32 @MV_GPIO_LOCK(...) #1

declare dso_local i32 @mv_gpio_debounce_init(i32, i32) #1

declare dso_local i32 @MV_GPIO_UNLOCK(...) #1

declare dso_local i32 @mv_gpio_double_edge_init(i32, i32) #1

declare dso_local i32 @intr_event_create(%struct.intr_event**, i8*, i32, i32, void (i8*)*, void (i8*)*, void (i8*)*, i32*, i8*, i32) #1

declare dso_local i32 @intr_event_add_handler(%struct.intr_event*, i8*, i32*, void (i8*)*, i8*, i32, i32, i8**) #1

declare dso_local i32 @intr_priority(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
