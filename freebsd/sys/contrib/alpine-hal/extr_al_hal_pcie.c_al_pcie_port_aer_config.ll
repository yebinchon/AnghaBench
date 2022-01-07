; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_aer_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_port_aer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32 }
%struct.al_pcie_aer_params = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_pcie_port_aer_config(%struct.al_pcie_port* %0, %struct.al_pcie_aer_params* %1) #0 {
  %3 = alloca %struct.al_pcie_port*, align 8
  %4 = alloca %struct.al_pcie_aer_params*, align 8
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %3, align 8
  store %struct.al_pcie_aer_params* %1, %struct.al_pcie_aer_params** %4, align 8
  %5 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %6 = call i32 @al_assert(%struct.al_pcie_port* %5)
  %7 = load %struct.al_pcie_aer_params*, %struct.al_pcie_aer_params** %4, align 8
  %8 = bitcast %struct.al_pcie_aer_params* %7 to %struct.al_pcie_port*
  %9 = call i32 @al_assert(%struct.al_pcie_port* %8)
  %10 = load %struct.al_pcie_port*, %struct.al_pcie_port** %3, align 8
  %11 = load %struct.al_pcie_aer_params*, %struct.al_pcie_aer_params** %4, align 8
  %12 = bitcast %struct.al_pcie_aer_params* %11 to %struct.al_pcie_port*
  %13 = call i32 @al_pcie_aer_config_aux(%struct.al_pcie_port* %10, i32 0, %struct.al_pcie_port* %12)
  ret i32 %13
}

declare dso_local i32 @al_assert(%struct.al_pcie_port*) #1

declare dso_local i32 @al_pcie_aer_config_aux(%struct.al_pcie_port*, i32, %struct.al_pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
