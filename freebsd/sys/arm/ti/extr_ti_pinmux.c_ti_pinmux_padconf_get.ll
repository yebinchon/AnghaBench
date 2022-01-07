; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pinmux.c_ti_pinmux_padconf_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pinmux.c_ti_pinmux_padconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.ti_pinmux_padconf = type { i8**, i32 }

@ti_pinmux_sc = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ti_pinmux_dev = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_pinmux_padconf_get(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ti_pinmux_padconf*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @ti_pinmux_sc, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %4, align 4
  br label %53

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct.ti_pinmux_padconf* @ti_pinmux_padconf_from_name(i8* %15)
  store %struct.ti_pinmux_padconf* %16, %struct.ti_pinmux_padconf** %8, align 8
  %17 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %8, align 8
  %18 = icmp eq %struct.ti_pinmux_padconf* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %14
  %22 = load i32, i32* @ti_pinmux_sc, align 4
  %23 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %8, align 8
  %24 = getelementptr inbounds %struct.ti_pinmux_padconf, %struct.ti_pinmux_padconf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @ti_pinmux_read_2(i32 %22, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_pinmux_dev, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %30, %33
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %29, %21
  %38 = load i8**, i8*** %6, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %8, align 8
  %42 = getelementptr inbounds %struct.ti_pinmux_padconf, %struct.ti_pinmux_padconf* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_pinmux_dev, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = and i64 %44, %47
  %49 = getelementptr inbounds i8*, i8** %43, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %6, align 8
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %40, %37
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %19, %12
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.ti_pinmux_padconf* @ti_pinmux_padconf_from_name(i8*) #1

declare dso_local i64 @ti_pinmux_read_2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
