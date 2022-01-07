; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_set_topology.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_set_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_cpu_topology = type { i8*, i8*, i8*, i8* }

@VM_SET_TOPOLOGY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_set_topology(%struct.vmctx* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.vmctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vm_cpu_topology, align 8
  store %struct.vmctx* %0, %struct.vmctx** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = call i32 @bzero(%struct.vm_cpu_topology* %11, i32 32)
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds %struct.vm_cpu_topology, %struct.vm_cpu_topology* %11, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds %struct.vm_cpu_topology, %struct.vm_cpu_topology* %11, i32 0, i32 2
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = getelementptr inbounds %struct.vm_cpu_topology, %struct.vm_cpu_topology* %11, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds %struct.vm_cpu_topology, %struct.vm_cpu_topology* %11, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load %struct.vmctx*, %struct.vmctx** %6, align 8
  %22 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VM_SET_TOPOLOGY, align 4
  %25 = call i32 @ioctl(i32 %23, i32 %24, %struct.vm_cpu_topology* %11)
  ret i32 %25
}

declare dso_local i32 @bzero(%struct.vm_cpu_topology*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.vm_cpu_topology*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
