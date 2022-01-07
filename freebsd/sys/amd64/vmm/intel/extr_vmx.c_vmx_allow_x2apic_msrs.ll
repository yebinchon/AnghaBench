; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_allow_x2apic_msrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vmx.c_vmx_allow_x2apic_msrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmx = type { i32 }

@MSR_APIC_ID = common dso_local global i64 0, align 8
@MSR_APIC_VERSION = common dso_local global i64 0, align 8
@MSR_APIC_LDR = common dso_local global i64 0, align 8
@MSR_APIC_SVR = common dso_local global i64 0, align 8
@MSR_APIC_ISR0 = common dso_local global i64 0, align 8
@MSR_APIC_TMR0 = common dso_local global i64 0, align 8
@MSR_APIC_IRR0 = common dso_local global i64 0, align 8
@MSR_APIC_ESR = common dso_local global i64 0, align 8
@MSR_APIC_LVT_TIMER = common dso_local global i64 0, align 8
@MSR_APIC_LVT_THERMAL = common dso_local global i64 0, align 8
@MSR_APIC_LVT_PCINT = common dso_local global i64 0, align 8
@MSR_APIC_LVT_LINT0 = common dso_local global i64 0, align 8
@MSR_APIC_LVT_LINT1 = common dso_local global i64 0, align 8
@MSR_APIC_LVT_ERROR = common dso_local global i64 0, align 8
@MSR_APIC_ICR_TIMER = common dso_local global i64 0, align 8
@MSR_APIC_DCR_TIMER = common dso_local global i64 0, align 8
@MSR_APIC_ICR = common dso_local global i64 0, align 8
@MSR_APIC_TPR = common dso_local global i32 0, align 4
@MSR_APIC_EOI = common dso_local global i32 0, align 4
@MSR_APIC_SELF_IPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmx*)* @vmx_allow_x2apic_msrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_allow_x2apic_msrs(%struct.vmx* %0) #0 {
  %2 = alloca %struct.vmx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vmx* %0, %struct.vmx** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.vmx*, %struct.vmx** %2, align 8
  %6 = load i64, i64* @MSR_APIC_ID, align 8
  %7 = call i64 @guest_msr_ro(%struct.vmx* %5, i64 %6)
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, %7
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load %struct.vmx*, %struct.vmx** %2, align 8
  %13 = load i64, i64* @MSR_APIC_VERSION, align 8
  %14 = call i64 @guest_msr_ro(%struct.vmx* %12, i64 %13)
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load %struct.vmx*, %struct.vmx** %2, align 8
  %20 = load i64, i64* @MSR_APIC_LDR, align 8
  %21 = call i64 @guest_msr_ro(%struct.vmx* %19, i64 %20)
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load %struct.vmx*, %struct.vmx** %2, align 8
  %27 = load i64, i64* @MSR_APIC_SVR, align 8
  %28 = call i64 @guest_msr_ro(%struct.vmx* %26, i64 %27)
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %47, %1
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load %struct.vmx*, %struct.vmx** %2, align 8
  %38 = load i64, i64* @MSR_APIC_ISR0, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i64 @guest_msr_ro(%struct.vmx* %37, i64 %41)
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %33

50:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 8
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load %struct.vmx*, %struct.vmx** %2, align 8
  %56 = load i64, i64* @MSR_APIC_TMR0, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = call i64 @guest_msr_ro(%struct.vmx* %55, i64 %59)
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %51

68:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %83, %68
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 8
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load %struct.vmx*, %struct.vmx** %2, align 8
  %74 = load i64, i64* @MSR_APIC_IRR0, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = call i64 @guest_msr_ro(%struct.vmx* %73, i64 %77)
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %72
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %69

86:                                               ; preds = %69
  %87 = load %struct.vmx*, %struct.vmx** %2, align 8
  %88 = load i64, i64* @MSR_APIC_ESR, align 8
  %89 = call i64 @guest_msr_ro(%struct.vmx* %87, i64 %88)
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %4, align 4
  %94 = load %struct.vmx*, %struct.vmx** %2, align 8
  %95 = load i64, i64* @MSR_APIC_LVT_TIMER, align 8
  %96 = call i64 @guest_msr_ro(%struct.vmx* %94, i64 %95)
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %4, align 4
  %101 = load %struct.vmx*, %struct.vmx** %2, align 8
  %102 = load i64, i64* @MSR_APIC_LVT_THERMAL, align 8
  %103 = call i64 @guest_msr_ro(%struct.vmx* %101, i64 %102)
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %4, align 4
  %108 = load %struct.vmx*, %struct.vmx** %2, align 8
  %109 = load i64, i64* @MSR_APIC_LVT_PCINT, align 8
  %110 = call i64 @guest_msr_ro(%struct.vmx* %108, i64 %109)
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %4, align 4
  %115 = load %struct.vmx*, %struct.vmx** %2, align 8
  %116 = load i64, i64* @MSR_APIC_LVT_LINT0, align 8
  %117 = call i64 @guest_msr_ro(%struct.vmx* %115, i64 %116)
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %4, align 4
  %122 = load %struct.vmx*, %struct.vmx** %2, align 8
  %123 = load i64, i64* @MSR_APIC_LVT_LINT1, align 8
  %124 = call i64 @guest_msr_ro(%struct.vmx* %122, i64 %123)
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %4, align 4
  %129 = load %struct.vmx*, %struct.vmx** %2, align 8
  %130 = load i64, i64* @MSR_APIC_LVT_ERROR, align 8
  %131 = call i64 @guest_msr_ro(%struct.vmx* %129, i64 %130)
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %4, align 4
  %136 = load %struct.vmx*, %struct.vmx** %2, align 8
  %137 = load i64, i64* @MSR_APIC_ICR_TIMER, align 8
  %138 = call i64 @guest_msr_ro(%struct.vmx* %136, i64 %137)
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %4, align 4
  %143 = load %struct.vmx*, %struct.vmx** %2, align 8
  %144 = load i64, i64* @MSR_APIC_DCR_TIMER, align 8
  %145 = call i64 @guest_msr_ro(%struct.vmx* %143, i64 %144)
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %4, align 4
  %150 = load %struct.vmx*, %struct.vmx** %2, align 8
  %151 = load i64, i64* @MSR_APIC_ICR, align 8
  %152 = call i64 @guest_msr_ro(%struct.vmx* %150, i64 %151)
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %4, align 4
  %157 = load %struct.vmx*, %struct.vmx** %2, align 8
  %158 = load i32, i32* @MSR_APIC_TPR, align 4
  %159 = call i64 @guest_msr_rw(%struct.vmx* %157, i32 %158)
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %4, align 4
  %164 = load %struct.vmx*, %struct.vmx** %2, align 8
  %165 = load i32, i32* @MSR_APIC_EOI, align 4
  %166 = call i64 @guest_msr_rw(%struct.vmx* %164, i32 %165)
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %4, align 4
  %171 = load %struct.vmx*, %struct.vmx** %2, align 8
  %172 = load i32, i32* @MSR_APIC_SELF_IPI, align 4
  %173 = call i64 @guest_msr_rw(%struct.vmx* %171, i32 %172)
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %4, align 4
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i64 @guest_msr_ro(%struct.vmx*, i64) #1

declare dso_local i64 @guest_msr_rw(%struct.vmx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
