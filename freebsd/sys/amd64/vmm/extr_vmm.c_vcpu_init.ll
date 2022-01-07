; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vcpu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32, %struct.vcpu* }
%struct.vcpu = type { i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"vcpu_init: invalid vcpu %d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"vcpu %d already initialized\00", align 1
@VCPU_IDLE = common dso_local global i32 0, align 4
@NOCPU = common dso_local global i32 0, align 4
@X2APIC_DISABLED = common dso_local global i32 0, align 4
@XFEATURE_ENABLED_X87 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm*, i32, i32)* @vcpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcpu_init(%struct.vm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vcpu*, align 8
  store %struct.vm* %0, %struct.vm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.vm*, %struct.vm** %4, align 8
  %13 = getelementptr inbounds %struct.vm, %struct.vm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i1 [ false, %3 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %18, i8* %21)
  %23 = load %struct.vm*, %struct.vm** %4, align 8
  %24 = getelementptr inbounds %struct.vm, %struct.vm* %23, i32 0, i32 2
  %25 = load %struct.vcpu*, %struct.vcpu** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %25, i64 %27
  store %struct.vcpu* %28, %struct.vcpu** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %16
  %32 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %33 = call i32 @vcpu_lock_initialized(%struct.vcpu* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @KASSERT(i32 %36, i8* %39)
  %41 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %42 = call i32 @vcpu_lock_init(%struct.vcpu* %41)
  %43 = load i32, i32* @VCPU_IDLE, align 4
  %44 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %45 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @NOCPU, align 4
  %47 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %48 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 4
  %49 = call i32 (...) @fpu_save_area_alloc()
  %50 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %51 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = call i32 (...) @vmm_stat_alloc()
  %53 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %54 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %31, %16
  %56 = load %struct.vm*, %struct.vm** %4, align 8
  %57 = getelementptr inbounds %struct.vm, %struct.vm* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @VLAPIC_INIT(i32 %58, i32 %59)
  %61 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %62 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 8
  %63 = load %struct.vm*, %struct.vm** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @X2APIC_DISABLED, align 4
  %66 = call i32 @vm_set_x2apic_state(%struct.vm* %63, i32 %64, i32 %65)
  %67 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %68 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %67, i32 0, i32 7
  store i64 0, i64* %68, align 8
  %69 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %70 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %69, i32 0, i32 6
  store i64 0, i64* %70, align 8
  %71 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %72 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %74 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  %75 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %76 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @XFEATURE_ENABLED_X87, align 4
  %78 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %79 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %81 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fpu_save_area_reset(i32 %82)
  %84 = load %struct.vcpu*, %struct.vcpu** %7, align 8
  %85 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @vmm_stat_init(i32 %86)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vcpu_lock_initialized(%struct.vcpu*) #1

declare dso_local i32 @vcpu_lock_init(%struct.vcpu*) #1

declare dso_local i32 @fpu_save_area_alloc(...) #1

declare dso_local i32 @vmm_stat_alloc(...) #1

declare dso_local i32 @VLAPIC_INIT(i32, i32) #1

declare dso_local i32 @vm_set_x2apic_state(%struct.vm*, i32, i32) #1

declare dso_local i32 @fpu_save_area_reset(i32) #1

declare dso_local i32 @vmm_stat_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
