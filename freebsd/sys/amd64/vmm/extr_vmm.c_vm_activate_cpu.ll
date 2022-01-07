; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_activate_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_activate_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"activated\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_activate_cpu(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.vm*, %struct.vm** %4, align 8
  %11 = getelementptr inbounds %struct.vm, %struct.vm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8, %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.vm*, %struct.vm** %4, align 8
  %19 = getelementptr inbounds %struct.vm, %struct.vm* %18, i32 0, i32 1
  %20 = call i64 @CPU_ISSET(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @EBUSY, align 4
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %16
  %25 = load %struct.vm*, %struct.vm** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @VCPU_CTR0(%struct.vm* %25, i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.vm*, %struct.vm** %4, align 8
  %30 = getelementptr inbounds %struct.vm, %struct.vm* %29, i32 0, i32 1
  %31 = call i32 @CPU_SET_ATOMIC(i32 %28, i32* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %22, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @VCPU_CTR0(%struct.vm*, i32, i8*) #1

declare dso_local i32 @CPU_SET_ATOMIC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
