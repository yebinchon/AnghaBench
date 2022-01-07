; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_xfer_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_xfer_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_spi_softc = type { i64, i64, i64, i64, i64, i32, i8*, i8* }

@RK_SPI_IMR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rk_spi\00", align 1
@hz = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_spi_softc*, i8*, i8*, i64)* @rk_spi_xfer_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_spi_xfer_buf(%struct.rk_spi_softc* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rk_spi_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.rk_spi_softc* %0, %struct.rk_spi_softc** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %95

14:                                               ; preds = %4
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %17 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %16, i32 0, i32 7
  store i8* %15, i8** %17, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %20 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %22 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %25 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %28 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %30 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %32 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %34 = call i32 @rk_spi_fill_txfifo(%struct.rk_spi_softc* %33)
  %35 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %36 = load i32, i32* @RK_SPI_IMR, align 4
  %37 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %38 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc* %35, i32 %36, i64 %39)
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %51, %14
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %46 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi i1 [ false, %41 ], [ %48, %44 ]
  br i1 %50, label %51, label %58

51:                                               ; preds = %49
  %52 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %53 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %54 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %53, i32 0, i32 5
  %55 = load i32, i32* @hz, align 4
  %56 = mul nsw i32 10, %55
  %57 = call i32 @msleep(%struct.rk_spi_softc* %52, i32* %54, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 %57, i32* %10, align 4
  br label %41

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %72, %58
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %64 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %67 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br label %70

70:                                               ; preds = %62, %59
  %71 = phi i1 [ false, %59 ], [ %69, %62 ]
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %74 = call i32 @rk_spi_empty_rxfifo(%struct.rk_spi_softc* %73)
  br label %59

75:                                               ; preds = %70
  %76 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %77 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %80 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %75
  %84 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %85 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %6, align 8
  %88 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %83, %75
  %92 = load i32, i32* @EIO, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %83
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %13
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @rk_spi_fill_txfifo(%struct.rk_spi_softc*) #1

declare dso_local i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc*, i32, i64) #1

declare dso_local i32 @msleep(%struct.rk_spi_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @rk_spi_empty_rxfifo(%struct.rk_spi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
