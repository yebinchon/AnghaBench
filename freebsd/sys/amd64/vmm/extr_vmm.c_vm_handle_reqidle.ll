; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_handle_reqidle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_handle_reqidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { %struct.vcpu* }
%struct.vcpu = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"invalid vcpu reqidle %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm*, i32, i32*)* @vm_handle_reqidle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_handle_reqidle(%struct.vm* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vcpu*, align 8
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.vm*, %struct.vm** %4, align 8
  %9 = getelementptr inbounds %struct.vm, %struct.vm* %8, i32 0, i32 0
  %10 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %10, i64 %12
  store %struct.vcpu* %13, %struct.vcpu** %7, align 8
  %14 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %15 = call i32 @vcpu_lock(%struct.vcpu* %14)
  %16 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %17 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %20 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @KASSERT(i64 %18, i8* %22)
  %24 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %25 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %27 = call i32 @vcpu_unlock(%struct.vcpu* %26)
  %28 = load i32*, i32** %6, align 8
  store i32 1, i32* %28, align 4
  ret i32 0
}

declare dso_local i32 @vcpu_lock(%struct.vcpu*) #1

declare dso_local i32 @KASSERT(i64, i8*) #1

declare dso_local i32 @vcpu_unlock(%struct.vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
