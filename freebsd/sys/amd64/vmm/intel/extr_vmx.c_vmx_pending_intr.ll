; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_pending_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_pending_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32, %struct.LAPIC* }
%struct.LAPIC = type { i32 }
%struct.vlapic_vtx = type { i32, %struct.pir_desc* }
%struct.pir_desc = type { i64*, i32 }
%struct.vm_exit = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"vmx_pending_intr: vecptr must be NULL\00", align 1
@VM_EXITCODE_HLT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"vmx_pending_intr: exitcode not 'HLT'\00", align 1
@APIC_TPR_INT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"HLT with non-zero PPR %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlapic*, i32*)* @vmx_pending_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_pending_intr(%struct.vlapic* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlapic*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vlapic_vtx*, align 8
  %7 = alloca %struct.pir_desc*, align 8
  %8 = alloca %struct.LAPIC*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vm_exit*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %24 = bitcast %struct.vlapic* %23 to %struct.vlapic_vtx*
  store %struct.vlapic_vtx* %24, %struct.vlapic_vtx** %6, align 8
  %25 = load %struct.vlapic_vtx*, %struct.vlapic_vtx** %6, align 8
  %26 = getelementptr inbounds %struct.vlapic_vtx, %struct.vlapic_vtx* %25, i32 0, i32 1
  %27 = load %struct.pir_desc*, %struct.pir_desc** %26, align 8
  store %struct.pir_desc* %27, %struct.pir_desc** %7, align 8
  %28 = load %struct.pir_desc*, %struct.pir_desc** %7, align 8
  %29 = getelementptr inbounds %struct.pir_desc, %struct.pir_desc* %28, i32 0, i32 1
  %30 = call i64 @atomic_load_acq_long(i32* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %68, label %33

33:                                               ; preds = %2
  %34 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %35 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %38 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.vm_exit* @vm_exitinfo(i32 %36, i32 %39)
  store %struct.vm_exit* %40, %struct.vm_exit** %14, align 8
  %41 = load %struct.vm_exit*, %struct.vm_exit** %14, align 8
  %42 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VM_EXITCODE_HLT, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.vm_exit*, %struct.vm_exit** %14, align 8
  %49 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @APIC_TPR_INT, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %15, align 4
  %55 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %56 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %55, i32 0, i32 2
  %57 = load %struct.LAPIC*, %struct.LAPIC** %56, align 8
  store %struct.LAPIC* %57, %struct.LAPIC** %8, align 8
  %58 = load %struct.LAPIC*, %struct.LAPIC** %8, align 8
  %59 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @APIC_TPR_INT, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %141

67:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %141

68:                                               ; preds = %2
  %69 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %70 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %69, i32 0, i32 2
  %71 = load %struct.LAPIC*, %struct.LAPIC** %70, align 8
  store %struct.LAPIC* %71, %struct.LAPIC** %8, align 8
  %72 = load %struct.LAPIC*, %struct.LAPIC** %8, align 8
  %73 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @APIC_TPR_INT, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %141

80:                                               ; preds = %68
  %81 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %82 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %85 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.LAPIC*, %struct.LAPIC** %8, align 8
  %88 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @VCPU_CTR1(i32 %83, i32 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  store i32 0, i32* %12, align 4
  store i32 3, i32* %13, align 4
  br label %91

91:                                               ; preds = %114, %80
  %92 = load i32, i32* %13, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load %struct.pir_desc*, %struct.pir_desc** %7, align 8
  %96 = getelementptr inbounds %struct.pir_desc, %struct.pir_desc* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %94
  %105 = load i32, i32* %13, align 4
  %106 = mul nsw i32 %105, 64
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @flsl(i64 %107)
  %109 = add nsw i32 %106, %108
  %110 = sub nsw i32 %109, 1
  %111 = load i32, i32* @APIC_TPR_INT, align 4
  %112 = and i32 %110, %111
  store i32 %112, i32* %12, align 4
  br label %117

113:                                              ; preds = %94
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %13, align 4
  br label %91

117:                                              ; preds = %104, %91
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @VPR_PRIO_BIT(i32 %122)
  store i32 %123, i32* %17, align 4
  %124 = load %struct.vlapic_vtx*, %struct.vlapic_vtx** %6, align 8
  %125 = getelementptr inbounds %struct.vlapic_vtx, %struct.vlapic_vtx* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %121
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* %17, align 4
  %133 = and i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i32, i32* %17, align 4
  %137 = load %struct.vlapic_vtx*, %struct.vlapic_vtx** %6, align 8
  %138 = getelementptr inbounds %struct.vlapic_vtx, %struct.vlapic_vtx* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %135, %130, %121
  store i32 0, i32* %3, align 4
  br label %141

140:                                              ; preds = %117
  store i32 1, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %139, %79, %67, %66
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @atomic_load_acq_long(i32*) #1

declare dso_local %struct.vm_exit* @vm_exitinfo(i32, i32) #1

declare dso_local i32 @VCPU_CTR1(i32, i32, i8*, i32) #1

declare dso_local i32 @flsl(i64) #1

declare dso_local i32 @VPR_PRIO_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
