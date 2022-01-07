; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pinmux.c_ti_pinmux_padconf_from_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pinmux.c_ti_pinmux_padconf_from_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ti_pinmux_padconf* }
%struct.ti_pinmux_padconf = type { i32* }

@ti_pinmux_dev = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ti_pinmux_padconf* (i8*)* @ti_pinmux_padconf_from_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ti_pinmux_padconf* @ti_pinmux_padconf_from_name(i8* %0) #0 {
  %2 = alloca %struct.ti_pinmux_padconf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ti_pinmux_padconf*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_pinmux_dev, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %6, align 8
  store %struct.ti_pinmux_padconf* %7, %struct.ti_pinmux_padconf** %4, align 8
  br label %8

8:                                                ; preds = %22, %1
  %9 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %4, align 8
  %10 = getelementptr inbounds %struct.ti_pinmux_padconf, %struct.ti_pinmux_padconf* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %4, align 8
  %16 = getelementptr inbounds %struct.ti_pinmux_padconf, %struct.ti_pinmux_padconf* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @strcmp(i8* %14, i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %4, align 8
  store %struct.ti_pinmux_padconf* %21, %struct.ti_pinmux_padconf** %2, align 8
  br label %26

22:                                               ; preds = %13
  %23 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %4, align 8
  %24 = getelementptr inbounds %struct.ti_pinmux_padconf, %struct.ti_pinmux_padconf* %23, i32 1
  store %struct.ti_pinmux_padconf* %24, %struct.ti_pinmux_padconf** %4, align 8
  br label %8

25:                                               ; preds = %8
  store %struct.ti_pinmux_padconf* null, %struct.ti_pinmux_padconf** %2, align 8
  br label %26

26:                                               ; preds = %25, %20
  %27 = load %struct.ti_pinmux_padconf*, %struct.ti_pinmux_padconf** %2, align 8
  ret %struct.ti_pinmux_padconf* %27
}

declare dso_local i64 @strcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
