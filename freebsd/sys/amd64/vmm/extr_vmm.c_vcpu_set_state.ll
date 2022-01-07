; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vcpu_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vcpu_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, %struct.vcpu* }
%struct.vcpu = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"vm_set_run_state: invalid vcpuid %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcpu_set_state(%struct.vm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vcpu*, align 8
  store %struct.vm* %0, %struct.vm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.vm*, %struct.vm** %5, align 8
  %16 = getelementptr inbounds %struct.vm, %struct.vm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.vm*, %struct.vm** %5, align 8
  %24 = getelementptr inbounds %struct.vm, %struct.vm* %23, i32 0, i32 1
  %25 = load %struct.vcpu*, %struct.vcpu** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %25, i64 %27
  store %struct.vcpu* %28, %struct.vcpu** %10, align 8
  %29 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %30 = call i32 @vcpu_lock(%struct.vcpu* %29)
  %31 = load %struct.vm*, %struct.vm** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @vcpu_set_state_locked(%struct.vm* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %37 = call i32 @vcpu_unlock(%struct.vcpu* %36)
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @vcpu_lock(%struct.vcpu*) #1

declare dso_local i32 @vcpu_set_state_locked(%struct.vm*, i32, i32, i32) #1

declare dso_local i32 @vcpu_unlock(%struct.vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
