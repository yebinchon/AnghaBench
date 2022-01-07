; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qman_create_portal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qman_create_portal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.qm_portal_config }
%struct.qm_portal_config = type { i32 }

@e_QmPortalPVB = common dso_local global i32 0, align 4
@e_QmPortalEqcrCCE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Qman EQCR initialization failed\0A\00", align 1
@e_QmPortalDequeuePushMode = common dso_local global i32 0, align 4
@e_QmPortalDequeuePullMode = common dso_local global i32 0, align 4
@QMAN_PORTAL_FLAG_DCA = common dso_local global i32 0, align 4
@e_QmPortalDqrrDCA = common dso_local global i32 0, align 4
@e_QmPortalDqrrCCI = common dso_local global i32 0, align 4
@QMAN_PORTAL_FLAG_RSTASH = common dso_local global i32 0, align 4
@QMAN_PORTAL_FLAG_DSTASH = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"DQRR initialization failed\00", align 1
@e_QmPortalMrCCI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"MR initialization failed\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"MC initialization failed\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ISR initialization failed\00", align 1
@DEFAULT_portalExceptions = common dso_local global i32 0, align 4
@QMAN_PORTAL_FLAG_IRQ = common dso_local global i32 0, align 4
@portal_isr = common dso_local global i32 0, align 4
@QMAN_PORTAL_FLAG_WAIT = common dso_local global i32 0, align 4
@QM_PIRQ_EQCI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"EQCR unclean\00", align 1
@QM_PIRQ_DQRI = common dso_local global i32 0, align 4
@QM_PIRQ_MRI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"DQRR unclean\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"MR unclean\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i32, i32, i32)* @qman_create_portal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qman_create_portal(%struct.TYPE_25__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qm_portal_config*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  store %struct.qm_portal_config* %17, %struct.qm_portal_config** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %21 = load i32, i32* @e_QmPortalPVB, align 4
  %22 = load i32, i32* @e_QmPortalEqcrCCE, align 4
  %23 = call i32 @qm_eqcr_init(%struct.TYPE_26__* %20, i32 %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @E_OK, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @MINOR, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @RETURN_ERROR(i32 %27, i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %4
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @e_QmPortalDequeuePushMode, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @e_QmPortalDequeuePullMode, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load i32, i32* @e_QmPortalPVB, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @QMAN_PORTAL_FLAG_DCA, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @e_QmPortalDqrrDCA, align 4
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @e_QmPortalDqrrCCI, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @QMAN_PORTAL_FLAG_RSTASH, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @QMAN_PORTAL_FLAG_DSTASH, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = call i64 @qm_dqrr_init(%struct.TYPE_26__* %33, i32 %41, i32 %42, i32 %52, i32 %53, i32 %59, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %51
  %69 = load i32, i32* @MAJOR, align 4
  %70 = load i32, i32* @E_INVALID_STATE, align 4
  %71 = call i32 @REPORT_ERROR(i32 %69, i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %239

72:                                               ; preds = %51
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %74, align 8
  %76 = load i32, i32* @e_QmPortalPVB, align 4
  %77 = load i32, i32* @e_QmPortalMrCCI, align 4
  %78 = call i64 @qm_mr_init(%struct.TYPE_26__* %75, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32, i32* @MAJOR, align 4
  %82 = load i32, i32* @E_INVALID_STATE, align 4
  %83 = call i32 @REPORT_ERROR(i32 %81, i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %234

84:                                               ; preds = %72
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %86, align 8
  %88 = call i64 @qm_mc_init(%struct.TYPE_26__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32, i32* @MAJOR, align 4
  %92 = load i32, i32* @E_INVALID_STATE, align 4
  %93 = call i32 @REPORT_ERROR(i32 %91, i32 %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %229

94:                                               ; preds = %84
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %96, align 8
  %98 = call i64 @qm_isr_init(%struct.TYPE_26__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @MAJOR, align 4
  %102 = load i32, i32* @E_INVALID_STATE, align 4
  %103 = call i32 @REPORT_ERROR(i32 %101, i32 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %224

104:                                              ; preds = %94
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %106, align 8
  %108 = call i32 @qm_dqrr_set_ithresh(%struct.TYPE_26__* %107, i32 12)
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %110, align 8
  %112 = call i32 @qm_mr_set_ithresh(%struct.TYPE_26__* %111, i32 4)
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %114, align 8
  %116 = call i32 @qm_isr_set_iperiod(%struct.TYPE_26__* %115, i32 100)
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  store i32 -1, i32* %13, align 4
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %121, align 8
  %123 = call i32 @qm_isr_status_clear(%struct.TYPE_26__* %122, i32 -1)
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %125, align 8
  %127 = load i32, i32* @DEFAULT_portalExceptions, align 4
  %128 = call i32 @qm_isr_enable_write(%struct.TYPE_26__* %126, i32 %127)
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @qm_isr_disable_write(%struct.TYPE_26__* %131, i32 %132)
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @QMAN_PORTAL_FLAG_IRQ, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %104
  %139 = load %struct.qm_portal_config*, %struct.qm_portal_config** %10, align 8
  %140 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @portal_isr, align 4
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %144 = call i32 @XX_SetIntr(i32 %141, i32 %142, %struct.TYPE_25__* %143)
  %145 = load %struct.qm_portal_config*, %struct.qm_portal_config** %10, align 8
  %146 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @XX_EnableIntr(i32 %147)
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %150, align 8
  %152 = call i32 @qm_isr_uninhibit(%struct.TYPE_26__* %151)
  br label %158

153:                                              ; preds = %104
  %154 = load i32, i32* @QMAN_PORTAL_FLAG_WAIT, align 4
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %7, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %153, %138
  %159 = load i32, i32* @QM_PIRQ_EQCI, align 4
  %160 = load i32, i32* %13, align 4
  %161 = xor i32 %160, %159
  store i32 %161, i32* %13, align 4
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %163, align 8
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @qm_isr_disable_write(%struct.TYPE_26__* %164, i32 %165)
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %168, align 8
  %170 = call i32 @qm_eqcr_get_fill(%struct.TYPE_26__* %169)
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %158
  %174 = load i32, i32* @MAJOR, align 4
  %175 = load i32, i32* @E_INVALID_STATE, align 4
  %176 = call i32 @REPORT_ERROR(i32 %174, i32 %175, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %219

177:                                              ; preds = %158
  %178 = load i32, i32* @QM_PIRQ_DQRI, align 4
  %179 = load i32, i32* @QM_PIRQ_MRI, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* %13, align 4
  %182 = xor i32 %181, %180
  store i32 %182, i32* %13, align 4
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %184, align 8
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @qm_isr_disable_write(%struct.TYPE_26__* %185, i32 %186)
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %189, align 8
  %191 = call i32* @qm_dqrr_current(%struct.TYPE_26__* %190)
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %177
  %194 = load i32, i32* @MAJOR, align 4
  %195 = load i32, i32* @E_INVALID_STATE, align 4
  %196 = call i32 @REPORT_ERROR(i32 %194, i32 %195, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %218

197:                                              ; preds = %177
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %199, align 8
  %201 = call i32* @qm_mr_current(%struct.TYPE_26__* %200)
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load i32, i32* @MAJOR, align 4
  %205 = load i32, i32* @E_INVALID_STATE, align 4
  %206 = call i32 @REPORT_ERROR(i32 %204, i32 %205, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %218

207:                                              ; preds = %197
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %209, align 8
  %211 = call i32 @qm_isr_disable_write(%struct.TYPE_26__* %210, i32 0)
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @qm_dqrr_sdqcr_set(%struct.TYPE_26__* %214, i32 %215)
  %217 = load i32, i32* @E_OK, align 4
  store i32 %217, i32* %5, align 4
  br label %246

218:                                              ; preds = %203, %193
  br label %219

219:                                              ; preds = %218, %173
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %221, align 8
  %223 = call i32 @qm_isr_finish(%struct.TYPE_26__* %222)
  br label %224

224:                                              ; preds = %219, %100
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %226, align 8
  %228 = call i32 @qm_mc_finish(%struct.TYPE_26__* %227)
  br label %229

229:                                              ; preds = %224, %90
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %231, align 8
  %233 = call i32 @qm_mr_finish(%struct.TYPE_26__* %232)
  br label %234

234:                                              ; preds = %229, %80
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %236, align 8
  %238 = call i32 @qm_dqrr_finish(%struct.TYPE_26__* %237)
  br label %239

239:                                              ; preds = %234, %68
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %241, align 8
  %243 = call i32 @qm_eqcr_finish(%struct.TYPE_26__* %242)
  %244 = load i32, i32* @E_INVALID_STATE, align 4
  %245 = call i32 @ERROR_CODE(i32 %244)
  store i32 %245, i32* %5, align 4
  br label %246

246:                                              ; preds = %239, %207
  %247 = load i32, i32* %5, align 4
  ret i32 %247
}

declare dso_local i32 @qm_eqcr_init(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i64 @qm_dqrr_init(%struct.TYPE_26__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i64 @qm_mr_init(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @qm_mc_init(%struct.TYPE_26__*) #1

declare dso_local i64 @qm_isr_init(%struct.TYPE_26__*) #1

declare dso_local i32 @qm_dqrr_set_ithresh(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @qm_mr_set_ithresh(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @qm_isr_set_iperiod(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @qm_isr_status_clear(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @qm_isr_enable_write(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @qm_isr_disable_write(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @XX_SetIntr(i32, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @XX_EnableIntr(i32) #1

declare dso_local i32 @qm_isr_uninhibit(%struct.TYPE_26__*) #1

declare dso_local i32 @qm_eqcr_get_fill(%struct.TYPE_26__*) #1

declare dso_local i32* @qm_dqrr_current(%struct.TYPE_26__*) #1

declare dso_local i32* @qm_mr_current(%struct.TYPE_26__*) #1

declare dso_local i32 @qm_dqrr_sdqcr_set(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @qm_isr_finish(%struct.TYPE_26__*) #1

declare dso_local i32 @qm_mc_finish(%struct.TYPE_26__*) #1

declare dso_local i32 @qm_mr_finish(%struct.TYPE_26__*) #1

declare dso_local i32 @qm_dqrr_finish(%struct.TYPE_26__*) #1

declare dso_local i32 @qm_eqcr_finish(%struct.TYPE_26__*) #1

declare dso_local i32 @ERROR_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
