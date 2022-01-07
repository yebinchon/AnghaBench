; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pinmux.c_ti_pinmux_padconf_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pinmux.c_ti_pinmux_padconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_pinmux_padconf = type { i32 }

@ti_pinmux_sc = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_pinmux_padconf_set(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_pinmux_padconf*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @ti_pinmux_sc, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %4, align 4
  br label %26

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call %struct.ti_pinmux_padconf* @ti_pinmux_padconf_from_name(i8* %14)
  store %struct.ti_pinmux_padconf* %15, %struct.ti_pinmux_padconf** %8, align 8
  %16 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %8, align 8
  %17 = icmp eq %struct.ti_pinmux_padconf* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %26

20:                                               ; preds = %13
  %21 = load i32, i32* @ti_pinmux_sc, align 4
  %22 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ti_pinmux_padconf_set_internal(i32 %21, %struct.ti_pinmux_padconf* %22, i8* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %18, %11
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.ti_pinmux_padconf* @ti_pinmux_padconf_from_name(i8*) #1

declare dso_local i32 @ti_pinmux_padconf_set_internal(i32, %struct.ti_pinmux_padconf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
