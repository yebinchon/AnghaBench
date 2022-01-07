; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_set_tmr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_set_tmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i64, i32 }
%struct.vlapic_vtx = type { %struct.vmx* }
%struct.vmx = type { %struct.vmcs* }
%struct.vmcs = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid vector %d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"vmx_set_tmr: vcpu cannot be running\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlapic*, i32, i32)* @vmx_set_tmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_set_tmr(%struct.vlapic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vlapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlapic_vtx*, align 8
  %8 = alloca %struct.vmx*, align 8
  %9 = alloca %struct.vmcs*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.vlapic* %0, %struct.vlapic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 255
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i1 [ false, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @KASSERT(i32 %19, i8* %22)
  %24 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %25 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %28 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @vcpu_is_running(i32 %26, i64 %29, i32* null)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %36 = bitcast %struct.vlapic* %35 to %struct.vlapic_vtx*
  store %struct.vlapic_vtx* %36, %struct.vlapic_vtx** %7, align 8
  %37 = load %struct.vlapic_vtx*, %struct.vlapic_vtx** %7, align 8
  %38 = getelementptr inbounds %struct.vlapic_vtx, %struct.vlapic_vtx* %37, i32 0, i32 0
  %39 = load %struct.vmx*, %struct.vmx** %38, align 8
  store %struct.vmx* %39, %struct.vmx** %8, align 8
  %40 = load %struct.vmx*, %struct.vmx** %8, align 8
  %41 = getelementptr inbounds %struct.vmx, %struct.vmx* %40, i32 0, i32 0
  %42 = load %struct.vmcs*, %struct.vmcs** %41, align 8
  %43 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %44 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.vmcs, %struct.vmcs* %42, i64 %45
  store %struct.vmcs* %46, %struct.vmcs** %9, align 8
  %47 = load i32, i32* %5, align 4
  %48 = srem i32 %47, 64
  %49 = zext i32 %48 to i64
  %50 = shl i64 1, %49
  store i64 %50, i64* %10, align 8
  %51 = load %struct.vmcs*, %struct.vmcs** %9, align 8
  %52 = call i32 @VMPTRLD(%struct.vmcs* %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @VMCS_EOI_EXIT(i32 %53)
  %55 = call i64 @vmcs_read(i32 %54)
  store i64 %55, i64* %11, align 8
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %17
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %11, align 8
  br label %67

62:                                               ; preds = %17
  %63 = load i64, i64* %10, align 8
  %64 = xor i64 %63, -1
  %65 = load i64, i64* %11, align 8
  %66 = and i64 %65, %64
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @VMCS_EOI_EXIT(i32 %68)
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @vmcs_write(i32 %69, i64 %70)
  %72 = load %struct.vmcs*, %struct.vmcs** %9, align 8
  %73 = call i32 @VMCLEAR(%struct.vmcs* %72)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vcpu_is_running(i32, i64, i32*) #1

declare dso_local i32 @VMPTRLD(%struct.vmcs*) #1

declare dso_local i64 @vmcs_read(i32) #1

declare dso_local i32 @VMCS_EOI_EXIT(i32) #1

declare dso_local i32 @vmcs_write(i32, i64) #1

declare dso_local i32 @VMCLEAR(%struct.vmcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
