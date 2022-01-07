; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_handle_hlt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/extr_vmm.c_vm_handle_hlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32, i32, i64, i32*, %struct.vcpu* }
%struct.vcpu = type { i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"vcpu already halted\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vmhalt\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Halted\00", align 1
@halt_detection_enabled = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"vmidle\00", align 1
@ticks = common dso_local global i32 0, align 4
@VCPU_SLEEPING = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@VCPU_FROZEN = common dso_local global i32 0, align 4
@VCPU_IDLE_TICKS = common dso_local global i32 0, align 4
@VM_SUSPEND_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm*, i32, i32, i32*)* @vm_handle_hlt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_handle_hlt(%struct.vm* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vcpu*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.vm*, %struct.vm** %5, align 8
  %16 = getelementptr inbounds %struct.vm, %struct.vm* %15, i32 0, i32 0
  %17 = call i32 @CPU_ISSET(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.vm*, %struct.vm** %5, align 8
  %23 = getelementptr inbounds %struct.vm, %struct.vm* %22, i32 0, i32 4
  %24 = load %struct.vcpu*, %struct.vcpu** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %24, i64 %26
  store %struct.vcpu* %27, %struct.vcpu** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %29 = call i32 @vcpu_lock(%struct.vcpu* %28)
  br label %30

30:                                               ; preds = %4, %107
  %31 = load %struct.vm*, %struct.vm** %5, align 8
  %32 = getelementptr inbounds %struct.vm, %struct.vm* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.vm*, %struct.vm** %5, align 8
  %37 = getelementptr inbounds %struct.vm, %struct.vm* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %42 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %35, %30
  br label %130

46:                                               ; preds = %40
  %47 = load %struct.vm*, %struct.vm** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @vm_nmi_pending(%struct.vm* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %130

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = load %struct.vm*, %struct.vm** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @vm_extint_pending(%struct.vm* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %62 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @vlapic_pending_intr(i32 %63, i32* null)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %55
  br label %130

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %52
  %69 = load %struct.vm*, %struct.vm** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @vcpu_should_yield(%struct.vm* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %130

74:                                               ; preds = %68
  %75 = load %struct.vm*, %struct.vm** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @vcpu_debugged(%struct.vm* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %130

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %80
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %84 = load %struct.vm*, %struct.vm** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @VCPU_CTR0(%struct.vm* %84, i32 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %83
  %90 = load i64, i64* @halt_detection_enabled, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  store i32 1, i32* %12, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.vm*, %struct.vm** %5, align 8
  %95 = getelementptr inbounds %struct.vm, %struct.vm* %94, i32 0, i32 0
  %96 = call i32 @CPU_SET_ATOMIC(i32 %93, i32* %95)
  br label %97

97:                                               ; preds = %92, %89, %83
  %98 = load %struct.vm*, %struct.vm** %5, align 8
  %99 = getelementptr inbounds %struct.vm, %struct.vm* %98, i32 0, i32 0
  %100 = load %struct.vm*, %struct.vm** %5, align 8
  %101 = getelementptr inbounds %struct.vm, %struct.vm* %100, i32 0, i32 1
  %102 = call i64 @CPU_CMP(i32* %99, i32* %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 1, i32* %13, align 4
  br label %130

105:                                              ; preds = %97
  br label %107

106:                                              ; preds = %80
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %107

107:                                              ; preds = %106, %105
  %108 = load i32, i32* @ticks, align 4
  store i32 %108, i32* %11, align 4
  %109 = load %struct.vm*, %struct.vm** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @VCPU_SLEEPING, align 4
  %112 = call i32 @vcpu_require_state_locked(%struct.vm* %109, i32 %110, i32 %111)
  %113 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %114 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %115 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %114, i32 0, i32 0
  %116 = load i8*, i8** %10, align 8
  %117 = load i32, i32* @hz, align 4
  %118 = call i32 @msleep_spin(%struct.vcpu* %113, i32* %115, i8* %116, i32 %117)
  %119 = load %struct.vm*, %struct.vm** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @VCPU_FROZEN, align 4
  %122 = call i32 @vcpu_require_state_locked(%struct.vm* %119, i32 %120, i32 %121)
  %123 = load %struct.vm*, %struct.vm** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @VCPU_IDLE_TICKS, align 4
  %126 = load i32, i32* @ticks, align 4
  %127 = load i32, i32* %11, align 4
  %128 = sub nsw i32 %126, %127
  %129 = call i32 @vmm_stat_incr(%struct.vm* %123, i32 %124, i32 %125, i32 %128)
  br label %30

130:                                              ; preds = %104, %79, %73, %66, %51, %45
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.vm*, %struct.vm** %5, align 8
  %136 = getelementptr inbounds %struct.vm, %struct.vm* %135, i32 0, i32 0
  %137 = call i32 @CPU_CLR_ATOMIC(i32 %134, i32* %136)
  br label %138

138:                                              ; preds = %133, %130
  %139 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %140 = call i32 @vcpu_unlock(%struct.vcpu* %139)
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.vm*, %struct.vm** %5, align 8
  %145 = load i32, i32* @VM_SUSPEND_HALT, align 4
  %146 = call i32 @vm_suspend(%struct.vm* %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %138
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @vcpu_lock(%struct.vcpu*) #1

declare dso_local i64 @vm_nmi_pending(%struct.vm*, i32) #1

declare dso_local i64 @vm_extint_pending(%struct.vm*, i32) #1

declare dso_local i64 @vlapic_pending_intr(i32, i32*) #1

declare dso_local i64 @vcpu_should_yield(%struct.vm*, i32) #1

declare dso_local i64 @vcpu_debugged(%struct.vm*, i32) #1

declare dso_local i32 @VCPU_CTR0(%struct.vm*, i32, i8*) #1

declare dso_local i32 @CPU_SET_ATOMIC(i32, i32*) #1

declare dso_local i64 @CPU_CMP(i32*, i32*) #1

declare dso_local i32 @vcpu_require_state_locked(%struct.vm*, i32, i32) #1

declare dso_local i32 @msleep_spin(%struct.vcpu*, i32*, i8*, i32) #1

declare dso_local i32 @vmm_stat_incr(%struct.vm*, i32, i32, i32) #1

declare dso_local i32 @CPU_CLR_ATOMIC(i32, i32*) #1

declare dso_local i32 @vcpu_unlock(%struct.vcpu*) #1

declare dso_local i32 @vm_suspend(%struct.vm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
