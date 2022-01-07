; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_inject_pir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_inject_pir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32, %struct.LAPIC* }
%struct.LAPIC = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vlapic_vtx = type { %struct.pir_desc* }
%struct.pir_desc = type { i32*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"vmx_inject_pir: no posted interrupt pending\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"vmx_inject_pir\00", align 1
@VMCS_GUEST_INTR_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"vmx_inject_pir: guest_intr_status changed from 0x%04x to 0x%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlapic*)* @vmx_inject_pir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_inject_pir(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  %3 = alloca %struct.vlapic_vtx*, align 8
  %4 = alloca %struct.pir_desc*, align 8
  %5 = alloca %struct.LAPIC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  store i32 -1, i32* %9, align 4
  %12 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %13 = bitcast %struct.vlapic* %12 to %struct.vlapic_vtx*
  store %struct.vlapic_vtx* %13, %struct.vlapic_vtx** %3, align 8
  %14 = load %struct.vlapic_vtx*, %struct.vlapic_vtx** %3, align 8
  %15 = getelementptr inbounds %struct.vlapic_vtx, %struct.vlapic_vtx* %14, i32 0, i32 0
  %16 = load %struct.pir_desc*, %struct.pir_desc** %15, align 8
  store %struct.pir_desc* %16, %struct.pir_desc** %4, align 8
  %17 = load %struct.pir_desc*, %struct.pir_desc** %4, align 8
  %18 = getelementptr inbounds %struct.pir_desc, %struct.pir_desc* %17, i32 0, i32 1
  %19 = call i64 @atomic_cmpset_long(i32* %18, i32 1, i32 0)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %23 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %26 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @VCPU_CTR0(i32 %24, i32 %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %150

29:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  %30 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %31 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %30, i32 0, i32 2
  %32 = load %struct.LAPIC*, %struct.LAPIC** %31, align 8
  store %struct.LAPIC* %32, %struct.LAPIC** %5, align 8
  %33 = load %struct.pir_desc*, %struct.pir_desc** %4, align 8
  %34 = getelementptr inbounds %struct.pir_desc, %struct.pir_desc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i32 @atomic_readandclear_long(i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %43 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 32
  %48 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %49 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  store i32 0, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %40, %29
  %54 = load %struct.pir_desc*, %struct.pir_desc** %4, align 8
  %55 = getelementptr inbounds %struct.pir_desc, %struct.pir_desc* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = call i32 @atomic_readandclear_long(i32* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %64 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %6, align 4
  %68 = ashr i32 %67, 32
  %69 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %70 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  store i32 64, i32* %9, align 4
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %61, %53
  %75 = load %struct.pir_desc*, %struct.pir_desc** %4, align 8
  %76 = getelementptr inbounds %struct.pir_desc, %struct.pir_desc* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = call i32 @atomic_readandclear_long(i32* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %74
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %85 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %6, align 4
  %89 = ashr i32 %88, 32
  %90 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %91 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  store i32 128, i32* %9, align 4
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %82, %74
  %96 = load %struct.pir_desc*, %struct.pir_desc** %4, align 8
  %97 = getelementptr inbounds %struct.pir_desc, %struct.pir_desc* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = call i32 @atomic_readandclear_long(i32* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %95
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %106 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %6, align 4
  %110 = ashr i32 %109, 32
  %111 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  %112 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  store i32 192, i32* %9, align 4
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %103, %95
  %117 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %118 = call i32 @VLAPIC_CTR_IRR(%struct.vlapic* %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %116
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @flsl(i32 %123)
  %125 = add nsw i32 %122, %124
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* @VMCS_GUEST_INTR_STATUS, align 4
  %128 = call i32 @vmcs_read(i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = and i32 %129, 65280
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %130, %131
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %121
  %137 = load i32, i32* @VMCS_GUEST_INTR_STATUS, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @vmcs_write(i32 %137, i32 %138)
  %140 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %141 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %144 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @VCPU_CTR2(i32 %142, i32 %145, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %136, %121
  br label %150

150:                                              ; preds = %21, %149, %116
  ret void
}

declare dso_local i64 @atomic_cmpset_long(i32*, i32, i32) #1

declare dso_local i32 @VCPU_CTR0(i32, i32, i8*) #1

declare dso_local i32 @atomic_readandclear_long(i32*) #1

declare dso_local i32 @VLAPIC_CTR_IRR(%struct.vlapic*, i8*) #1

declare dso_local i32 @flsl(i32) #1

declare dso_local i32 @vmcs_read(i32) #1

declare dso_local i32 @vmcs_write(i32, i32) #1

declare dso_local i32 @VCPU_CTR2(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
