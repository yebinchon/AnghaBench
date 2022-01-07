; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_suspend_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_suspend_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_suspend_cpu(%struct.vm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, -1
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.vm*, %struct.vm** %4, align 8
  %12 = getelementptr inbounds %struct.vm, %struct.vm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9, %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %9
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load %struct.vm*, %struct.vm** %4, align 8
  %22 = getelementptr inbounds %struct.vm, %struct.vm* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vm*, %struct.vm** %4, align 8
  %25 = getelementptr inbounds %struct.vm, %struct.vm* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %43, %20
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.vm*, %struct.vm** %4, align 8
  %29 = getelementptr inbounds %struct.vm, %struct.vm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.vm*, %struct.vm** %4, align 8
  %35 = getelementptr inbounds %struct.vm, %struct.vm* %34, i32 0, i32 2
  %36 = call i64 @CPU_ISSET(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.vm*, %struct.vm** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @vcpu_notify_event(%struct.vm* %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %26

46:                                               ; preds = %26
  br label %63

47:                                               ; preds = %17
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.vm*, %struct.vm** %4, align 8
  %50 = getelementptr inbounds %struct.vm, %struct.vm* %49, i32 0, i32 2
  %51 = call i64 @CPU_ISSET(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %3, align 4
  br label %64

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.vm*, %struct.vm** %4, align 8
  %58 = getelementptr inbounds %struct.vm, %struct.vm* %57, i32 0, i32 1
  %59 = call i32 @CPU_SET_ATOMIC(i32 %56, i32* %58)
  %60 = load %struct.vm*, %struct.vm** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @vcpu_notify_event(%struct.vm* %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %55, %46
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %53, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @vcpu_notify_event(%struct.vm*, i32, i32) #1

declare dso_local i32 @CPU_SET_ATOMIC(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
