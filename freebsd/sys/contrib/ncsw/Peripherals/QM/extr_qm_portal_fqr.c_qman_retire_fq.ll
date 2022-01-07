; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qman_retire_fq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qman_retire_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.qman_fq = type { i64, i32, i32 }
%struct.qm_mc_command = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.qm_mc_result = type { i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@E_OK = common dso_local global i32 0, align 4
@qman_fq_state_parked = common dso_local global i64 0, align 8
@qman_fq_state_sched = common dso_local global i64 0, align 8
@E_INVALID_STATE = common dso_local global i32 0, align 4
@QMAN_FQ_FLAG_NO_MODIFY = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_CHANGING = common dso_local global i32 0, align 4
@qman_fq_state_retired = common dso_local global i64 0, align 8
@qman_fq_state_oos = common dso_local global i64 0, align 8
@E_BUSY = common dso_local global i32 0, align 4
@QM_MCC_VERB_ALTER_RETIRE_CTXB = common dso_local global i64 0, align 8
@QM_MCC_VERB_ALTER_RETIRE = common dso_local global i64 0, align 8
@QM_MCR_VERB_MASK = common dso_local global i32 0, align 4
@QM_MCR_VERB_ALTER_RETIRE_CTXB = common dso_local global i32 0, align 4
@QM_MCR_VERB_ALTER_RETIRE = common dso_local global i32 0, align 4
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@QM_MCR_FQS_NOTEMPTY = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_NE = common dso_local global i32 0, align 4
@QM_MCR_FQS_ORLPRESENT = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_ORL = common dso_local global i32 0, align 4
@QM_MCR_RESULT_PENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"ALTER_RETIRE failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.qman_fq*, i32*, i32)* @qman_retire_fq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qman_retire_fq(%struct.TYPE_9__* %0, %struct.qman_fq* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.qman_fq*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qm_mc_command*, align 8
  %11 = alloca %struct.qm_mc_result*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @E_OK, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %16 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @qman_fq_state_parked, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %22 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @qman_fq_state_sched, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %20, %4
  %27 = phi i1 [ true, %4 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @E_INVALID_STATE, align 4
  %30 = call i32 @SANITY_CHECK_RETURN_ERROR(i32 %28, i32 %29)
  %31 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %32 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @QMAN_FQ_FLAG_NO_MODIFY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @E_INVALID_VALUE, align 4
  store i32 %38, i32* %5, align 4
  br label %188

39:                                               ; preds = %26
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = call i32 @NCSW_PLOCK(%struct.TYPE_9__* %40)
  %42 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %43 = call i32 @FQLOCK(%struct.qman_fq* %42)
  %44 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %45 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @QMAN_FQ_STATE_CHANGING, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %39
  %51 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %52 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @qman_fq_state_retired, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %58 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @qman_fq_state_oos, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %50, %39
  %63 = load i32, i32* @E_BUSY, align 4
  store i32 %63, i32* %12, align 4
  br label %182

64:                                               ; preds = %56
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.qm_mc_command* @qm_mc_start(i32 %67)
  store %struct.qm_mc_command* %68, %struct.qm_mc_command** %10, align 8
  %69 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %70 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qm_mc_command*, %struct.qm_mc_command** %10, align 8
  %73 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %64
  %78 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %79 = call i32 @aligned_int_from_ptr(%struct.qman_fq* %78)
  %80 = load %struct.qm_mc_command*, %struct.qm_mc_command** %10, align 8
  %81 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %64
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i64, i64* @QM_MCC_VERB_ALTER_RETIRE_CTXB, align 8
  br label %93

91:                                               ; preds = %83
  %92 = load i64, i64* @QM_MCC_VERB_ALTER_RETIRE, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i64 [ %90, %89 ], [ %92, %91 ]
  %95 = call i32 @qm_mc_commit(i32 %86, i64 %94)
  br label %96

96:                                               ; preds = %103, %93
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.qm_mc_result* @qm_mc_result(i32 %99)
  store %struct.qm_mc_result* %100, %struct.qm_mc_result** %11, align 8
  %101 = icmp ne %struct.qm_mc_result* %100, null
  %102 = xor i1 %101, true
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %96

104:                                              ; preds = %96
  %105 = load %struct.qm_mc_result*, %struct.qm_mc_result** %11, align 8
  %106 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* @QM_MCR_VERB_ALTER_RETIRE_CTXB, align 4
  br label %116

114:                                              ; preds = %104
  %115 = load i32, i32* @QM_MCR_VERB_ALTER_RETIRE, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  %118 = call i32 @ASSERT_COND(i32 %117)
  %119 = load %struct.qm_mc_result*, %struct.qm_mc_result** %11, align 8
  %120 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %13, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %157

125:                                              ; preds = %116
  %126 = load %struct.qm_mc_result*, %struct.qm_mc_result** %11, align 8
  %127 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @QM_MCR_FQS_NOTEMPTY, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %125
  %134 = load i32, i32* @QMAN_FQ_STATE_NE, align 4
  %135 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %136 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %133, %125
  %140 = load %struct.qm_mc_result*, %struct.qm_mc_result** %11, align 8
  %141 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @QM_MCR_FQS_ORLPRESENT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %139
  %148 = load i32, i32* @QMAN_FQ_STATE_ORL, align 4
  %149 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %150 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %147, %139
  %154 = load i64, i64* @qman_fq_state_retired, align 8
  %155 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %156 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  br label %173

157:                                              ; preds = %116
  %158 = load i64, i64* %13, align 8
  %159 = load i64, i64* @QM_MCR_RESULT_PENDING, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load i32, i32* @QMAN_FQ_STATE_CHANGING, align 4
  %163 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %164 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %172

167:                                              ; preds = %157
  %168 = load i64, i64* %13, align 8
  %169 = call i32 @mcr_result_str(i64 %168)
  %170 = call i32 @XX_Print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @E_INVALID_STATE, align 4
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %167, %161
  br label %173

173:                                              ; preds = %172, %153
  %174 = load i32*, i32** %8, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %178 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32*, i32** %8, align 8
  store i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %176, %173
  br label %182

182:                                              ; preds = %181, %62
  %183 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %184 = call i32 @FQUNLOCK(%struct.qman_fq* %183)
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %186 = call i32 @PUNLOCK(%struct.TYPE_9__* %185)
  %187 = load i32, i32* %12, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %182, %37
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i32, i32) #1

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @FQLOCK(%struct.qman_fq*) #1

declare dso_local %struct.qm_mc_command* @qm_mc_start(i32) #1

declare dso_local i32 @aligned_int_from_ptr(%struct.qman_fq*) #1

declare dso_local i32 @qm_mc_commit(i32, i64) #1

declare dso_local %struct.qm_mc_result* @qm_mc_result(i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @XX_Print(i8*, i32) #1

declare dso_local i32 @mcr_result_str(i64) #1

declare dso_local i32 @FQUNLOCK(%struct.qman_fq*) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
