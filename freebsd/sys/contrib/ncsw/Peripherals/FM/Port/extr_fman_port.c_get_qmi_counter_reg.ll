; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_get_qmi_counter_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fman_port.c_get_qmi_counter_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { i32, %struct.fman_port_qmi_regs* }
%struct.fman_port_qmi_regs = type { i32, i32, i32, i32 }

@E_FMAN_PORT_TYPE_RX = common dso_local global i32 0, align 4
@E_FMAN_PORT_TYPE_RX_10G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fman_port*, i32, i32**)* @get_qmi_counter_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_qmi_counter_reg(%struct.fman_port* %0, i32 %1, i32** %2) #0 {
  %4 = alloca %struct.fman_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.fman_port_qmi_regs*, align 8
  store %struct.fman_port* %0, %struct.fman_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %8 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %9 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %8, i32 0, i32 1
  %10 = load %struct.fman_port_qmi_regs*, %struct.fman_port_qmi_regs** %9, align 8
  store %struct.fman_port_qmi_regs* %10, %struct.fman_port_qmi_regs** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %73 [
    i32 128, label %12
    i32 129, label %16
    i32 130, label %35
    i32 131, label %54
  ]

12:                                               ; preds = %3
  %13 = load %struct.fman_port_qmi_regs*, %struct.fman_port_qmi_regs** %7, align 8
  %14 = getelementptr inbounds %struct.fman_port_qmi_regs, %struct.fman_port_qmi_regs* %13, i32 0, i32 3
  %15 = load i32**, i32*** %6, align 8
  store i32* %14, i32** %15, align 8
  br label %75

16:                                               ; preds = %3
  %17 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %18 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @E_FMAN_PORT_TYPE_RX, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %24 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @E_FMAN_PORT_TYPE_RX_10G, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %16
  %29 = load i32**, i32*** %6, align 8
  store i32* null, i32** %29, align 8
  br label %34

30:                                               ; preds = %22
  %31 = load %struct.fman_port_qmi_regs*, %struct.fman_port_qmi_regs** %7, align 8
  %32 = getelementptr inbounds %struct.fman_port_qmi_regs, %struct.fman_port_qmi_regs* %31, i32 0, i32 2
  %33 = load i32**, i32*** %6, align 8
  store i32* %32, i32** %33, align 8
  br label %34

34:                                               ; preds = %30, %28
  br label %75

35:                                               ; preds = %3
  %36 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %37 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @E_FMAN_PORT_TYPE_RX, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %43 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @E_FMAN_PORT_TYPE_RX_10G, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %35
  %48 = load i32**, i32*** %6, align 8
  store i32* null, i32** %48, align 8
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.fman_port_qmi_regs*, %struct.fman_port_qmi_regs** %7, align 8
  %51 = getelementptr inbounds %struct.fman_port_qmi_regs, %struct.fman_port_qmi_regs* %50, i32 0, i32 1
  %52 = load i32**, i32*** %6, align 8
  store i32* %51, i32** %52, align 8
  br label %53

53:                                               ; preds = %49, %47
  br label %75

54:                                               ; preds = %3
  %55 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %56 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @E_FMAN_PORT_TYPE_RX, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.fman_port*, %struct.fman_port** %4, align 8
  %62 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @E_FMAN_PORT_TYPE_RX_10G, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60, %54
  %67 = load i32**, i32*** %6, align 8
  store i32* null, i32** %67, align 8
  br label %72

68:                                               ; preds = %60
  %69 = load %struct.fman_port_qmi_regs*, %struct.fman_port_qmi_regs** %7, align 8
  %70 = getelementptr inbounds %struct.fman_port_qmi_regs, %struct.fman_port_qmi_regs* %69, i32 0, i32 0
  %71 = load i32**, i32*** %6, align 8
  store i32* %70, i32** %71, align 8
  br label %72

72:                                               ; preds = %68, %66
  br label %75

73:                                               ; preds = %3
  %74 = load i32**, i32*** %6, align 8
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %73, %72, %53, %34, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
