; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_spi.c_spi_xfer_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_spi.c_spi_xfer_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_softc = type { i32, i64, i64, i64, i64, i32, i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"spi_xfer_buf, rxbuf %p txbuf %p len %u\0A\00", align 1
@INTREG_RDREN = common dso_local global i32 0, align 4
@INTREG_TDREN = common dso_local global i32 0, align 4
@ECSPI_INTREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"imxspi\00", align 1
@hz = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_softc*, i8*, i8*, i8*)* @spi_xfer_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_xfer_buf(%struct.spi_softc* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.spi_softc* %0, %struct.spi_softc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %12 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %17 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20, i8* %21)
  br label %23

23:                                               ; preds = %15, %4
  %24 = load i8*, i8** %9, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %96

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %30 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %29, i32 0, i32 8
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %34 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %36 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %39 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %38, i32 0, i32 7
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %43 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %45 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @INTREG_RDREN, align 4
  %47 = load i32, i32* @INTREG_TDREN, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %50 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %52 = call i32 @spi_fill_txfifo(%struct.spi_softc* %51)
  %53 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %54 = load i32, i32* @ECSPI_INTREG, align 4
  %55 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %56 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @WR4(%struct.spi_softc* %53, i32 %54, i32 %57)
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %69, %27
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %64 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %62, %59
  %68 = phi i1 [ false, %59 ], [ %66, %62 ]
  br i1 %68, label %69, label %76

69:                                               ; preds = %67
  %70 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %71 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %72 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %71, i32 0, i32 6
  %73 = load i32, i32* @hz, align 4
  %74 = mul nsw i32 10, %73
  %75 = call i32 @msleep(%struct.spi_softc* %70, i32* %72, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store i32 %75, i32* %10, align 4
  br label %59

76:                                               ; preds = %67
  %77 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %78 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %81 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %76
  %85 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %86 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %89 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84, %76
  %93 = load i32, i32* @EIO, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %92, %84
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %26
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @device_printf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @spi_fill_txfifo(%struct.spi_softc*) #1

declare dso_local i32 @WR4(%struct.spi_softc*, i32, i32) #1

declare dso_local i32 @msleep(%struct.spi_softc*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
