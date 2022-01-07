; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_inj_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_svm.c_svm_inj_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_softc = type { i32 }
%struct.vlapic = type { i32 }
%struct.vmcb_ctrl = type { i32, i32, i64 }
%struct.vmcb_state = type { i64, i32 }
%struct.svm_vcpu = type { i64 }

@.str = private unnamed_addr constant [62 x i8] c"Guest interrupt blocking cleared due to rip change: %#lx/%#lx\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot inject NMI due to NMI-blocking\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Cannot inject NMI due to interrupt shadow\00", align 1
@VMCB_EVENTINJ_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Cannot inject NMI due to eventinj %#lx\00", align 1
@curcpu = common dso_local global i32 0, align 4
@IPI_AST = common dso_local global i32 0, align 4
@VMCB_EVENTINJ_TYPE_NMI = common dso_local global i32 0, align 4
@IDT_NMI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Injecting vNMI\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"invalid vector %d from local APIC\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"invalid vector %d from INTR\00", align 1
@PSL_I = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"Cannot inject vector %d due to rflags %#lx\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Cannot inject vector %d due to interrupt shadow\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Cannot inject vector %d due to eventinj %#lx\00", align 1
@VMCB_EVENTINJ_TYPE_INTR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"invalid v_tpr %#x\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"VMCB V_TPR changed from %#x to %#x\00", align 1
@VMCB_CACHE_TPR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [76 x i8] c"Bogus intr_window_exiting: eventinj (%#lx), intr_shadow (%u), rflags (%#lx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svm_softc*, i32, %struct.vlapic*)* @svm_inj_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_inj_interrupts(%struct.svm_softc* %0, i32 %1, %struct.vlapic* %2) #0 {
  %4 = alloca %struct.svm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlapic*, align 8
  %7 = alloca %struct.vmcb_ctrl*, align 8
  %8 = alloca %struct.vmcb_state*, align 8
  %9 = alloca %struct.svm_vcpu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.svm_softc* %0, %struct.svm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vlapic* %2, %struct.vlapic** %6, align 8
  %14 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.vmcb_state* @svm_get_vmcb_state(%struct.svm_softc* %14, i32 %15)
  store %struct.vmcb_state* %16, %struct.vmcb_state** %8, align 8
  %17 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.vmcb_ctrl* @svm_get_vmcb_ctrl(%struct.svm_softc* %17, i32 %18)
  store %struct.vmcb_ctrl* %19, %struct.vmcb_ctrl** %7, align 8
  %20 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.svm_vcpu* @svm_get_vcpu(%struct.svm_softc* %20, i32 %21)
  store %struct.svm_vcpu* %22, %struct.svm_vcpu** %9, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.svm_vcpu*, %struct.svm_vcpu** %9, align 8
  %24 = getelementptr inbounds %struct.svm_vcpu, %struct.svm_vcpu* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vmcb_state*, %struct.vmcb_state** %8, align 8
  %27 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %3
  %31 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %7, align 8
  %32 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %34 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.svm_vcpu*, %struct.svm_vcpu** %9, align 8
  %38 = getelementptr inbounds %struct.svm_vcpu, %struct.svm_vcpu* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.vmcb_state*, %struct.vmcb_state** %8, align 8
  %42 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @VCPU_CTR2(i32 %35, i32 %36, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %30, %3
  %47 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @svm_inj_intinfo(%struct.svm_softc* %47, i32 %48)
  %50 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %51 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @vm_nmi_pending(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %119

56:                                               ; preds = %46
  %57 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @nmi_blocked(%struct.svm_softc* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %63 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @VCPU_CTR0(i32 %64, i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %118

67:                                               ; preds = %56
  %68 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %7, align 8
  %69 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %74 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @VCPU_CTR0(i32 %75, i32 %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %232

78:                                               ; preds = %67
  %79 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %7, align 8
  %80 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @VMCB_EVENTINJ_VALID, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %78
  %86 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %87 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %7, align 8
  %91 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @VCPU_CTR1(i32 %88, i32 %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @curcpu, align 4
  %95 = load i32, i32* @IPI_AST, align 4
  %96 = call i32 @ipi_cpu(i32 %94, i32 %95)
  br label %116

97:                                               ; preds = %78
  %98 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %99 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @vm_nmi_clear(i32 %100, i32 %101)
  %103 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @VMCB_EVENTINJ_TYPE_NMI, align 4
  %106 = load i32, i32* @IDT_NMI, align 4
  %107 = call i32 @svm_eventinject(%struct.svm_softc* %103, i32 %104, i32 %105, i32 %106, i32 0, i32 0)
  %108 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @enable_nmi_blocking(%struct.svm_softc* %108, i32 %109)
  %111 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %112 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @VCPU_CTR0(i32 %113, i32 %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %116

116:                                              ; preds = %97, %85
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117, %61
  br label %119

119:                                              ; preds = %118, %46
  %120 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %121 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @vm_extint_pending(i32 %122, i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %145, label %127

127:                                              ; preds = %119
  %128 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %129 = call i32 @vlapic_pending_intr(%struct.vlapic* %128, i32* %11)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  br label %232

132:                                              ; preds = %127
  %133 = load i32, i32* %11, align 4
  %134 = icmp sge i32 %133, 16
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* %11, align 4
  %137 = icmp sle i32 %136, 255
  br label %138

138:                                              ; preds = %135, %132
  %139 = phi i1 [ false, %132 ], [ %137, %135 ]
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  %144 = call i32 @KASSERT(i32 %140, i8* %143)
  br label %162

145:                                              ; preds = %119
  %146 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %147 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @vatpic_pending_intr(i32 %148, i32* %11)
  %150 = load i32, i32* %11, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load i32, i32* %11, align 4
  %154 = icmp sle i32 %153, 255
  br label %155

155:                                              ; preds = %152, %145
  %156 = phi i1 [ false, %145 ], [ %154, %152 ]
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = call i32 @KASSERT(i32 %157, i8* %160)
  br label %162

162:                                              ; preds = %155, %138
  %163 = load %struct.vmcb_state*, %struct.vmcb_state** %8, align 8
  %164 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @PSL_I, align 4
  %167 = and i32 %165, %166
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %162
  %170 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %171 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load %struct.vmcb_state*, %struct.vmcb_state** %8, align 8
  %176 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @VCPU_CTR2(i32 %172, i32 %173, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %174, i32 %177)
  store i32 1, i32* %12, align 4
  br label %232

179:                                              ; preds = %162
  %180 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %7, align 8
  %181 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %179
  %185 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %186 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @VCPU_CTR1(i32 %187, i32 %188, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %189)
  store i32 1, i32* %12, align 4
  br label %232

191:                                              ; preds = %179
  %192 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %7, align 8
  %193 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @VMCB_EVENTINJ_VALID, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %191
  %199 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %200 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %7, align 8
  %205 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @VCPU_CTR2(i32 %201, i32 %202, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %203, i32 %206)
  store i32 1, i32* %12, align 4
  br label %232

208:                                              ; preds = %191
  %209 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* @VMCB_EVENTINJ_TYPE_INTR, align 4
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @svm_eventinject(%struct.svm_softc* %209, i32 %210, i32 %211, i32 %212, i32 0, i32 0)
  %214 = load i32, i32* %13, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %208
  %217 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @vlapic_intr_accepted(%struct.vlapic* %217, i32 %218)
  br label %231

220:                                              ; preds = %208
  %221 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %222 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %5, align 4
  %225 = call i32 @vm_extint_clear(i32 %223, i32 %224)
  %226 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %227 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %11, align 4
  %230 = call i32 @vatpic_intr_accepted(i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %220, %216
  store i32 1, i32* %12, align 4
  br label %232

232:                                              ; preds = %231, %198, %184, %169, %131, %72
  %233 = load %struct.vlapic*, %struct.vlapic** %6, align 8
  %234 = call i32 @vlapic_get_cr8(%struct.vlapic* %233)
  store i32 %234, i32* %10, align 4
  %235 = load i32, i32* %10, align 4
  %236 = icmp sle i32 %235, 15
  %237 = zext i1 %236 to i32
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = inttoptr i64 %239 to i8*
  %241 = call i32 @KASSERT(i32 %237, i8* %240)
  %242 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %7, align 8
  %243 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %10, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %264

247:                                              ; preds = %232
  %248 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %249 = getelementptr inbounds %struct.svm_softc, %struct.svm_softc* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %5, align 4
  %252 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %7, align 8
  %253 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %10, align 4
  %256 = call i32 @VCPU_CTR2(i32 %250, i32 %251, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %254, i32 %255)
  %257 = load i32, i32* %10, align 4
  %258 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %7, align 8
  %259 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  %260 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %261 = load i32, i32* %5, align 4
  %262 = load i32, i32* @VMCB_CACHE_TPR, align 4
  %263 = call i32 @svm_set_dirty(%struct.svm_softc* %260, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %247, %232
  %265 = load i32, i32* %12, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %304

267:                                              ; preds = %264
  %268 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %7, align 8
  %269 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @VMCB_EVENTINJ_VALID, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %286, label %274

274:                                              ; preds = %267
  %275 = load %struct.vmcb_state*, %struct.vmcb_state** %8, align 8
  %276 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @PSL_I, align 4
  %279 = and i32 %277, %278
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %274
  %282 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %7, align 8
  %283 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br label %286

286:                                              ; preds = %281, %274, %267
  %287 = phi i1 [ true, %274 ], [ true, %267 ], [ %285, %281 ]
  %288 = zext i1 %287 to i32
  %289 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %7, align 8
  %290 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.vmcb_ctrl*, %struct.vmcb_ctrl** %7, align 8
  %293 = getelementptr inbounds %struct.vmcb_ctrl, %struct.vmcb_ctrl* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.vmcb_state*, %struct.vmcb_state** %8, align 8
  %296 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = sext i32 %297 to i64
  %299 = inttoptr i64 %298 to i8*
  %300 = call i32 @KASSERT(i32 %288, i8* %299)
  %301 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %302 = load i32, i32* %5, align 4
  %303 = call i32 @enable_intr_window_exiting(%struct.svm_softc* %301, i32 %302)
  br label %308

304:                                              ; preds = %264
  %305 = load %struct.svm_softc*, %struct.svm_softc** %4, align 8
  %306 = load i32, i32* %5, align 4
  %307 = call i32 @disable_intr_window_exiting(%struct.svm_softc* %305, i32 %306)
  br label %308

308:                                              ; preds = %304, %286
  ret void
}

declare dso_local %struct.vmcb_state* @svm_get_vmcb_state(%struct.svm_softc*, i32) #1

declare dso_local %struct.vmcb_ctrl* @svm_get_vmcb_ctrl(%struct.svm_softc*, i32) #1

declare dso_local %struct.svm_vcpu* @svm_get_vcpu(%struct.svm_softc*, i32) #1

declare dso_local i32 @VCPU_CTR2(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @svm_inj_intinfo(%struct.svm_softc*, i32) #1

declare dso_local i64 @vm_nmi_pending(i32, i32) #1

declare dso_local i64 @nmi_blocked(%struct.svm_softc*, i32) #1

declare dso_local i32 @VCPU_CTR0(i32, i32, i8*) #1

declare dso_local i32 @VCPU_CTR1(i32, i32, i8*, i32) #1

declare dso_local i32 @ipi_cpu(i32, i32) #1

declare dso_local i32 @vm_nmi_clear(i32, i32) #1

declare dso_local i32 @svm_eventinject(%struct.svm_softc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @enable_nmi_blocking(%struct.svm_softc*, i32) #1

declare dso_local i32 @vm_extint_pending(i32, i32) #1

declare dso_local i32 @vlapic_pending_intr(%struct.vlapic*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vatpic_pending_intr(i32, i32*) #1

declare dso_local i32 @vlapic_intr_accepted(%struct.vlapic*, i32) #1

declare dso_local i32 @vm_extint_clear(i32, i32) #1

declare dso_local i32 @vatpic_intr_accepted(i32, i32) #1

declare dso_local i32 @vlapic_get_cr8(%struct.vlapic*) #1

declare dso_local i32 @svm_set_dirty(%struct.svm_softc*, i32, i32) #1

declare dso_local i32 @enable_intr_window_exiting(%struct.svm_softc*, i32) #1

declare dso_local i32 @disable_intr_window_exiting(%struct.svm_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
