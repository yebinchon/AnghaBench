; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pinmux.c_ti_pinmux_padconf_set_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pinmux.c_ti_pinmux_padconf_set_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.ti_pinmux_softc = type { i32 }
%struct.ti_pinmux_padconf = type { i32, i32** }

@ti_pinmux_dev = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Invalid mode \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"setting internal %x for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_pinmux_softc*, %struct.ti_pinmux_padconf*, i8*, i32)* @ti_pinmux_padconf_set_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pinmux_padconf_set_internal(%struct.ti_pinmux_softc* %0, %struct.ti_pinmux_padconf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_pinmux_softc*, align 8
  %7 = alloca %struct.ti_pinmux_padconf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ti_pinmux_softc* %0, %struct.ti_pinmux_softc** %6, align 8
  store %struct.ti_pinmux_padconf* %1, %struct.ti_pinmux_padconf** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_pinmux_dev, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %12, %15
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %42, %4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %20, label %45

20:                                               ; preds = %17
  %21 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %7, align 8
  %22 = getelementptr inbounds %struct.ti_pinmux_padconf, %struct.ti_pinmux_padconf* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %20
  %30 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %7, align 8
  %31 = getelementptr inbounds %struct.ti_pinmux_padconf, %struct.ti_pinmux_padconf* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strcmp(i32* %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %45

41:                                               ; preds = %29, %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %17

45:                                               ; preds = %40, %17
  %46 = load i32, i32* %10, align 4
  %47 = icmp uge i32 %46, 8
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %5, align 4
  br label %76

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_pinmux_dev, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i64, i64* @bootverbose, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = load %struct.ti_pinmux_softc*, %struct.ti_pinmux_softc** %6, align 8
  %64 = getelementptr inbounds %struct.ti_pinmux_softc, %struct.ti_pinmux_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %66, i8* %67)
  br label %69

69:                                               ; preds = %62, %52
  %70 = load %struct.ti_pinmux_softc*, %struct.ti_pinmux_softc** %6, align 8
  %71 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %7, align 8
  %72 = getelementptr inbounds %struct.ti_pinmux_padconf, %struct.ti_pinmux_padconf* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @ti_pinmux_write_2(%struct.ti_pinmux_softc* %70, i32 %73, i32 %74)
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %69, %48
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i8*) #1

declare dso_local i32 @ti_pinmux_write_2(%struct.ti_pinmux_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
