; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_extint_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_extint_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, %struct.vcpu* }
%struct.vcpu = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"vm_extint_pending: invalid vcpuid %d\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"vm_extint_clear: inconsistent extint_pending state\00", align 1
@VCPU_EXTINT_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_extint_clear(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca %struct.vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu*, align 8
  store %struct.vm* %0, %struct.vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.vm*, %struct.vm** %3, align 8
  %11 = getelementptr inbounds %struct.vm, %struct.vm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8, %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %8
  %18 = load %struct.vm*, %struct.vm** %3, align 8
  %19 = getelementptr inbounds %struct.vm, %struct.vm* %18, i32 0, i32 1
  %20 = load %struct.vcpu*, %struct.vcpu** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %20, i64 %22
  store %struct.vcpu* %23, %struct.vcpu** %5, align 8
  %24 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %25 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %17
  %31 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %32 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.vm*, %struct.vm** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @VCPU_EXTINT_COUNT, align 4
  %36 = call i32 @vmm_stat_incr(%struct.vm* %33, i32 %34, i32 %35, i32 1)
  ret void
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @vmm_stat_incr(%struct.vm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
