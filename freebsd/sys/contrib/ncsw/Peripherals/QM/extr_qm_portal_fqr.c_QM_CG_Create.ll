; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_CG_Create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_CG_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_37__*, i64, %struct.TYPE_37__*, i32, i32 }
%struct.TYPE_37__ = type { i64, i32, i32, i64, i64, i64, %struct.TYPE_35__, i64, i64, %struct.TYPE_37__*, i32, %struct.TYPE_37__* }
%struct.TYPE_35__ = type { i32, i64, i32, i64, i32, i64 }
%struct.qm_mc_command = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, %struct.TYPE_33__, i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_31__, i8*, i8*, %struct.TYPE_30__, i8*, %struct.TYPE_29__, i8*, %struct.TYPE_32__, i8*, i8* }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.qm_mc_result = type { i32, i64 }

@E_INVALID_HANDLE = common dso_local global i64 0, align 8
@e_DPAA_DCPORTAL2 = common dso_local global i64 0, align 8
@e_DPAA_DCPORTAL3 = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"notifyDcPortal is invalid for this DC Portal\00", align 1
@E_INVALID_STATE = common dso_local global i64 0, align 8
@E_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"QM CG obj!!!\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"QmGetCgId failed\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"QmPortalRegisterCg failed\00", align 1
@QM_CGR_WE_MODE = common dso_local global i32 0, align 4
@QM_CGR_EN = common dso_local global i8* null, align 8
@NO_MSG = common dso_local global i8* null, align 8
@QM_CGR_WE_WR_EN_G = common dso_local global i32 0, align 4
@QM_CGR_WE_WR_PARM_G = common dso_local global i32 0, align 4
@QM_CGR_WE_WR_EN_Y = common dso_local global i32 0, align 4
@QM_CGR_WE_WR_PARM_Y = common dso_local global i32 0, align 4
@QM_CGR_WE_WR_EN_R = common dso_local global i32 0, align 4
@QM_CGR_WE_WR_PARM_R = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"tailDropThreshold must be configured if tailDropEnable \00", align 1
@QM_CGR_WE_CSTD_EN = common dso_local global i32 0, align 4
@QM_CGR_WE_CS_THRES = common dso_local global i32 0, align 4
@QM_CGR_WE_CSCN_EN = common dso_local global i32 0, align 4
@QM_CGR_WE_CSCN_TARG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"No threshold configured, but f_Exception defined\00", align 1
@QM_MCC_VERB_INITCGR = common dso_local global i32 0, align 4
@QM_MCR_VERB_MASK = common dso_local global i32 0, align 4
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"INITCGR failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_28__* @QM_CG_Create(%struct.TYPE_37__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca %struct.TYPE_37__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qm_mc_command*, align 8
  %15 = alloca %struct.qm_mc_result*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %3, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %17 = load i64, i64* @E_INVALID_HANDLE, align 8
  %18 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_37__* %16, i64 %17, i32* null)
  %19 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %19, i32 0, i32 9
  %21 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %22 = load i64, i64* @E_INVALID_HANDLE, align 8
  %23 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_37__* %21, i64 %22, i32* null)
  %24 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %1
  %29 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @e_DPAA_DCPORTAL2, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @e_DPAA_DCPORTAL3, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34, %28
  %41 = load i32, i32* @MAJOR, align 4
  %42 = load i64, i64* @E_INVALID_VALUE, align 8
  %43 = call i32 @REPORT_ERROR(i32 %41, i64 %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %2, align 8
  br label %495

44:                                               ; preds = %34, %1
  %45 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %45, i32 0, i32 11
  %47 = load %struct.TYPE_37__*, %struct.TYPE_37__** %46, align 8
  %48 = icmp ne %struct.TYPE_37__* %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 9
  %52 = load %struct.TYPE_37__*, %struct.TYPE_37__** %51, align 8
  %53 = call %struct.TYPE_37__* @QmGetPortalHandle(%struct.TYPE_37__* %52)
  store %struct.TYPE_37__* %53, %struct.TYPE_37__** %5, align 8
  %54 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %55 = load i64, i64* @E_INVALID_STATE, align 8
  %56 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_37__* %54, i64 %55, i32* null)
  br label %61

