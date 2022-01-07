; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_handle_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_handle_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32, i32*, i32, %struct.vcpu* }
%struct.vcpu = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"All vcpus suspended\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Sleeping during suspend\00", align 1
@VCPU_SLEEPING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"vmsusp\00", align 1
@hz = common dso_local global i32 0, align 4
@VCPU_FROZEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Rendezvous during suspend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm*, i32, i32*)* @vm_handle_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_handle_suspend(%struct.vm* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vcpu*, align 8
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.vm*, %struct.vm** %4, align 8
  %11 = getelementptr inbounds %struct.vm, %struct.vm* %10, i32 0, i32 4
  %12 = load %struct.vcpu*, %struct.vcpu** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %12, i64 %14
  store %struct.vcpu* %15, %struct.vcpu** %9, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.vm*, %struct.vm** %4, align 8
  %18 = getelementptr inbounds %struct.vm, %struct.vm* %17, i32 0, i32 1
  %19 = call i32 @CPU_SET_ATOMIC(i32 %16, i32* %18)
  %20 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %21 = call i32 @vcpu_lock(%struct.vcpu* %20)
  br label %22

22:                                               ; preds = %3, %66
  %23 = load %struct.vm*, %struct.vm** %4, align 8
  %24 = getelementptr inbounds %struct.vm, %struct.vm* %23, i32 0, i32 1
  %25 = load %struct.vm*, %struct.vm** %4, align 8
  %26 = getelementptr inbounds %struct.vm, %struct.vm* %25, i32 0, i32 3
  %27 = call i64 @CPU_CMP(i32* %24, i32* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.vm*, %struct.vm** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @VCPU_CTR0(%struct.vm* %30, i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %67

33:                                               ; preds = %22
  %34 = load %struct.vm*, %struct.vm** %4, align 8
  %35 = getelementptr inbounds %struct.vm, %struct.vm* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.vm*, %struct.vm** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @VCPU_CTR0(%struct.vm* %39, i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.vm*, %struct.vm** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @VCPU_SLEEPING, align 4
  %45 = call i32 @vcpu_require_state_locked(%struct.vm* %42, i32 %43, i32 %44)
  %46 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %47 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %48 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %47, i32 0, i32 0
  %49 = load i32, i32* @hz, align 4
  %50 = call i32 @msleep_spin(%struct.vcpu* %46, i32* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.vm*, %struct.vm** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @VCPU_FROZEN, align 4
  %54 = call i32 @vcpu_require_state_locked(%struct.vm* %51, i32 %52, i32 %53)
  br label %66

55:                                               ; preds = %33
  %56 = load %struct.vm*, %struct.vm** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @VCPU_CTR0(%struct.vm* %56, i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %60 = call i32 @vcpu_unlock(%struct.vcpu* %59)
  %61 = load %struct.vm*, %struct.vm** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @vm_handle_rendezvous(%struct.vm* %61, i32 %62)
  %64 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %65 = call i32 @vcpu_lock(%struct.vcpu* %64)
  br label %66

66:                                               ; preds = %55, %38
  br label %22

67:                                               ; preds = %29
  %68 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %69 = call i32 @vcpu_unlock(%struct.vcpu* %68)
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %87, %67
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.vm*, %struct.vm** %4, align 8
  %73 = getelementptr inbounds %struct.vm, %struct.vm* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.vm*, %struct.vm** %4, align 8
  %79 = getelementptr inbounds %struct.vm, %struct.vm* %78, i32 0, i32 1
  %80 = call i64 @CPU_ISSET(i32 %77, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.vm*, %struct.vm** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @vcpu_notify_event(%struct.vm* %83, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %70

90:                                               ; preds = %70
  %91 = load i32*, i32** %6, align 8
  store i32 1, i32* %91, align 4
  ret i32 0
}

declare dso_local i32 @CPU_SET_ATOMIC(i32, i32*) #1

declare dso_local i32 @vcpu_lock(%struct.vcpu*) #1

declare dso_local i64 @CPU_CMP(i32*, i32*) #1

declare dso_local i32 @VCPU_CTR0(%struct.vm*, i32, i8*) #1

declare dso_local i32 @vcpu_require_state_locked(%struct.vm*, i32, i32) #1

declare dso_local i32 @msleep_spin(%struct.vcpu*, i32*, i8*, i32) #1

declare dso_local i32 @vcpu_unlock(%struct.vcpu*) #1

declare dso_local i32 @vm_handle_rendezvous(%struct.vm*, i32) #1

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @vcpu_notify_event(%struct.vm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
