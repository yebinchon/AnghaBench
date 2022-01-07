; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_tzic.c_tzic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_tzic.c_tzic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tzic_softc = type { i32*, i32 }

@tzic_sc = common dso_local global %struct.tzic_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@TZIC_PRIOMASK = common dso_local global i32 0, align 4
@TZIC_SYNCCTRL = common dso_local global i32 0, align 4
@TZIC_INTCNTL = common dso_local global i32 0, align 4
@INTCNTL_NSEN_MASK = common dso_local global i32 0, align 4
@INTCNTL_NSEN = common dso_local global i32 0, align 4
@INTCNTL_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"could not attach PIC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tzic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tzic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tzic_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.tzic_softc* @device_get_softc(i32 %6)
  store %struct.tzic_softc* %7, %struct.tzic_softc** %4, align 8
  %8 = load %struct.tzic_softc*, %struct.tzic_softc** @tzic_sc, align 8
  %9 = icmp ne %struct.tzic_softc* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %90

12:                                               ; preds = %1
  %13 = load %struct.tzic_softc*, %struct.tzic_softc** %4, align 8
  store %struct.tzic_softc* %13, %struct.tzic_softc** @tzic_sc, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.tzic_softc*, %struct.tzic_softc** %4, align 8
  %16 = getelementptr inbounds %struct.tzic_softc, %struct.tzic_softc* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  store i32 0, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i32* @bus_alloc_resource_any(i32 %17, i32 %18, i32* %5, i32 %19)
  %21 = load %struct.tzic_softc*, %struct.tzic_softc** %4, align 8
  %22 = getelementptr inbounds %struct.tzic_softc, %struct.tzic_softc* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.tzic_softc*, %struct.tzic_softc** %4, align 8
  %24 = getelementptr inbounds %struct.tzic_softc, %struct.tzic_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %12
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %90

31:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %40, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.tzic_softc*, %struct.tzic_softc** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @TZIC_INTSEC(i32 %37)
  %39 = call i32 @tzic_write_4(%struct.tzic_softc* %36, i32 %38, i32 -1)
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %32

43:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %52, %43
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.tzic_softc*, %struct.tzic_softc** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @TZIC_ENCLEAR(i32 %49)
  %51 = call i32 @tzic_write_4(%struct.tzic_softc* %48, i32 %50, i32 -1)
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %44

55:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %64, %55
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 32
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.tzic_softc*, %struct.tzic_softc** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @TZIC_PRIORITY(i32 %61)
  %63 = call i32 @tzic_write_4(%struct.tzic_softc* %60, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %56

67:                                               ; preds = %56
  %68 = load %struct.tzic_softc*, %struct.tzic_softc** %4, align 8
  %69 = load i32, i32* @TZIC_PRIOMASK, align 4
  %70 = call i32 @tzic_write_4(%struct.tzic_softc* %68, i32 %69, i32 255)
  %71 = load %struct.tzic_softc*, %struct.tzic_softc** %4, align 8
  %72 = load i32, i32* @TZIC_SYNCCTRL, align 4
  %73 = call i32 @tzic_write_4(%struct.tzic_softc* %71, i32 %72, i32 0)
  %74 = load %struct.tzic_softc*, %struct.tzic_softc** %4, align 8
  %75 = load i32, i32* @TZIC_INTCNTL, align 4
  %76 = load i32, i32* @INTCNTL_NSEN_MASK, align 4
  %77 = load i32, i32* @INTCNTL_NSEN, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @INTCNTL_EN, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @tzic_write_4(%struct.tzic_softc* %74, i32 %75, i32 %80)
  %82 = load %struct.tzic_softc*, %struct.tzic_softc** %4, align 8
  %83 = call i64 @tzic_pic_attach(%struct.tzic_softc* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %67
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @ENXIO, align 4
  store i32 %88, i32* %2, align 4
  br label %90

89:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %85, %27, %10
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.tzic_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @tzic_write_4(%struct.tzic_softc*, i32, i32) #1

declare dso_local i32 @TZIC_INTSEC(i32) #1

declare dso_local i32 @TZIC_ENCLEAR(i32) #1

declare dso_local i32 @TZIC_PRIORITY(i32) #1

declare dso_local i64 @tzic_pic_attach(%struct.tzic_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
