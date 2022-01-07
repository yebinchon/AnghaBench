; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_set_baud.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_set_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@CDNC_UART_BAUDDIV_REG = common dso_local global i32 0, align 4
@CDNC_UART_BAUDGEN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, i32)* @cdnc_uart_set_baud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdnc_uart_set_baud(%struct.uart_bas* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 4, i32* %7, align 4
  br label %13

13:                                               ; preds = %67, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %14, 255
  br i1 %15, label %16, label %70

16:                                               ; preds = %13
  %17 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %18 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  %23 = mul nsw i32 %20, %22
  %24 = sdiv i32 %23, 2
  %25 = add nsw i32 %19, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  %29 = mul nsw i32 %26, %28
  %30 = sdiv i32 %25, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %16
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 65535
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %16
  br label %67

37:                                               ; preds = %33
  %38 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %39 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  %44 = mul nsw i32 %41, %43
  %45 = sdiv i32 %40, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %50, %51
  br label %57

53:                                               ; preds = %37
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %54, %55
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i32 [ %52, %49 ], [ %56, %53 ]
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %57
  br label %67

67:                                               ; preds = %66, %36
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %13

70:                                               ; preds = %13
  %71 = load i32, i32* %8, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %75 = load i32, i32* @CDNC_UART_BAUDDIV_REG, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @WR4(%struct.uart_bas* %74, i32 %75, i32 %76)
  %78 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %79 = load i32, i32* @CDNC_UART_BAUDGEN_REG, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @WR4(%struct.uart_bas* %78, i32 %79, i32 %80)
  store i32 0, i32* %3, align 4
  br label %83

82:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %73
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @WR4(%struct.uart_bas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
