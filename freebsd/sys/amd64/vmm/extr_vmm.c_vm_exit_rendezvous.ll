; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_exit_rendezvous.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_exit_rendezvous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32* }
%struct.vm_exit = type { i32, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"rendezvous not in progress\00", align 1
@VM_EXITCODE_RENDEZVOUS = common dso_local global i32 0, align 4
@VMEXIT_RENDEZVOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_exit_rendezvous(%struct.vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_exit*, align 8
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vm*, %struct.vm** %4, align 8
  %9 = getelementptr inbounds %struct.vm, %struct.vm* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vm*, %struct.vm** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.vm_exit* @vm_exitinfo(%struct.vm* %14, i32 %15)
  store %struct.vm_exit* %16, %struct.vm_exit** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %19 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %21 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @VM_EXITCODE_RENDEZVOUS, align 4
  %23 = load %struct.vm_exit*, %struct.vm_exit** %7, align 8
  %24 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.vm*, %struct.vm** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @VMEXIT_RENDEZVOUS, align 4
  %28 = call i32 @vmm_stat_incr(%struct.vm* %25, i32 %26, i32 %27, i32 1)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.vm_exit* @vm_exitinfo(%struct.vm*, i32) #1

declare dso_local i32 @vmm_stat_incr(%struct.vm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
