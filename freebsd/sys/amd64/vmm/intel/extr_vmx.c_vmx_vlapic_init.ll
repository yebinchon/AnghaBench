; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_vlapic_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_vlapic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, %struct.TYPE_2__, %struct.LAPIC*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.LAPIC = type { i32 }
%struct.vmx = type { i32*, i32*, i32 }
%struct.vlapic_vtx = type { %struct.vmx*, i32* }

@M_VLAPIC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@virtual_interrupt_delivery = common dso_local global i64 0, align 8
@vmx_set_intr_ready = common dso_local global i32 0, align 4
@vmx_pending_intr = common dso_local global i32 0, align 4
@vmx_intr_accepted = common dso_local global i32 0, align 4
@vmx_set_tmr = common dso_local global i32 0, align 4
@vmx_enable_x2apic_mode = common dso_local global i32 0, align 4
@posted_interrupts = common dso_local global i64 0, align 8
@vmx_post_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlapic* (i8*, i32)* @vmx_vlapic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlapic* @vmx_vlapic_init(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmx*, align 8
  %6 = alloca %struct.vlapic*, align 8
  %7 = alloca %struct.vlapic_vtx*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.vmx*
  store %struct.vmx* %9, %struct.vmx** %5, align 8
  %10 = load i32, i32* @M_VLAPIC, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.vlapic* @malloc(i32 16, i32 %10, i32 %13)
  store %struct.vlapic* %14, %struct.vlapic** %6, align 8
  %15 = load %struct.vmx*, %struct.vmx** %5, align 8
  %16 = getelementptr inbounds %struct.vmx, %struct.vmx* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %19 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %22 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.vmx*, %struct.vmx** %5, align 8
  %24 = getelementptr inbounds %struct.vmx, %struct.vmx* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = bitcast i32* %28 to %struct.LAPIC*
  %30 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %31 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %30, i32 0, i32 2
  store %struct.LAPIC* %29, %struct.LAPIC** %31, align 8
  %32 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %33 = bitcast %struct.vlapic* %32 to %struct.vlapic_vtx*
  store %struct.vlapic_vtx* %33, %struct.vlapic_vtx** %7, align 8
  %34 = load %struct.vmx*, %struct.vmx** %5, align 8
  %35 = getelementptr inbounds %struct.vmx, %struct.vmx* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load %struct.vlapic_vtx*, %struct.vlapic_vtx** %7, align 8
  %41 = getelementptr inbounds %struct.vlapic_vtx, %struct.vlapic_vtx* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.vmx*, %struct.vmx** %5, align 8
  %43 = load %struct.vlapic_vtx*, %struct.vlapic_vtx** %7, align 8
  %44 = getelementptr inbounds %struct.vlapic_vtx, %struct.vlapic_vtx* %43, i32 0, i32 0
  store %struct.vmx* %42, %struct.vmx** %44, align 8
  %45 = load i64, i64* @virtual_interrupt_delivery, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %2
  %48 = load i32, i32* @vmx_set_intr_ready, align 4
  %49 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %50 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @vmx_pending_intr, align 4
  %53 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %54 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @vmx_intr_accepted, align 4
  %57 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %58 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @vmx_set_tmr, align 4
  %61 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %62 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @vmx_enable_x2apic_mode, align 4
  %65 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %66 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %47, %2
  %69 = load i64, i64* @posted_interrupts, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* @vmx_post_intr, align 4
  %73 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %74 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %68
  %77 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %78 = call i32 @vlapic_init(%struct.vlapic* %77)
  %79 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  ret %struct.vlapic* %79
}

declare dso_local %struct.vlapic* @malloc(i32, i32, i32) #1

declare dso_local i32 @vlapic_init(%struct.vlapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
