; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_lapic.c_lapic_set_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm_lapic.c_lapic_set_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.vlapic = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lapic_set_intr(%struct.vm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vlapic*, align 8
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.vm*, %struct.vm** %6, align 8
  %16 = call i32 @vm_get_maxcpus(%struct.vm* %15)
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %42

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 255
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %5, align 4
  br label %42

28:                                               ; preds = %23
  %29 = load %struct.vm*, %struct.vm** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.vlapic* @vm_lapic(%struct.vm* %29, i32 %30)
  store %struct.vlapic* %31, %struct.vlapic** %10, align 8
  %32 = load %struct.vlapic*, %struct.vlapic** %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @vlapic_set_intr_ready(%struct.vlapic* %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.vm*, %struct.vm** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @vcpu_notify_event(%struct.vm* %38, i32 %39, i32 1)
  br label %41

41:                                               ; preds = %37, %28
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %26, %18
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @vm_get_maxcpus(%struct.vm*) #1

declare dso_local %struct.vlapic* @vm_lapic(%struct.vm*, i32) #1

declare dso_local i64 @vlapic_set_intr_ready(%struct.vlapic*, i32, i32) #1

declare dso_local i32 @vcpu_notify_event(%struct.vm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
