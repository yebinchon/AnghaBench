; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pinmux.c_ti_pinmux_padconf_set_gpiomode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pinmux.c_ti_pinmux_padconf_set_gpiomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.ti_pinmux_padconf* }
%struct.ti_pinmux_padconf = type { i64, i32, i32, i32* }

@ti_pinmux_sc = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ti_pinmux_dev = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_pinmux_padconf_set_gpiomode(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_pinmux_padconf*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @ti_pinmux_sc, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %3, align 4
  br label %59

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_pinmux_dev, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %14, align 8
  store %struct.ti_pinmux_padconf* %15, %struct.ti_pinmux_padconf** %6, align 8
  br label %16

16:                                               ; preds = %28, %12
  %17 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %6, align 8
  %18 = getelementptr inbounds %struct.ti_pinmux_padconf, %struct.ti_pinmux_padconf* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %6, align 8
  %23 = getelementptr inbounds %struct.ti_pinmux_padconf, %struct.ti_pinmux_padconf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %31

28:                                               ; preds = %21
  %29 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %6, align 8
  %30 = getelementptr inbounds %struct.ti_pinmux_padconf, %struct.ti_pinmux_padconf* %29, i32 1
  store %struct.ti_pinmux_padconf* %30, %struct.ti_pinmux_padconf** %6, align 8
  br label %16

31:                                               ; preds = %27, %16
  %32 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %6, align 8
  %33 = getelementptr inbounds %struct.ti_pinmux_padconf, %struct.ti_pinmux_padconf* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %59

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_pinmux_dev, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %39, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %6, align 8
  %45 = getelementptr inbounds %struct.ti_pinmux_padconf, %struct.ti_pinmux_padconf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_pinmux_dev, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %46, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @ti_pinmux_sc, align 4
  %54 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %6, align 8
  %55 = getelementptr inbounds %struct.ti_pinmux_padconf, %struct.ti_pinmux_padconf* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @ti_pinmux_write_2(i32 %53, i32 %56, i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %38, %36, %10
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @ti_pinmux_write_2(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
