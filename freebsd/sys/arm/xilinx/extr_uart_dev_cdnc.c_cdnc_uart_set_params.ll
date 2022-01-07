; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_set_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@CDNC_UART_MODE_REG_6BIT = common dso_local global i32 0, align 4
@CDNC_UART_MODE_REG_7BIT = common dso_local global i32 0, align 4
@CDNC_UART_MODE_REG_8BIT = common dso_local global i32 0, align 4
@CDNC_UART_MODE_REG_STOP2 = common dso_local global i32 0, align 4
@CDNC_UART_MODE_REG_PAR_MARK = common dso_local global i32 0, align 4
@CDNC_UART_MODE_REG_PAR_SPACE = common dso_local global i32 0, align 4
@CDNC_UART_MODE_REG_PAR_ODD = common dso_local global i32 0, align 4
@CDNC_UART_MODE_REG_PAR_EVEN = common dso_local global i32 0, align 4
@CDNC_UART_MODE_REG_PAR_NONE = common dso_local global i32 0, align 4
@CDNC_UART_MODE_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, i32, i32, i32, i32)* @cdnc_uart_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdnc_uart_set_params(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_bas*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %23 [
    i32 6, label %14
    i32 7, label %18
    i32 8, label %22
  ]

14:                                               ; preds = %5
  %15 = load i32, i32* @CDNC_UART_MODE_REG_6BIT, align 4
  %16 = load i32, i32* %12, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %12, align 4
  br label %27

18:                                               ; preds = %5
  %19 = load i32, i32* @CDNC_UART_MODE_REG_7BIT, align 4
  %20 = load i32, i32* %12, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %12, align 4
  br label %27

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %5, %22
  %24 = load i32, i32* @CDNC_UART_MODE_REG_8BIT, align 4
  %25 = load i32, i32* %12, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %23, %18, %14
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @CDNC_UART_MODE_REG_STOP2, align 4
  %32 = load i32, i32* %12, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %11, align 4
  switch i32 %35, label %53 [
    i32 131, label %36
    i32 128, label %40
    i32 129, label %44
    i32 132, label %48
    i32 130, label %52
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* @CDNC_UART_MODE_REG_PAR_MARK, align 4
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %12, align 4
  br label %57

40:                                               ; preds = %34
  %41 = load i32, i32* @CDNC_UART_MODE_REG_PAR_SPACE, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %12, align 4
  br label %57

44:                                               ; preds = %34
  %45 = load i32, i32* @CDNC_UART_MODE_REG_PAR_ODD, align 4
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  br label %57

48:                                               ; preds = %34
  %49 = load i32, i32* @CDNC_UART_MODE_REG_PAR_EVEN, align 4
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %57

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %34, %52
  %54 = load i32, i32* @CDNC_UART_MODE_REG_PAR_NONE, align 4
  %55 = load i32, i32* %12, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %53, %48, %44, %40, %36
  %58 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %59 = load i32, i32* @CDNC_UART_MODE_REG, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @WR4(%struct.uart_bas* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @cdnc_uart_set_baud(%struct.uart_bas* %65, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %6, align 4
  br label %72

71:                                               ; preds = %64, %57
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %69
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @WR4(%struct.uart_bas*, i32, i32) #1

declare dso_local i64 @cdnc_uart_set_baud(%struct.uart_bas*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
