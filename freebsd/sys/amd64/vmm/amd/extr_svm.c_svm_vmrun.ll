; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_vmrun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_vmrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.vm_eventinfo = type { i32 }
%struct.svm_regctx = type { i32 }
%struct.svm_softc = type { %struct.TYPE_6__*, %struct.vm* }
%struct.TYPE_6__ = type { i32 }
%struct.vm = type { i32 }
%struct.svm_vcpu = type { i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.vmcb_state = type { i32 }
%struct.vmcb_ctrl = type { i32 }
%struct.vm_exit = type { i32 }
%struct.vlapic = type { i32 }

@curcpu = common dso_local global i64 0, align 8
@VCPU_MIGRATIONS = common dso_local global i32 0, align 4
@vmcb_clean = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"vmcb clean %#x\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Resume execution at %#lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.TYPE_8__*, %struct.vm_eventinfo*)* @svm_vmrun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_vmrun(i8* %0, i32 %1, i32 %2, %struct.TYPE_8__* %3, %struct.vm_eventinfo* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.vm_eventinfo*, align 8
  %11 = alloca %struct.svm_regctx*, align 8
  %12 = alloca %struct.svm_softc*, align 8
  %13 = alloca %struct.svm_vcpu*, align 8
  %14 = alloca %struct.vmcb_state*, align 8
  %15 = alloca %struct.vmcb_ctrl*, align 8
  %16 = alloca %struct.vm_exit*, align 8
  %17 = alloca %struct.vlapic*, align 8
  %18 = alloca %struct.vm*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store %struct.vm_eventinfo* %4, %struct.vm_eventinfo** %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.svm_softc*
  store %struct.svm_softc* %23, %struct.svm_softc** %12, align 8
  %24 = load %struct.svm_softc*, %struct.svm_softc** %12, align 8
  %25 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %24, i32 0, i32 1
  %26 = load %struct.vm*, %struct.vm** %25, align 8
  store %struct.vm* %26, %struct.vm** %18, align 8
  %27 = load %struct.svm_softc*, %struct.svm_softc** %12, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.svm_vcpu* @svm_get_vcpu(%struct.svm_softc* %27, i32 %28)
  store %struct.svm_vcpu* %29, %struct.svm_vcpu** %13, align 8
  %30 = load %struct.svm_softc*, %struct.svm_softc** %12, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.vmcb_state* @svm_get_vmcb_state(%struct.svm_softc* %30, i32 %31)
  store %struct.vmcb_state* %32, %struct.vmcb_state** %14, align 8
  %33 = load %struct.svm_softc*, %struct.svm_softc** %12, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.vmcb_ctrl* @svm_get_vmcb_ctrl(%struct.svm_softc* %33, i32 %34)
  store %struct.vmcb_ctrl* %35, %struct.vmcb_ctrl** %15, align 8
  %36 = load %struct.vm*, %struct.vm** %18, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.vm_exit* @vm_exitinfo(%struct.vm* %36, i32 %37)
  store %struct.vm_exit* %38, %struct.vm_exit** %16, align 8
  %39 = load %struct.vm*, %struct.vm** %18, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.vlapic* @vm_lapic(%struct.vm* %39, i32 %40)
  store %struct.vlapic* %41, %struct.vlapic** %17, align 8
  %42 = load %struct.svm_softc*, %struct.svm_softc** %12, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.svm_regctx* @svm_get_guest_regctx(%struct.svm_softc* %42, i32 %43)
  store %struct.svm_regctx* %44, %struct.svm_regctx** %11, align 8
  %45 = load %struct.svm_softc*, %struct.svm_softc** %12, align 8
  %46 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %19, align 4
  %53 = load %struct.svm_vcpu*, %struct.svm_vcpu** %13, align 8
  %54 = getelementptr inbounds %struct.svm_vcpu, %struct.svm_vcpu* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @curcpu, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %5
  %59 = load %struct.svm_vcpu*, %struct.svm_vcpu** %13, align 8
  %60 = getelementptr inbounds %struct.svm_vcpu, %struct.svm_vcpu* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.svm_softc*, %struct.svm_softc** %12, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @svm_set_dirty(%struct.svm_softc* %62, i32 %63, i32 -1)
  %65 = load i64, i64* @curcpu, align 8
  %66 = load %struct.svm_vcpu*, %struct.svm_vcpu** %13, align 8
  %67 = getelementptr inbounds %struct.svm_vcpu, %struct.svm_vcpu* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.vm*, %struct.vm** %18, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @VCPU_MIGRATIONS, align 4
  %71 = call i32 @vmm_stat_incr(%struct.vm* %68, i32 %69, i32 %70, i32 1)
  br label %72

72:                                               ; preds = %58, %5
  %73 = load %struct.svm_softc*, %struct.svm_softc** %12, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @svm_msr_guest_enter(%struct.svm_softc* %73, i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.vmcb_state*, %struct.vmcb_state** %14, align 8
  %78 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %204, %72
  %80 = call i32 (...) @disable_gintr()
  %81 = load %struct.vm_eventinfo*, %struct.vm_eventinfo** %10, align 8
  %82 = call i64 @vcpu_suspended(%struct.vm_eventinfo* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = call i32 (...) @enable_gintr()
  %86 = load %struct.vm*, %struct.vm** %18, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.vmcb_state*, %struct.vmcb_state** %14, align 8
  %89 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @vm_exit_suspended(%struct.vm* %86, i32 %87, i32 %90)
  br label %207

92:                                               ; preds = %79
  %93 = load %struct.vm_eventinfo*, %struct.vm_eventinfo** %10, align 8
  %94 = call i64 @vcpu_rendezvous_pending(%struct.vm_eventinfo* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = call i32 (...) @enable_gintr()
  %98 = load %struct.vm*, %struct.vm** %18, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.vmcb_state*, %struct.vmcb_state** %14, align 8
  %101 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @vm_exit_rendezvous(%struct.vm* %98, i32 %99, i32 %102)
  br label %207

104:                                              ; preds = %92
  %105 = load %struct.vm_eventinfo*, %struct.vm_eventinfo** %10, align 8
  %106 = call i64 @vcpu_reqidle(%struct.vm_eventinfo* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = call i32 (...) @enable_gintr()
  %110 = load %struct.vm*, %struct.vm** %18, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.vmcb_state*, %struct.vmcb_state** %14, align 8
  %113 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @vm_exit_reqidle(%struct.vm* %110, i32 %111, i32 %114)
  br label %207

116:                                              ; preds = %104
  %117 = load %struct.vm*, %struct.vm** %18, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i64 @vcpu_should_yield(%struct.vm* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = call i32 (...) @enable_gintr()
  %123 = load %struct.vm*, %struct.vm** %18, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.vmcb_state*, %struct.vmcb_state** %14, align 8
  %126 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @vm_exit_astpending(%struct.vm* %123, i32 %124, i32 %127)
  br label %207

129:                                              ; preds = %116
  %130 = load %struct.vm*, %struct.vm** %18, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i64 @vcpu_debugged(%struct.vm* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = call i32 (...) @enable_gintr()
  %136 = load %struct.vm*, %struct.vm** %18, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.vmcb_state*, %struct.vmcb_state** %14, align 8
  %139 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @vm_exit_debug(%struct.vm* %136, i32 %137, i32 %140)
  br label %207

142:                                              ; preds = %129
  %143 = call i32 (...) @sldt()
  store i32 %143, i32* %21, align 4
  %144 = load %struct.svm_softc*, %struct.svm_softc** %12, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.vlapic*, %struct.vlapic** %17, align 8
  %147 = call i32 @svm_inj_interrupts(%struct.svm_softc* %144, i32 %145, %struct.vlapic* %146)
  %148 = load i64, i64* @curcpu, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = call i32 @CPU_SET_ATOMIC_ACQ(i64 %148, i32* %150)
  %152 = load %struct.svm_softc*, %struct.svm_softc** %12, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %155 = load i64, i64* @curcpu, align 8
  %156 = call i32 @check_asid(%struct.svm_softc* %152, i32 %153, %struct.TYPE_8__* %154, i64 %155)
  %157 = load i32, i32* @vmcb_clean, align 4
  %158 = load %struct.svm_vcpu*, %struct.svm_vcpu** %13, align 8
  %159 = getelementptr inbounds %struct.svm_vcpu, %struct.svm_vcpu* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = xor i32 %160, -1
  %162 = and i32 %157, %161
  %163 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %15, align 8
  %164 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = load %struct.svm_vcpu*, %struct.svm_vcpu** %13, align 8
  %166 = getelementptr inbounds %struct.svm_vcpu, %struct.svm_vcpu* %165, i32 0, i32 1
  store i32 0, i32* %166, align 8
  %167 = load %struct.vm*, %struct.vm** %18, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %15, align 8
  %170 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @VCPU_CTR1(%struct.vm* %167, i32 %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %171)
  %173 = load %struct.vm*, %struct.vm** %18, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.vmcb_state*, %struct.vmcb_state** %14, align 8
  %176 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @VCPU_CTR1(%struct.vm* %173, i32 %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %177)
  %179 = load %struct.svm_regctx*, %struct.svm_regctx** %11, align 8
  %180 = call i32 @svm_dr_enter_guest(%struct.svm_regctx* %179)
  %181 = load i32, i32* %19, align 4
  %182 = load %struct.svm_regctx*, %struct.svm_regctx** %11, align 8
  %183 = call i32 (...) @get_pcpu()
  %184 = call i32 @svm_launch(i32 %181, %struct.svm_regctx* %182, i32 %183)
  %185 = load %struct.svm_regctx*, %struct.svm_regctx** %11, align 8
  %186 = call i32 @svm_dr_leave_guest(%struct.svm_regctx* %185)
  %187 = load i64, i64* @curcpu, align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = call i32 @CPU_CLR_ATOMIC(i64 %187, i32* %189)
  %191 = call i32 (...) @restore_host_tss()
  %192 = load i32, i32* %21, align 4
  %193 = call i32 @lldt(i32 %192)
  %194 = call i32 (...) @enable_gintr()
  %195 = load %struct.vmcb_state*, %struct.vmcb_state** %14, align 8
  %196 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.svm_vcpu*, %struct.svm_vcpu** %13, align 8
  %199 = getelementptr inbounds %struct.svm_vcpu, %struct.svm_vcpu* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 4
  %200 = load %struct.svm_softc*, %struct.svm_softc** %12, align 8
  %201 = load i32, i32* %7, align 4
  %202 = load %struct.vm_exit*, %struct.vm_exit** %16, align 8
  %203 = call i32 @svm_vmexit(%struct.svm_softc* %200, i32 %201, %struct.vm_exit* %202)
  store i32 %203, i32* %20, align 4
  br label %204

204:                                              ; preds = %142
  %205 = load i32, i32* %20, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %79, label %207

207:                                              ; preds = %204, %134, %121, %108, %96, %84
  %208 = load %struct.svm_softc*, %struct.svm_softc** %12, align 8
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @svm_msr_guest_exit(%struct.svm_softc* %208, i32 %209)
  ret i32 0
}

declare dso_local %struct.svm_vcpu* @svm_get_vcpu(%struct.svm_softc*, i32) #1

declare dso_local %struct.vmcb_state* @svm_get_vmcb_state(%struct.svm_softc*, i32) #1

declare dso_local %struct.vmcb_ctrl* @svm_get_vmcb_ctrl(%struct.svm_softc*, i32) #1

declare dso_local %struct.vm_exit* @vm_exitinfo(%struct.vm*, i32) #1

declare dso_local %struct.vlapic* @vm_lapic(%struct.vm*, i32) #1

declare dso_local %struct.svm_regctx* @svm_get_guest_regctx(%struct.svm_softc*, i32) #1

declare dso_local i32 @svm_set_dirty(%struct.svm_softc*, i32, i32) #1

declare dso_local i32 @vmm_stat_incr(%struct.vm*, i32, i32, i32) #1

declare dso_local i32 @svm_msr_guest_enter(%struct.svm_softc*, i32) #1

declare dso_local i32 @disable_gintr(...) #1

declare dso_local i64 @vcpu_suspended(%struct.vm_eventinfo*) #1

declare dso_local i32 @enable_gintr(...) #1

declare dso_local i32 @vm_exit_suspended(%struct.vm*, i32, i32) #1

declare dso_local i64 @vcpu_rendezvous_pending(%struct.vm_eventinfo*) #1

declare dso_local i32 @vm_exit_rendezvous(%struct.vm*, i32, i32) #1

declare dso_local i64 @vcpu_reqidle(%struct.vm_eventinfo*) #1

declare dso_local i32 @vm_exit_reqidle(%struct.vm*, i32, i32) #1

declare dso_local i64 @vcpu_should_yield(%struct.vm*, i32) #1

declare dso_local i32 @vm_exit_astpending(%struct.vm*, i32, i32) #1

declare dso_local i64 @vcpu_debugged(%struct.vm*, i32) #1

declare dso_local i32 @vm_exit_debug(%struct.vm*, i32, i32) #1

declare dso_local i32 @sldt(...) #1

declare dso_local i32 @svm_inj_interrupts(%struct.svm_softc*, i32, %struct.vlapic*) #1

declare dso_local i32 @CPU_SET_ATOMIC_ACQ(i64, i32*) #1

declare dso_local i32 @check_asid(%struct.svm_softc*, i32, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @VCPU_CTR1(%struct.vm*, i32, i8*, i32) #1

declare dso_local i32 @svm_dr_enter_guest(%struct.svm_regctx*) #1

declare dso_local i32 @svm_launch(i32, %struct.svm_regctx*, i32) #1

declare dso_local i32 @get_pcpu(...) #1

declare dso_local i32 @svm_dr_leave_guest(%struct.svm_regctx*) #1

declare dso_local i32 @CPU_CLR_ATOMIC(i64, i32*) #1

declare dso_local i32 @restore_host_tss(...) #1

declare dso_local i32 @lldt(i32) #1

declare dso_local i32 @svm_vmexit(%struct.svm_softc*, i32, %struct.vm_exit*) #1

declare dso_local i32 @svm_msr_guest_exit(%struct.svm_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
