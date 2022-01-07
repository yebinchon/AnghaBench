; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_CG_ModifyTailDropThreshold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_CG_ModifyTailDropThreshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64 }
%struct.qm_mc_command = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.qm_mc_result = type { i32, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@QM_MCC_VERB_QUERYCGR = common dso_local global i32 0, align 4
@QM_MCR_VERB_MASK = common dso_local global i32 0, align 4
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"QM_MCC_VERB_QUERYCGR failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Tail Drop is not enabled!\00", align 1
@QM_CGR_WE_CS_THRES = common dso_local global i32 0, align 4
@QM_MCC_VERB_MODIFYCGR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"INITCGR failed: %s\00", align 1
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @QM_CG_ModifyTailDropThreshold(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.qm_mc_command*, align 8
  %7 = alloca %struct.qm_mc_result*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i64, i64* %3, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = load i32, i32* @E_INVALID_HANDLE, align 4
  %19 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_17__* %17, i32 %18)
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %8, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %25 = call i32 @NCSW_PLOCK(%struct.TYPE_16__* %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.qm_mc_command* @qm_mc_start(i32 %28)
  store %struct.qm_mc_command* %29, %struct.qm_mc_command** %6, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qm_mc_command*, %struct.qm_mc_command** %6, align 8
  %34 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @QM_MCC_VERB_QUERYCGR, align 4
  %40 = call i32 @qm_mc_commit(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %48, %2
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.qm_mc_result* @qm_mc_result(i32 %44)
  store %struct.qm_mc_result* %45, %struct.qm_mc_result** %7, align 8
  %46 = icmp ne %struct.qm_mc_result* %45, null
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %41

49:                                               ; preds = %41
  %50 = load %struct.qm_mc_result*, %struct.qm_mc_result** %7, align 8
  %51 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @QM_MCC_VERB_QUERYCGR, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT_COND(i32 %57)
  %59 = load %struct.qm_mc_result*, %struct.qm_mc_result** %7, align 8
  %60 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %49
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = call i32 @PUNLOCK(%struct.TYPE_16__* %65)
  %67 = load i32, i32* @MINOR, align 4
  %68 = load i32, i32* @E_INVALID_STATE, align 4
  %69 = load %struct.qm_mc_result*, %struct.qm_mc_result** %7, align 8
  %70 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @mcr_result_str(i64 %71)
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @RETURN_ERROR(i32 %67, i32 %68, i8* %74)
  br label %76

76:                                               ; preds = %64, %49
  %77 = load %struct.qm_mc_result*, %struct.qm_mc_result** %7, align 8
  %78 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %76
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = call i32 @PUNLOCK(%struct.TYPE_16__* %84)
  %86 = load i32, i32* @MINOR, align 4
  %87 = load i32, i32* @E_INVALID_STATE, align 4
  %88 = call i32 @RETURN_ERROR(i32 %86, i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %83, %76
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.qm_mc_command* @qm_mc_start(i32 %92)
  store %struct.qm_mc_command* %93, %struct.qm_mc_command** %6, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.qm_mc_command*, %struct.qm_mc_command** %6, align 8
  %98 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @QM_CGR_WE_CS_THRES, align 4
  %101 = load %struct.qm_mc_command*, %struct.qm_mc_command** %6, align 8
  %102 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %100
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %134, %89
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 256
  br i1 %109, label %110, label %137

110:                                              ; preds = %107
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %130, %110
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %112, 32
  br i1 %113, label %114, label %133

114:                                              ; preds = %111
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = shl i32 1, %117
  %119 = mul nsw i32 %116, %118
  %120 = sub nsw i32 %115, %119
  %121 = call i32 @ABS(i32 %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %125, %114
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %111

133:                                              ; preds = %111
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %107

137:                                              ; preds = %107
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.qm_mc_command*, %struct.qm_mc_command** %6, align 8
  %140 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  store i32 %138, i32* %143, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.qm_mc_command*, %struct.qm_mc_command** %6, align 8
  %146 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  store i32 %144, i32* %149, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @QM_MCC_VERB_MODIFYCGR, align 4
  %154 = call i32 @qm_mc_commit(i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %162, %137
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call %struct.qm_mc_result* @qm_mc_result(i32 %158)
  store %struct.qm_mc_result* %159, %struct.qm_mc_result** %7, align 8
  %160 = icmp ne %struct.qm_mc_result* %159, null
  %161 = xor i1 %160, true
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %155

163:                                              ; preds = %155
  %164 = load %struct.qm_mc_result*, %struct.qm_mc_result** %7, align 8
  %165 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %168 = and i32 %166, %167
  %169 = load i32, i32* @QM_MCC_VERB_MODIFYCGR, align 4
  %170 = icmp eq i32 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @ASSERT_COND(i32 %171)
  %173 = load %struct.qm_mc_result*, %struct.qm_mc_result** %7, align 8
  %174 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %190

178:                                              ; preds = %163
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %180 = call i32 @PUNLOCK(%struct.TYPE_16__* %179)
  %181 = load i32, i32* @MINOR, align 4
  %182 = load i32, i32* @E_INVALID_STATE, align 4
  %183 = load %struct.qm_mc_result*, %struct.qm_mc_result** %7, align 8
  %184 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @mcr_result_str(i64 %185)
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  %189 = call i32 @RETURN_ERROR(i32 %181, i32 %182, i8* %188)
  br label %190

190:                                              ; preds = %178, %163
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %192 = call i32 @PUNLOCK(%struct.TYPE_16__* %191)
  %193 = load i32, i32* @E_OK, align 4
  ret i32 %193
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_16__*) #1

declare dso_local %struct.qm_mc_command* @qm_mc_start(i32) #1

declare dso_local i32 @qm_mc_commit(i32, i32) #1

declare dso_local %struct.qm_mc_result* @qm_mc_result(i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @mcr_result_str(i64) #1

declare dso_local i32 @ABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
