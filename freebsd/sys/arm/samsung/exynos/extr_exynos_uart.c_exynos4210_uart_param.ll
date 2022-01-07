; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos_uart.c_exynos4210_uart_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos_uart.c_exynos4210_uart_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@ULCON_LENGTH_5 = common dso_local global i32 0, align 4
@ULCON_LENGTH_6 = common dso_local global i32 0, align 4
@ULCON_LENGTH_7 = common dso_local global i32 0, align 4
@ULCON_LENGTH_8 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ULCON_PARITY_NONE = common dso_local global i32 0, align 4
@ULCON_PARITY_ODD = common dso_local global i32 0, align 4
@ULCON_PARITY_EVEN = common dso_local global i32 0, align 4
@ULCON_STOP = common dso_local global i32 0, align 4
@SSCOM_ULCON = common dso_local global i32 0, align 4
@SSCOM_UBRDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, i32, i32, i32, i32)* @exynos4210_uart_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos4210_uart_param(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_bas*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %31 [
    i32 5, label %15
    i32 6, label %19
    i32 7, label %23
    i32 8, label %27
  ]

15:                                               ; preds = %5
  %16 = load i32, i32* @ULCON_LENGTH_5, align 4
  %17 = load i32, i32* %13, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %13, align 4
  br label %33

19:                                               ; preds = %5
  %20 = load i32, i32* @ULCON_LENGTH_6, align 4
  %21 = load i32, i32* %13, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %13, align 4
  br label %33

23:                                               ; preds = %5
  %24 = load i32, i32* @ULCON_LENGTH_7, align 4
  %25 = load i32, i32* %13, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %13, align 4
  br label %33

27:                                               ; preds = %5
  %28 = load i32, i32* @ULCON_LENGTH_8, align 4
  %29 = load i32, i32* %13, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %13, align 4
  br label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %6, align 4
  br label %71

33:                                               ; preds = %27, %23, %19, %15
  %34 = load i32, i32* %11, align 4
  switch i32 %34, label %48 [
    i32 130, label %35
    i32 129, label %39
    i32 132, label %43
    i32 131, label %47
    i32 128, label %47
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* @ULCON_PARITY_NONE, align 4
  %37 = load i32, i32* %13, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %13, align 4
  br label %50

39:                                               ; preds = %33
  %40 = load i32, i32* @ULCON_PARITY_ODD, align 4
  %41 = load i32, i32* %13, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %13, align 4
  br label %50

43:                                               ; preds = %33
  %44 = load i32, i32* @ULCON_PARITY_EVEN, align 4
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %50

47:                                               ; preds = %33, %33
  br label %48

48:                                               ; preds = %33, %47
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %6, align 4
  br label %71

50:                                               ; preds = %43, %39, %35
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @ULCON_STOP, align 4
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %59 = load i32, i32* @SSCOM_ULCON, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @uart_setreg(%struct.uart_bas* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %64 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sscomspeed(i32 %62, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %68 = load i32, i32* @SSCOM_UBRDIV, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @uart_setreg(%struct.uart_bas* %67, i32 %68, i32 %69)
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %57, %48, %31
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @sscomspeed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
