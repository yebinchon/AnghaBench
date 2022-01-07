; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_get_rx_perf_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_get_rx_perf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fman_port_rx_bmi_regs }
%struct.fman_port_rx_bmi_regs = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fman_port*, i32, i32**)* @get_rx_perf_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_rx_perf_reg(%struct.fman_port* %0, i32 %1, i32** %2) #0 {
  %4 = alloca %struct.fman_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.fman_port_rx_bmi_regs*, align 8
  store %struct.fman_port* %0, %struct.fman_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %8 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %9 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.fman_port_rx_bmi_regs* %11, %struct.fman_port_rx_bmi_regs** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %37 [
    i32 133, label %13
    i32 128, label %17
    i32 130, label %21
    i32 132, label %25
    i32 131, label %29
    i32 129, label %33
  ]

13:                                               ; preds = %3
  %14 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %15 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %14, i32 0, i32 5
  %16 = load i32**, i32*** %6, align 8
  store i32* %15, i32** %16, align 8
  br label %39

17:                                               ; preds = %3
  %18 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %19 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %18, i32 0, i32 4
  %20 = load i32**, i32*** %6, align 8
  store i32* %19, i32** %20, align 8
  br label %39

21:                                               ; preds = %3
  %22 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %23 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %22, i32 0, i32 3
  %24 = load i32**, i32*** %6, align 8
  store i32* %23, i32** %24, align 8
  br label %39

25:                                               ; preds = %3
  %26 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %27 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %26, i32 0, i32 2
  %28 = load i32**, i32*** %6, align 8
  store i32* %27, i32** %28, align 8
  br label %39

29:                                               ; preds = %3
  %30 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %31 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %30, i32 0, i32 1
  %32 = load i32**, i32*** %6, align 8
  store i32* %31, i32** %32, align 8
  br label %39

33:                                               ; preds = %3
  %34 = load %struct.fman_port_rx_bmi_regs*, %struct.fman_port_rx_bmi_regs** %7, align 8
  %35 = getelementptr inbounds %struct.fman_port_rx_bmi_regs, %struct.fman_port_rx_bmi_regs* %34, i32 0, i32 0
  %36 = load i32**, i32*** %6, align 8
  store i32* %35, i32** %36, align 8
  br label %39

37:                                               ; preds = %3
  %38 = load i32**, i32*** %6, align 8
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %37, %33, %29, %25, %21, %17, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
