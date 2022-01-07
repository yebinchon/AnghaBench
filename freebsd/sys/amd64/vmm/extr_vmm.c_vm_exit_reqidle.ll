; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_exit_reqidle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_exit_reqidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vm_exit = type { i32, i64, i32 }

@VM_EXITCODE_REQIDLE = common dso_local global i32 0, align 4
@VMEXIT_REQIDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_exit_reqidle(%struct.vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_exit*, align 8
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vm*, %struct.vm** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.vm_exit* @vm_exitinfo(%struct.vm* %8, i32 %9)
  store %struct.vm_exit* %10, %struct.vm_exit** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %13 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %15 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @VM_EXITCODE_REQIDLE, align 4
  %17 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %18 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.vm*, %struct.vm** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @VMEXIT_REQIDLE, align 4
  %22 = call i32 @vmm_stat_incr(%struct.vm* %19, i32 %20, i32 %21, i32 1)
  ret void
}

declare dso_local %struct.vm_exit* @vm_exitinfo(%struct.vm*, i32) #1

declare dso_local i32 @vmm_stat_incr(%struct.vm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
