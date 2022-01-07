; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_set_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_set_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, %struct.vcpu*, i32 }
%struct.vcpu = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VM_REG_LAST = common dso_local global i32 0, align 4
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Setting nextrip to %#lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_set_register(%struct.vm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vcpu*, align 8
  %11 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.vm*, %struct.vm** %6, align 8
  %17 = getelementptr inbounds %struct.vm, %struct.vm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %58

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @VM_REG_LAST, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %5, align 4
  br label %58

28:                                               ; preds = %22
  %29 = load %struct.vm*, %struct.vm** %6, align 8
  %30 = getelementptr inbounds %struct.vm, %struct.vm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @VMSETREG(i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %28
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %58

44:                                               ; preds = %38
  %45 = load %struct.vm*, %struct.vm** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @VCPU_CTR1(%struct.vm* %45, i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.vm*, %struct.vm** %6, align 8
  %50 = getelementptr inbounds %struct.vm, %struct.vm* %49, i32 0, i32 1
  %51 = load %struct.vcpu*, %struct.vcpu** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %51, i64 %53
  store %struct.vcpu* %54, %struct.vcpu** %10, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.vcpu*, %struct.vcpu** %10, align 8
  %57 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %44, %42, %26, %20
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @VMSETREG(i32, i32, i32, i32) #1

declare dso_local i32 @VCPU_CTR1(%struct.vm*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
