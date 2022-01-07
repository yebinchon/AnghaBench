; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_fb.c_a10fb_setup_pll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_fb.c_a10fb_setup_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10fb_softc = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"lcd_ch1_sclk1\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot find clk 'lcd_ch1_sclk1'\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"lcd_ch1_sclk2\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"cannot find clk 'lcd_ch1_sclk2'\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"cannot set lcd ch1 frequency\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"cannot enable lcd ch1 sclk2\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"cannot enable lcd ch1 sclk1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a10fb_softc*, i32)* @a10fb_setup_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10fb_setup_pll(%struct.a10fb_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.a10fb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.a10fb_softc* %0, %struct.a10fb_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %10 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_get_by_ofw_name(i32 %11, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %17 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %69

21:                                               ; preds = %2
  %22 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %23 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_get_by_ofw_name(i32 %24, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %30 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %69

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @clk_set_freq(i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %42 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %69

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @clk_enable(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %53 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %69

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @clk_enable(i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.a10fb_softc*, %struct.a10fb_softc** %4, align 8
  %64 = getelementptr inbounds %struct.a10fb_softc, %struct.a10fb_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %62, %51, %40, %28, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
