; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pinmux.c_ti_pinmux_configure_pins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pinmux.c_ti_pinmux_configure_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_pinmux_softc = type { i32 }
%struct.pincfg = type { i32, i32 }

@ti_pinmux_configure_pins.sc = internal global %struct.ti_pinmux_softc* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"pinctrl-single,pins\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%16s: muxreg 0x%04x muxval 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ti_pinmux_configure_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pinmux_configure_pins(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pincfg*, align 8
  %7 = alloca %struct.pincfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.ti_pinmux_softc* @device_get_softc(i32 %12)
  store %struct.ti_pinmux_softc* %13, %struct.ti_pinmux_softc** @ti_pinmux_configure_pins.sc, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @OF_node_from_xref(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = bitcast %struct.pincfg** %6 to i8**
  %18 = call i32 @OF_getencprop_alloc_multi(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 8, i8** %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOENT, align 4
  store i32 %22, i32* %3, align 4
  br label %65

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %65

27:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  %28 = load %struct.pincfg*, %struct.pincfg** %6, align 8
  store %struct.pincfg* %28, %struct.pincfg** %7, align 8
  br label %29

29:                                               ; preds = %57, %27
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load i64, i64* @bootverbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = bitcast [32 x i8]* %11 to i8**
  %39 = call i32 @OF_getprop(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %38, i32 32)
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %41 = load %struct.pincfg*, %struct.pincfg** %7, align 8
  %42 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pincfg*, %struct.pincfg** %7, align 8
  %45 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %36, %33
  %49 = load %struct.ti_pinmux_softc*, %struct.ti_pinmux_softc** @ti_pinmux_configure_pins.sc, align 8
  %50 = load %struct.pincfg*, %struct.pincfg** %7, align 8
  %51 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pincfg*, %struct.pincfg** %7, align 8
  %54 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ti_pinmux_write_2(%struct.ti_pinmux_softc* %49, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  %60 = load %struct.pincfg*, %struct.pincfg** %7, align 8
  %61 = getelementptr inbounds %struct.pincfg, %struct.pincfg* %60, i32 1
  store %struct.pincfg* %61, %struct.pincfg** %7, align 8
  br label %29

62:                                               ; preds = %29
  %63 = load %struct.pincfg*, %struct.pincfg** %6, align 8
  %64 = call i32 @OF_prop_free(%struct.pincfg* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %26, %21
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.ti_pinmux_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i32 @OF_getencprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8**, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i32 @ti_pinmux_write_2(%struct.ti_pinmux_softc*, i32, i32) #1

declare dso_local i32 @OF_prop_free(%struct.pincfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
