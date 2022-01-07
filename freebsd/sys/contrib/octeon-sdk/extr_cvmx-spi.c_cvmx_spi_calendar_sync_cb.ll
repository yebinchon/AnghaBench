; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi.c_cvmx_spi_calendar_sync_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi.c_cvmx_spi_calendar_sync_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@CVMX_CLOCK_CORE = common dso_local global i32 0, align 4
@CVMX_SPI_MODE_RX_HALFPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"SPI%d: Rx is synchronized, start sending calendar data\0A\00", align 1
@CVMX_SPI_MODE_TX_HALFPLEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"SPI%d: Waiting to sync on STX[%d] STAT\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"SPI%d: Timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_spi_calendar_sync_cb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %14 = call i32 @cvmx_clock_get_rate(i32 %13)
  %15 = sdiv i32 %14, 1000
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @CVMX_SPI_MODE_RX_HALFPLEX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i8*, i32, ...) @cvmx_dprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @CVMX_SRXX_COM_CTL(i32 %24)
  %26 = call i8* @cvmx_read_csr(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @CVMX_SRXX_COM_CTL(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @cvmx_write_csr(i32 %33, i8* %35)
  br label %37

37:                                               ; preds = %21, %3
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @CVMX_SPI_MODE_TX_HALFPLEX, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i8* null, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @CVMX_STXX_COM_CTL(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @cvmx_write_csr(i32 %47, i8* %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i8*, i32, ...) @cvmx_dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = call i64 (...) @cvmx_get_cycle()
  %55 = load i64, i64* %8, align 8
  %56 = mul i64 1000, %55
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %56, %58
  %60 = add i64 %54, %59
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %73, %42
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @CVMX_SPXX_CLK_STAT(i32 %62)
  %64 = call i8* @cvmx_read_csr(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i8* %64, i8** %65, align 8
  %66 = call i64 (...) @cvmx_get_cycle()
  %67 = load i64, i64* %11, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (i8*, i32, ...) @cvmx_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  store i32 -1, i32* %4, align 4
  br label %80

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %61, label %78

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %37
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %69
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @cvmx_clock_get_rate(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32, ...) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_SRXX_COM_CTL(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_STXX_COM_CTL(i32) #1

declare dso_local i64 @cvmx_get_cycle(...) #1

declare dso_local i32 @CVMX_SPXX_CLK_STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
