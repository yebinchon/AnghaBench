; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_fman_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i32, i32 }
%struct.fman_port_cfg = type { i32 }
%struct.fman_port_params = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_port_init(%struct.fman_port* %0, %struct.fman_port_cfg* %1, %struct.fman_port_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fman_port*, align 8
  %6 = alloca %struct.fman_port_cfg*, align 8
  %7 = alloca %struct.fman_port_params*, align 8
  %8 = alloca i32, align 4
  store %struct.fman_port* %0, %struct.fman_port** %5, align 8
  store %struct.fman_port_cfg* %1, %struct.fman_port_cfg** %6, align 8
  store %struct.fman_port_params* %2, %struct.fman_port_params** %7, align 8
  %9 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %10 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %27 [
    i32 131, label %12
    i32 130, label %12
    i32 129, label %17
    i32 128, label %17
    i32 132, label %22
    i32 133, label %22
  ]

12:                                               ; preds = %3, %3
  %13 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %14 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %6, align 8
  %15 = load %struct.fman_port_params*, %struct.fman_port_params** %7, align 8
  %16 = call i32 @init_bmi_rx(%struct.fman_port* %13, %struct.fman_port_cfg* %14, %struct.fman_port_params* %15)
  store i32 %16, i32* %8, align 4
  br label %30

17:                                               ; preds = %3, %3
  %18 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %19 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %6, align 8
  %20 = load %struct.fman_port_params*, %struct.fman_port_params** %7, align 8
  %21 = call i32 @init_bmi_tx(%struct.fman_port* %18, %struct.fman_port_cfg* %19, %struct.fman_port_params* %20)
  store i32 %21, i32* %8, align 4
  br label %30

22:                                               ; preds = %3, %3
  %23 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %24 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %6, align 8
  %25 = load %struct.fman_port_params*, %struct.fman_port_params** %7, align 8
  %26 = call i32 @init_bmi_oh(%struct.fman_port* %23, %struct.fman_port_cfg* %24, %struct.fman_port_params* %25)
  store i32 %26, i32* %8, align 4
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %47

30:                                               ; preds = %22, %17, %12
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %47

35:                                               ; preds = %30
  %36 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %37 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.fman_port*, %struct.fman_port** %5, align 8
  %42 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %6, align 8
  %43 = load %struct.fman_port_params*, %struct.fman_port_params** %7, align 8
  %44 = call i32 @init_qmi(%struct.fman_port* %41, %struct.fman_port_cfg* %42, %struct.fman_port_params* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %40, %33, %27
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @init_bmi_rx(%struct.fman_port*, %struct.fman_port_cfg*, %struct.fman_port_params*) #1

declare dso_local i32 @init_bmi_tx(%struct.fman_port*, %struct.fman_port_cfg*, %struct.fman_port_params*) #1

declare dso_local i32 @init_bmi_oh(%struct.fman_port*, %struct.fman_port_cfg*, %struct.fman_port_params*) #1

declare dso_local i32 @init_qmi(%struct.fman_port*, %struct.fman_port_cfg*, %struct.fman_port_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
