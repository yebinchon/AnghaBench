; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_get_perf_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_get_perf_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_port_get_perf_counter(%struct.fman_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fman_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.fman_port* %0, %struct.fman_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %9 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %23 [
    i32 131, label %11
    i32 130, label %11
    i32 129, label %15
    i32 128, label %15
    i32 132, label %19
    i32 133, label %19
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @get_rx_perf_reg(%struct.fman_port* %12, i32 %13, i32** %6)
  br label %24

15:                                               ; preds = %2, %2
  %16 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @get_tx_perf_reg(%struct.fman_port* %16, i32 %17, i32** %6)
  br label %24

19:                                               ; preds = %2, %2
  %20 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @get_oh_perf_reg(%struct.fman_port* %20, i32 %21, i32** %6)
  br label %24

23:                                               ; preds = %2
  store i32* null, i32** %6, align 8
  br label %24

24:                                               ; preds = %23, %19, %15, %11
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @ioread32be(i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @get_rx_perf_reg(%struct.fman_port*, i32, i32**) #1

declare dso_local i32 @get_tx_perf_reg(%struct.fman_port*, i32, i32**) #1

declare dso_local i32 @get_oh_perf_reg(%struct.fman_port*, i32, i32**) #1

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
