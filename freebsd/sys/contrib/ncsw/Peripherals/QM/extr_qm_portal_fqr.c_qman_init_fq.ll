; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qman_init_fq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qman_init_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.qman_fq = type { i64, i32, i32 }
%struct.qm_mcc_initfq = type { i32 }
%struct.qm_mc_command = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.qm_mc_result = type { i64, i64 }

@QMAN_INITFQ_FLAG_SCHED = common dso_local global i32 0, align 4
@QM_MCC_VERB_INITFQ_SCHED = common dso_local global i32 0, align 4
@QM_MCC_VERB_INITFQ_PARKED = common dso_local global i32 0, align 4
@qman_fq_state_oos = common dso_local global i64 0, align 8
@qman_fq_state_parked = common dso_local global i64 0, align 8
@E_INVALID_STATE = common dso_local global i32 0, align 4
@QMAN_FQ_FLAG_NO_MODIFY = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_CHANGING = common dso_local global i32 0, align 4
@E_BUSY = common dso_local global i32 0, align 4
@QM_MCR_VERB_MASK = common dso_local global i64 0, align 8
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"INITFQ failed: %s\00", align 1
@QM_INITFQ_WE_FQCTRL = common dso_local global i32 0, align 4
@QM_FQCTRL_CGE = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_CGR_EN = common dso_local global i32 0, align 4
@QM_INITFQ_WE_CGID = common dso_local global i32 0, align 4
@qman_fq_state_sched = common dso_local global i64 0, align 8
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.qman_fq*, i32, %struct.qm_mcc_initfq*)* @qman_init_fq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qman_init_fq(%struct.TYPE_9__* %0, %struct.qman_fq* %1, i32 %2, %struct.qm_mcc_initfq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.qman_fq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qm_mcc_initfq*, align 8
  %10 = alloca %struct.qm_mc_command*, align 8
  %11 = alloca %struct.qm_mc_result*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qm_mcc_initfq* %3, %struct.qm_mcc_initfq** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @QMAN_INITFQ_FLAG_SCHED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @QM_MCC_VERB_INITFQ_SCHED, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @QM_MCC_VERB_INITFQ_PARKED, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %13, align 8
  %25 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %26 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @qman_fq_state_oos, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %22
  %31 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %32 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @qman_fq_state_parked, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %30, %22
  %37 = phi i1 [ true, %22 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @E_INVALID_STATE, align 4
  %40 = call i32 @SANITY_CHECK_RETURN_ERROR(i32 %38, i32 %39)
  %41 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %42 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @QMAN_FQ_FLAG_NO_MODIFY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @E_INVALID_VALUE, align 4
  %49 = call i32 @ERROR_CODE(i32 %48)
  store i32 %49, i32* %5, align 4
  br label %196

50:                                               ; preds = %36
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = call i32 @NCSW_PLOCK(%struct.TYPE_9__* %51)
  %53 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %54 = call i32 @FQLOCK(%struct.qman_fq* %53)
  %55 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %56 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @QMAN_FQ_STATE_CHANGING, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %50
  %62 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %63 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @qman_fq_state_oos, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %69 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @qman_fq_state_parked, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67, %50
  %74 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %75 = call i32 @FQUNLOCK(%struct.qman_fq* %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = call i32 @PUNLOCK(%struct.TYPE_9__* %76)
  %78 = load i32, i32* @E_BUSY, align 4
  %79 = call i32 @ERROR_CODE(i32 %78)
  store i32 %79, i32* %5, align 4
  br label %196

80:                                               ; preds = %67, %61
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.qm_mc_command* @qm_mc_start(i32 %83)
  store %struct.qm_mc_command* %84, %struct.qm_mc_command** %10, align 8
  %85 = load %struct.qm_mc_command*, %struct.qm_mc_command** %10, align 8
  %86 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %85, i32 0, i32 0
  %87 = bitcast %struct.TYPE_8__* %86 to i8*
  %88 = load %struct.qm_mcc_initfq*, %struct.qm_mcc_initfq** %9, align 8
  %89 = call i32 @Mem2IOCpy32(i8* %87, %struct.qm_mcc_initfq* %88, i32 4)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %13, align 8
  %94 = call i32 @qm_mc_commit(i32 %92, i64 %93)
  br label %95

95:                                               ; preds = %102, %80
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.qm_mc_result* @qm_mc_result(i32 %98)
  store %struct.qm_mc_result* %99, %struct.qm_mc_result** %11, align 8
  %100 = icmp ne %struct.qm_mc_result* %99, null
  %101 = xor i1 %100, true
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %95

103:                                              ; preds = %95
  %104 = load %struct.qm_mc_result*, %struct.qm_mc_result** %11, align 8
  %105 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @QM_MCR_VERB_MASK, align 8
  %108 = and i64 %106, %107
  %109 = load i64, i64* %13, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @ASSERT_COND(i32 %111)
  %113 = load %struct.qm_mc_result*, %struct.qm_mc_result** %11, align 8
  %114 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %12, align 8
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %103
  %120 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %121 = call i32 @FQUNLOCK(%struct.qman_fq* %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %123 = call i32 @PUNLOCK(%struct.TYPE_9__* %122)
  %124 = load i32, i32* @MINOR, align 4
  %125 = load i32, i32* @E_INVALID_STATE, align 4
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @mcr_result_str(i64 %126)
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = call i32 @RETURN_ERROR(i32 %124, i32 %125, i8* %129)
  br label %131

131:                                              ; preds = %119, %103
  %132 = load %struct.qm_mc_command*, %struct.qm_mc_command** %10, align 8
  %133 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @QM_INITFQ_WE_FQCTRL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %131
  %140 = load %struct.qm_mc_command*, %struct.qm_mc_command** %10, align 8
  %141 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @QM_FQCTRL_CGE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %139
  %149 = load i32, i32* @QMAN_FQ_STATE_CGR_EN, align 4
  %150 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %151 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  br label %161

154:                                              ; preds = %139
  %155 = load i32, i32* @QMAN_FQ_STATE_CGR_EN, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %158 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %154, %148
  br label %162

162:                                              ; preds = %161, %131
  %163 = load %struct.qm_mc_command*, %struct.qm_mc_command** %10, align 8
  %164 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @QM_INITFQ_WE_CGID, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %162
  %171 = load %struct.qm_mc_command*, %struct.qm_mc_command** %10, align 8
  %172 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %177 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %170, %162
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @QMAN_INITFQ_FLAG_SCHED, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i64, i64* @qman_fq_state_sched, align 8
  br label %187

185:                                              ; preds = %178
  %186 = load i64, i64* @qman_fq_state_parked, align 8
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i64 [ %184, %183 ], [ %186, %185 ]
  %189 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %190 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  %191 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %192 = call i32 @FQUNLOCK(%struct.qman_fq* %191)
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %194 = call i32 @PUNLOCK(%struct.TYPE_9__* %193)
  %195 = load i32, i32* @E_OK, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %187, %73, %47
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i32, i32) #1

declare dso_local i32 @ERROR_CODE(i32) #1

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @FQLOCK(%struct.qman_fq*) #1

declare dso_local i32 @FQUNLOCK(%struct.qman_fq*) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_9__*) #1

declare dso_local %struct.qm_mc_command* @qm_mc_start(i32) #1

declare dso_local i32 @Mem2IOCpy32(i8*, %struct.qm_mcc_initfq*, i32) #1

declare dso_local i32 @qm_mc_commit(i32, i64) #1

declare dso_local %struct.qm_mc_result* @qm_mc_result(i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @mcr_result_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
