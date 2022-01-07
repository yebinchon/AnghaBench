; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-gpio.h_cvmx_gpio_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-gpio.h_cvmx_gpio_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@OCTEON_CN61XX = common dso_local global i32 0, align 4
@OCTEON_CN66XX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cvmx_gpio_cfg: Invalid GPIO bit(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @cvmx_gpio_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_gpio_cfg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp sgt i32 %7, 15
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 20
  br i1 %11, label %12, label %43

12:                                               ; preds = %9
  %13 = load i32, i32* @OCTEON_CN61XX, align 4
  %14 = call i64 @OCTEON_IS_MODEL(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @OCTEON_CN66XX, align 4
  %18 = call i64 @OCTEON_IS_MODEL(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @CVMX_GPIO_XBIT_CFGX(i32 %21)
  %23 = call i8* @cvmx_read_csr(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %33

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @CVMX_GPIO_XBIT_CFGX(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @cvmx_write_csr(i32 %35, i8* %37)
  br label %42

39:                                               ; preds = %16
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %33
  br label %62

43:                                               ; preds = %9, %2
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @CVMX_GPIO_BIT_CFGX(i32 %44)
  %46 = call i8* @cvmx_read_csr(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %56

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @CVMX_GPIO_BIT_CFGX(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @cvmx_write_csr(i32 %58, i8* %60)
  br label %62

62:                                               ; preds = %56, %42
  ret void
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GPIO_XBIT_CFGX(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

declare dso_local i32 @CVMX_GPIO_BIT_CFGX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
