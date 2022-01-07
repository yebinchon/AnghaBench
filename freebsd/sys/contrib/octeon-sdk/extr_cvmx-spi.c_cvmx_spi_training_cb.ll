; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi.c_cvmx_spi_training_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-spi.c_cvmx_spi_training_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@CVMX_CLOCK_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SPI%d: Waiting for training\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"SPI%d: Timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_spi_training_cb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %15 = call i32 @cvmx_clock_get_rate(i32 %14)
  %16 = sdiv i32 %15, 1000
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %10, align 8
  %18 = call i64 (...) @cvmx_get_cycle()
  %19 = load i64, i64* %10, align 8
  %20 = mul i64 1000, %19
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %20, %22
  %24 = add i64 %18, %23
  store i64 %24, i64* %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i8* null, i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 8
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 16, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  store i32 1, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @CVMX_SPXX_CLK_CTL(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @cvmx_write_csr(i32 %45, i8* %47)
  %49 = load i64, i64* %10, align 8
  %50 = mul i64 1000, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @cvmx_wait(i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @CVMX_SPXX_TRN4_CTL(i32 %53)
  %55 = call i8* @cvmx_read_csr(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @CVMX_SPXX_TRN4_CTL(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @cvmx_write_csr(i32 %60, i8* %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i64, i64* %10, align 8
  %67 = mul i64 1000, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @cvmx_wait(i32 %68)
  %70 = call i64 (...) @cvmx_get_cycle()
  %71 = load i64, i64* %10, align 8
  %72 = mul i64 1000, %71
  %73 = mul i64 %72, 600
  %74 = add i64 %70, %73
  store i64 %74, i64* %11, align 8
  store i32 500, i32* %12, align 4
  br label %75

75:                                               ; preds = %105, %3
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @CVMX_SPXX_CLK_STAT(i32 %76)
  %78 = call i8* @cvmx_read_csr(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store i8* %78, i8** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %75
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @CVMX_SPXX_CLK_STAT(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @cvmx_write_csr(i32 %91, i8* %93)
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %87, %84, %75
  %98 = call i64 (...) @cvmx_get_cycle()
  %99 = load i64, i64* %11, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  store i32 -1, i32* %4, align 4
  br label %111

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %75, label %110

110:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %101
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @cvmx_clock_get_rate(i32) #1

declare dso_local i64 @cvmx_get_cycle(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_SPXX_CLK_CTL(i32) #1

declare dso_local i32 @cvmx_wait(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_SPXX_TRN4_CTL(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

declare dso_local i32 @CVMX_SPXX_CLK_STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
