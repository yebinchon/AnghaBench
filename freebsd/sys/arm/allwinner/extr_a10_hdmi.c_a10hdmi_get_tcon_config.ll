; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_get_tcon_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_hdmi.c_a10hdmi_get_tcon_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10hdmi_softc = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"pll3\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pll7\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a10hdmi_softc*, i32*, i32*)* @a10hdmi_get_tcon_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10hdmi_get_tcon_config(%struct.a10hdmi_softc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.a10hdmi_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.a10hdmi_softc* %0, %struct.a10hdmi_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %14 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_get_parent(i32 %15, i32* %10)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %4, align 4
  br label %56

21:                                               ; preds = %3
  %22 = load %struct.a10hdmi_softc*, %struct.a10hdmi_softc** %5, align 8
  %23 = getelementptr inbounds %struct.a10hdmi_softc, %struct.a10hdmi_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_get_freq(i32 %24, i32* %9)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %4, align 4
  br label %56

30:                                               ; preds = %21
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @clk_get_freq(i32 %31, i32* %8)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %4, align 4
  br label %56

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sdiv i32 %38, %39
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i8* @clk_get_name(i32 %42)
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %37
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %37
  %52 = load i32*, i32** %7, align 8
  store i32 0, i32* %52, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32*, i32** %7, align 8
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %51
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %35, %28, %19
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @clk_get_parent(i32, i32*) #1

declare dso_local i32 @clk_get_freq(i32, i32*) #1

declare dso_local i8* @clk_get_name(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
