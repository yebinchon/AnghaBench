; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vcpu_get_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vcpu_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, %struct.vcpu* }
%struct.vcpu = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"vm_get_run_state: invalid vcpuid %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcpu_get_state(%struct.vm* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vcpu*, align 8
  %8 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.vm*, %struct.vm** %4, align 8
  %14 = getelementptr inbounds %struct.vm, %struct.vm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %11
  %21 = load %struct.vm*, %struct.vm** %4, align 8
  %22 = getelementptr inbounds %struct.vm, %struct.vm* %21, i32 0, i32 1
  %23 = load %struct.vcpu*, %struct.vcpu** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %23, i64 %25
  store %struct.vcpu* %26, %struct.vcpu** %7, align 8
  %27 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %28 = call i32 @vcpu_lock(%struct.vcpu* %27)
  %29 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %30 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %36 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %20
  %40 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %41 = call i32 @vcpu_unlock(%struct.vcpu* %40)
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @vcpu_lock(%struct.vcpu*) #1

declare dso_local i32 @vcpu_unlock(%struct.vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