57:                                               ; preds = %44
  %58 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %58, i32 0, i32 11
  %60 = load %struct.TYPE_37__*, %struct.TYPE_37__** %59, align 8
  store %struct.TYPE_37__* %60, %struct.TYPE_37__** %5, align 8
  br label %61

61:                                               ; preds = %57, %49
  %62 = call i64 @XX_Malloc(i32 32)
  %63 = inttoptr i64 %62 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %63, %struct.TYPE_28__** %4, align 8
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %65 = icmp ne %struct.TYPE_28__* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @MAJOR, align 4
  %68 = load i64, i64* @E_NO_MEMORY, align 8
  %69 = call i32 @REPORT_ERROR(i32 %67, i64 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %2, align 8
  br label %495

70:                                               ; preds = %61
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %72 = call i32 @memset(%struct.TYPE_28__* %71, i32 0, i32 32)
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %73, i32 0, i32 9
  %75 = load %struct.TYPE_37__*, %struct.TYPE_37__** %74, align 8
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 2
  store %struct.TYPE_37__* %75, %struct.TYPE_37__** %77, align 8
  %78 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  store %struct.TYPE_37__* %78, %struct.TYPE_37__** %80, align 8
  %81 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %86, i32 0, i32 9
  %88 = load %struct.TYPE_37__*, %struct.TYPE_37__** %87, align 8
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 3
  %91 = call i64 @QmGetCgId(%struct.TYPE_37__* %88, i32* %90)
  store i64 %91, i64* %6, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %70
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %96 = call i32 @XX_Free(%struct.TYPE_28__* %95)
  %97 = load i32, i32* @MAJOR, align 4
  %98 = load i64, i64* @E_INVALID_STATE, align 8
  %99 = call i32 @REPORT_ERROR(i32 %97, i64 %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %2, align 8
  br label %495

100:                                              ; preds = %70
  %101 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %102 = call i32 @NCSW_PLOCK(%struct.TYPE_37__* %101)
  %103 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.qm_mc_command* @qm_mc_start(i32 %105)
  store %struct.qm_mc_command* %106, %struct.qm_mc_command** %14, align 8
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %111 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i32 0, i32 2
  store i32 %109, i32* %112, align 8
  %113 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @QmPortalRegisterCg(%struct.TYPE_37__* %113, %struct.TYPE_28__* %114, i32 %117)
  store i64 %118, i64* %6, align 8
  %119 = load i64, i64* %6, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %100
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %123 = call i32 @XX_Free(%struct.TYPE_28__* %122)
  %124 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %125 = call i32 @PUNLOCK(%struct.TYPE_37__* %124)
  %126 = load i32, i32* @MAJOR, align 4
  %127 = load i64, i64* @E_INVALID_STATE, align 8
  %128 = call i32 @REPORT_ERROR(i32 %126, i64 %127, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %2, align 8
  br label %495

129:                                              ; preds = %100
  %130 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %130, i32 0, i32 8
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %129
  %135 = load i32, i32* @QM_CGR_WE_MODE, align 4
  %136 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %137 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %135
  store i32 %140, i32* %138, align 8
  %141 = load i8*, i8** @QM_CGR_EN, align 8
  %142 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %143 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %144, i32 0, i32 10
  store i8* %141, i8** %145, align 8
  br label %146

146:                                              ; preds = %134, %129
  %147 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %147, i32 0, i32 7
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %278

151:                                              ; preds = %146
  %152 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %193

157:                                              ; preds = %151
  %158 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %159, i32 0, i32 4
  %161 = call i64 @CalcWredCurve(i32* %160, i32* %7)
  store i64 %161, i64* %6, align 8
  %162 = load i64, i64* %6, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %157
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %166 = call i32 @XX_Free(%struct.TYPE_28__* %165)
  %167 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %168 = call i32 @PUNLOCK(%struct.TYPE_37__* %167)
  %169 = load i32, i32* @MAJOR, align 4
  %170 = load i64, i64* %6, align 8
  %171 = load i8*, i8** @NO_MSG, align 8
  %172 = call i32 @REPORT_ERROR(i32 %169, i64 %170, i8* %171)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %2, align 8
  br label %495

173:                                              ; preds = %157
  %174 = load i32, i32* @QM_CGR_WE_WR_EN_G, align 4
  %175 = load i32, i32* @QM_CGR_WE_WR_PARM_G, align 4
  %176 = or i32 %174, %175
  %177 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %178 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %176
  store i32 %181, i32* %179, align 8
  %182 = load i8*, i8** @QM_CGR_EN, align 8
  %183 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %184 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %185, i32 0, i32 9
  store i8* %182, i8** %186, align 8
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %189 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %190, i32 0, i32 8
  %192 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %191, i32 0, i32 0
  store i32 %187, i32* %192, align 8
  br label %193

193:                                              ; preds = %173, %151
  %194 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %194, i32 0, i32 6
  %196 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %235

199:                                              ; preds = %193
  %200 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %200, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %201, i32 0, i32 2
  %203 = call i64 @CalcWredCurve(i32* %202, i32* %7)
  store i64 %203, i64* %6, align 8
  %204 = load i64, i64* %6, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %199
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %208 = call i32 @XX_Free(%struct.TYPE_28__* %207)
  %209 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %210 = call i32 @PUNLOCK(%struct.TYPE_37__* %209)
  %211 = load i32, i32* @MAJOR, align 4
  %212 = load i64, i64* %6, align 8
  %213 = load i8*, i8** @NO_MSG, align 8
  %214 = call i32 @REPORT_ERROR(i32 %211, i64 %212, i8* %213)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %2, align 8
  br label %495

215:                                              ; preds = %199
  %216 = load i32, i32* @QM_CGR_WE_WR_EN_Y, align 4
  %217 = load i32, i32* @QM_CGR_WE_WR_PARM_Y, align 4
  %218 = or i32 %216, %217
  %219 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %220 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %218
  store i32 %223, i32* %221, align 8
  %224 = load i8*, i8** @QM_CGR_EN, align 8
  %225 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %226 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i32 0, i32 7
  store i8* %224, i8** %228, align 8
  %229 = load i32, i32* %7, align 4
  %230 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %231 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 6
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 0
  store i32 %229, i32* %234, align 8
  br label %235

235:                                              ; preds = %215, %193
  %236 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %277

241:                                              ; preds = %235
  %242 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %242, i32 0, i32 6
  %244 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %243, i32 0, i32 0
  %245 = call i64 @CalcWredCurve(i32* %244, i32* %7)
  store i64 %245, i64* %6, align 8
  %246 = load i64, i64* %6, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %241
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %250 = call i32 @XX_Free(%struct.TYPE_28__* %249)
  %251 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %252 = call i32 @PUNLOCK(%struct.TYPE_37__* %251)
  %253 = load i32, i32* @MAJOR, align 4
  %254 = load i64, i64* %6, align 8
  %255 = load i8*, i8** @NO_MSG, align 8
  %256 = call i32 @REPORT_ERROR(i32 %253, i64 %254, i8* %255)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %2, align 8
  br label %495

257:                                              ; preds = %241
  %258 = load i32, i32* @QM_CGR_WE_WR_EN_R, align 4
  %259 = load i32, i32* @QM_CGR_WE_WR_PARM_R, align 4
  %260 = or i32 %258, %259
  %261 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %262 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %260
  store i32 %265, i32* %263, align 8
  %266 = load i8*, i8** @QM_CGR_EN, align 8
  %267 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %268 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %269, i32 0, i32 5
  store i8* %266, i8** %270, align 8
  %271 = load i32, i32* %7, align 4
  %272 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %273 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %275, i32 0, i32 0
  store i32 %271, i32* %276, align 8
  br label %277

277:                                              ; preds = %257, %235
  br label %278

278:                                              ; preds = %277, %146
  %279 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %279, i32 0, i32 5
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %308

283:                                              ; preds = %278
  %284 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %296, label %288

288:                                              ; preds = %283
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %290 = call i32 @XX_Free(%struct.TYPE_28__* %289)
  %291 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %292 = call i32 @PUNLOCK(%struct.TYPE_37__* %291)
  %293 = load i32, i32* @MINOR, align 4
  %294 = load i64, i64* @E_INVALID_STATE, align 8
  %295 = call i32 @REPORT_ERROR(i32 %293, i64 %294, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %2, align 8
  br label %495

296:                                              ; preds = %283
  %297 = load i8*, i8** @QM_CGR_EN, align 8
  %298 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %299 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %300, i32 0, i32 3
  store i8* %297, i8** %301, align 8
  %302 = load i32, i32* @QM_CGR_WE_CSTD_EN, align 4
  %303 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %304 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = or i32 %306, %302
  store i32 %307, i32* %305, align 8
  br label %308

308:                                              ; preds = %296, %278
  %309 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %434

313:                                              ; preds = %308
  %314 = load i32, i32* @QM_CGR_WE_CS_THRES, align 4
  %315 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %316 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = or i32 %318, %314
  store i32 %319, i32* %317, align 8
  %320 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %323, i32 0, i32 1
  store i64 %322, i64* %324, align 8
  %325 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %313
  %330 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %330, i32 0, i32 4
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %385

334:                                              ; preds = %329, %313
  %335 = load i8*, i8** @QM_CGR_EN, align 8
  %336 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %337 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %338, i32 0, i32 2
  store i8* %335, i8** %339, align 8
  %340 = load i32, i32* @QM_CGR_WE_CSCN_EN, align 4
  %341 = load i32, i32* @QM_CGR_WE_CSCN_TARG, align 4
  %342 = or i32 %340, %341
  %343 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %344 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = or i32 %346, %342
  store i32 %347, i32* %345, align 8
  %348 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %349 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %350, i32 0, i32 0
  store i32 0, i32* %351, align 8
  %352 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %367

356:                                              ; preds = %334
  %357 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_37__*, %struct.TYPE_37__** %358, align 8
  %360 = call i32 @QmPortalGetSwPortalId(%struct.TYPE_37__* %359)
  %361 = call i64 @QM_CGR_TARGET_SWP(i32 %360)
  %362 = trunc i64 %361 to i32
  %363 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %364 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %365, i32 0, i32 0
  store i32 %362, i32* %366, align 8
  br label %367

367:                                              ; preds = %356, %334
  %368 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %368, i32 0, i32 4
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %384

372:                                              ; preds = %367
  %373 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = call i64 @QM_CGR_TARGET_DCP(i64 %375)
  %377 = trunc i64 %376 to i32
  %378 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %379 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = or i32 %382, %377
  store i32 %383, i32* %381, align 8
  br label %384

384:                                              ; preds = %372, %367
  br label %385

385:                                              ; preds = %384, %329
  %386 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 8
  store i32 %388, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %389

389:                                              ; preds = %418, %385
  %390 = load i32, i32* %8, align 4
  %391 = icmp slt i32 %390, 256
  br i1 %391, label %392, label %421

392:                                              ; preds = %389
  store i32 0, i32* %9, align 4
  br label %393

393:                                              ; preds = %414, %392
  %394 = load i32, i32* %9, align 4
  %395 = icmp slt i32 %394, 32
  br i1 %395, label %396, label %417

396:                                              ; preds = %393
  %397 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* %8, align 4
  %401 = load i32, i32* %9, align 4
  %402 = shl i32 1, %401
  %403 = mul nsw i32 %400, %402
  %404 = sub nsw i32 %399, %403
  %405 = call i32 @ABS(i32 %404)
  store i32 %405, i32* %13, align 4
  %406 = load i32, i32* %13, align 4
  %407 = load i32, i32* %12, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %413

409:                                              ; preds = %396
  %410 = load i32, i32* %8, align 4
  store i32 %410, i32* %10, align 4
  %411 = load i32, i32* %9, align 4
  store i32 %411, i32* %11, align 4
  %412 = load i32, i32* %13, align 4
  store i32 %412, i32* %12, align 4
  br label %413

413:                                              ; preds = %409, %396
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %9, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %9, align 4
  br label %393

417:                                              ; preds = %393
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %8, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %8, align 4
  br label %389

421:                                              ; preds = %389
  %422 = load i32, i32* %10, align 4
  %423 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %424 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %426, i32 0, i32 0
  store i32 %422, i32* %427, align 4
  %428 = load i32, i32* %11, align 4
  %429 = load %struct.qm_mc_command*, %struct.qm_mc_command** %14, align 8
  %430 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %432, i32 0, i32 1
  store i32 %428, i32* %433, align 4
  br label %448

434:                                              ; preds = %308
  %435 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %436 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %435, i32 0, i32 3
  %437 = load i64, i64* %436, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %447

439:                                              ; preds = %434
  %440 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %441 = call i32 @XX_Free(%struct.TYPE_28__* %440)
  %442 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %443 = call i32 @PUNLOCK(%struct.TYPE_37__* %442)
  %444 = load i32, i32* @MINOR, align 4
  %445 = load i64, i64* @E_INVALID_STATE, align 8
  %446 = call i32 @REPORT_ERROR(i32 %444, i64 %445, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %2, align 8
  br label %495

447:                                              ; preds = %434
  br label %448

448:                                              ; preds = %447, %421
  %449 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* @QM_MCC_VERB_INITCGR, align 4
  %453 = call i32 @qm_mc_commit(i32 %451, i32 %452)
  br label %454

454:                                              ; preds = %461, %448
  %455 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %456 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 4
  %458 = call %struct.qm_mc_result* @qm_mc_result(i32 %457)
  store %struct.qm_mc_result* %458, %struct.qm_mc_result** %15, align 8
  %459 = icmp ne %struct.qm_mc_result* %458, null
  %460 = xor i1 %459, true
  br i1 %460, label %461, label %462

461:                                              ; preds = %454
  br label %454

462:                                              ; preds = %454
  %463 = load %struct.qm_mc_result*, %struct.qm_mc_result** %15, align 8
  %464 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %467 = and i32 %465, %466
  %468 = load i32, i32* @QM_MCC_VERB_INITCGR, align 4
  %469 = icmp eq i32 %467, %468
  %470 = zext i1 %469 to i32
  %471 = call i32 @ASSERT_COND(i32 %470)
  %472 = load %struct.qm_mc_result*, %struct.qm_mc_result** %15, align 8
  %473 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %472, i32 0, i32 1
  %474 = load i64, i64* %473, align 8
  %475 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %476 = icmp ne i64 %474, %475
  br i1 %476, label %477, label %491

477:                                              ; preds = %462
  %478 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %479 = call i32 @XX_Free(%struct.TYPE_28__* %478)
  %480 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %481 = call i32 @PUNLOCK(%struct.TYPE_37__* %480)
  %482 = load i32, i32* @MINOR, align 4
  %483 = load i64, i64* @E_INVALID_STATE, align 8
  %484 = load %struct.qm_mc_result*, %struct.qm_mc_result** %15, align 8
  %485 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %484, i32 0, i32 1
  %486 = load i64, i64* %485, align 8
  %487 = call i32 @mcr_result_str(i64 %486)
  %488 = sext i32 %487 to i64
  %489 = inttoptr i64 %488 to i8*
  %490 = call i32 @REPORT_ERROR(i32 %482, i64 %483, i8* %489)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %2, align 8
  br label %495

491:                                              ; preds = %462
  %492 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %493 = call i32 @PUNLOCK(%struct.TYPE_37__* %492)
  %494 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_28__* %494, %struct.TYPE_28__** %2, align 8
  br label %495

495:                                              ; preds = %491, %477, %439, %288, %248, %206, %164, %121, %94, %66, %40
  %496 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  ret %struct.TYPE_28__* %496
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_37__*, i64, i32*) #1

declare dso_local i32 @REPORT_ERROR(i32, i64, i8*) #1

declare dso_local %struct.TYPE_37__* @QmGetPortalHandle(%struct.TYPE_37__*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i64 @QmGetCgId(%struct.TYPE_37__*, i32*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_28__*) #1

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_37__*) #1

declare dso_local %struct.qm_mc_command* @qm_mc_start(i32) #1

declare dso_local i64 @QmPortalRegisterCg(%struct.TYPE_37__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_37__*) #1

declare dso_local i64 @CalcWredCurve(i32*, i32*) #1

declare dso_local i64 @QM_CGR_TARGET_SWP(i32) #1

declare dso_local i32 @QmPortalGetSwPortalId(%struct.TYPE_37__*) #1

declare dso_local i64 @QM_CGR_TARGET_DCP(i64) #1

declare dso_local i32 @ABS(i32) #1

declare dso_local i32 @qm_mc_commit(i32, i32) #1

declare dso_local %struct.qm_mc_result* @qm_mc_result(i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @mcr_result_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
