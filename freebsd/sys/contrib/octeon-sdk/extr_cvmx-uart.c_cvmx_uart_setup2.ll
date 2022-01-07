; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-uart.c_cvmx_uart_setup2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-uart.c_cvmx_uart_setup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i32 }

@CVMX_UART_BITS8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_uart_setup2(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  store i32 1, i32* %19, align 4
  %20 = call i64 (...) @cvmx_uart_simulator_p()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %34

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 8, %25
  %27 = add nsw i32 %24, %26
  %28 = sext i32 %27 to i64
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 16, %29
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %28, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %23, %22
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @CVMX_MIO_UARTX_FCR(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cvmx_write_csr(i32 %36, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = call i64 (...) @cvmx_uart_simulator_p()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %52

49:                                               ; preds = %43, %34
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @CVMX_MIO_UARTX_LSR(i32 %55)
  %57 = call i32 @cvmx_read_csr(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load i32, i32* @CVMX_UART_BITS8, align 4
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @CVMX_MIO_UARTX_LCR(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @cvmx_write_csr(i32 %71, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @CVMX_MIO_UARTX_DLL(i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 255
  %79 = call i32 @cvmx_write_csr(i32 %76, i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @CVMX_MIO_UARTX_DLH(i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %82, 8
  %84 = and i32 %83, 255
  %85 = call i32 @cvmx_write_csr(i32 %81, i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @CVMX_MIO_UARTX_LCR(i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @cvmx_write_csr(i32 %89, i32 %91)
  %93 = call i64 (...) @cvmx_uart_simulator_p()
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %114, label %95

95:                                               ; preds = %52
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @CVMX_MF_CYCLE(i64 %96)
  %98 = load i32, i32* %7, align 4
  %99 = mul nsw i32 2, %98
  %100 = mul nsw i32 %99, 16
  %101 = add nsw i32 %100, 10000
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %11, align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* %11, align 8
  br label %105

105:                                              ; preds = %95, %112
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @CVMX_MF_CYCLE(i64 %106)
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %11, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %113

112:                                              ; preds = %105
  br label %105

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113, %52
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @CVMX_MIO_UARTX_MCR(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @cvmx_write_csr(i32 %116, i32 %118)
  ret i32 0
}

declare dso_local i64 @cvmx_uart_simulator_p(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_MIO_UARTX_FCR(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIO_UARTX_LSR(i32) #1

declare dso_local i32 @CVMX_MIO_UARTX_LCR(i32) #1

declare dso_local i32 @CVMX_MIO_UARTX_DLL(i32) #1

declare dso_local i32 @CVMX_MIO_UARTX_DLH(i32) #1

declare dso_local i32 @CVMX_MF_CYCLE(i64) #1

declare dso_local i32 @CVMX_MIO_UARTX_MCR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
