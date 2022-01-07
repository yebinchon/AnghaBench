; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vcpu_notify_event_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vcpu_notify_event_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu = type { i32, i64, i32 }

@VCPU_RUNNING = common dso_local global i64 0, align 8
@NOCPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"vcpu running on invalid hostcpu\00", align 1
@curcpu = common dso_local global i32 0, align 4
@vmm_ipinum = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"vcpu state %d not consistent with hostcpu %d\00", align 1
@VCPU_SLEEPING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu*, i32)* @vcpu_notify_event_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcpu_notify_event_locked(%struct.vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vcpu* %0, %struct.vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vcpu*, %struct.vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.vcpu*, %struct.vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VCPU_RUNNING, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NOCPU, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @curcpu, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.vcpu*, %struct.vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @vmm_ipinum, align 4
  %32 = call i32 @vlapic_post_intr(i32 %29, i32 %30, i32 %31)
  br label %37

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @vmm_ipinum, align 4
  %36 = call i32 @ipi_cpu(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %26
  br label %39

38:                                               ; preds = %14
  br label %39

39:                                               ; preds = %38, %37
  br label %61

40:                                               ; preds = %2
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @NOCPU, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load %struct.vcpu*, %struct.vcpu** %3, align 8
  %46 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @KASSERT(i32 %44, i8* %50)
  %52 = load %struct.vcpu*, %struct.vcpu** %3, align 8
  %53 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VCPU_SLEEPING, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %40
  %58 = load %struct.vcpu*, %struct.vcpu** %3, align 8
  %59 = call i32 @wakeup_one(%struct.vcpu* %58)
  br label %60

60:                                               ; preds = %57, %40
  br label %61

61:                                               ; preds = %60, %39
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vlapic_post_intr(i32, i32, i32) #1

declare dso_local i32 @ipi_cpu(i32, i32) #1

declare dso_local i32 @wakeup_one(%struct.vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
