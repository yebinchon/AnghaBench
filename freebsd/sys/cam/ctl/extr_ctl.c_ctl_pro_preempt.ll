; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_pro_preempt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_pro_preempt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_softc = type { i32 }
%struct.ctl_lun = type { i32, i32, i32, i32, i32, i32 }
%struct.ctl_scsiio = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.scsi_per_res_out = type { i32 }
%struct.scsi_per_res_out_parms = type { i32 }
%union.ctl_ha_msg = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i8* }
%union.ctl_io = type { i32 }
%struct.TYPE_6__ = type { i8*, i32 }

@CTL_PR_ALL_REGISTRANTS = common dso_local global i32 0, align 4
@SPR_SCOPE_MASK = common dso_local global i32 0, align 4
@SPR_LU_SCOPE = common dso_local global i32 0, align 4
@CTL_MAX_INITIATORS = common dso_local global i32 0, align 4
@CTL_UA_REG_PREEMPT = common dso_local global i32 0, align 4
@SPR_TYPE_WR_EX_AR = common dso_local global i32 0, align 4
@SPR_TYPE_EX_AC_AR = common dso_local global i32 0, align 4
@CTL_MSG_PERS_ACTION = common dso_local global i8* null, align 8
@CTL_PR_PREEMPT = common dso_local global i8* null, align 8
@CTL_HA_CHAN_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@CTL_LUN_PR_RESERVED = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@SPR_TYPE_WR_EX_RO = common dso_local global i32 0, align 4
@SPR_TYPE_EX_AC_RO = common dso_local global i32 0, align 4
@CTL_UA_RES_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_softc*, %struct.ctl_lun*, i64, i64, i32, i32, %struct.ctl_scsiio*, %struct.scsi_per_res_out*, %struct.scsi_per_res_out_parms*)* @ctl_pro_preempt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_pro_preempt(%struct.ctl_softc* %0, %struct.ctl_lun* %1, i64 %2, i64 %3, i32 %4, i32 %5, %struct.ctl_scsiio* %6, %struct.scsi_per_res_out* %7, %struct.scsi_per_res_out_parms* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.ctl_softc*, align 8
  %12 = alloca %struct.ctl_lun*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ctl_scsiio*, align 8
  %18 = alloca %struct.scsi_per_res_out*, align 8
  %19 = alloca %struct.scsi_per_res_out_parms*, align 8
  %20 = alloca %union.ctl_ha_msg, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ctl_softc* %0, %struct.ctl_softc** %11, align 8
  store %struct.ctl_lun* %1, %struct.ctl_lun** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store %struct.ctl_scsiio* %6, %struct.ctl_scsiio** %17, align 8
  store %struct.scsi_per_res_out* %7, %struct.scsi_per_res_out** %18, align 8
  store %struct.scsi_per_res_out_parms* %8, %struct.scsi_per_res_out_parms** %19, align 8
  %24 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %25 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %24, i32 0, i32 4
  %26 = call i32 @mtx_lock(i32* %25)
  %27 = load i64, i64* %14, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %177

29:                                               ; preds = %9
  %30 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %31 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CTL_PR_ALL_REGISTRANTS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %162

35:                                               ; preds = %29
  %36 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %18, align 8
  %37 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SPR_SCOPE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @SPR_LU_SCOPE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %45 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %44, i32 0, i32 4
  %46 = call i32 @mtx_unlock(i32* %45)
  %47 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %48 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %47, i32 1, i32 1, i32 2, i32 1, i32 4)
  %49 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %50 = bitcast %struct.ctl_scsiio* %49 to %union.ctl_io*
  %51 = call i32 @ctl_done(%union.ctl_io* %50)
  store i32 1, i32* %10, align 4
  br label %556

52:                                               ; preds = %35
  %53 = load i32, i32* %15, align 4
  %54 = icmp sgt i32 %53, 8
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %15, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %15, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61, %58, %55, %52
  %65 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %66 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %65, i32 0, i32 4
  %67 = call i32 @mtx_unlock(i32* %66)
  %68 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %69 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %68, i32 1, i32 1, i32 2, i32 1, i32 0)
  %70 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %71 = bitcast %struct.ctl_scsiio* %70 to %union.ctl_io*
  %72 = call i32 @ctl_done(%union.ctl_io* %71)
  store i32 1, i32* %10, align 4
  br label %556

73:                                               ; preds = %61
  store i32 0, i32* %21, align 4
  br label %74

74:                                               ; preds = %96, %73
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* @CTL_MAX_INITIATORS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %74
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %84 = load i32, i32* %21, align 4
  %85 = call i64 @ctl_get_prkey(%struct.ctl_lun* %83, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %78
  br label %96

88:                                               ; preds = %82
  %89 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %90 = load i32, i32* %21, align 4
  %91 = call i32 @ctl_clr_prkey(%struct.ctl_lun* %89, i32 %90)
  %92 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* @CTL_UA_REG_PREEMPT, align 4
  %95 = call i32 @ctl_est_ua(%struct.ctl_lun* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %88, %87
  %97 = load i32, i32* %21, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %21, align 4
  br label %74

99:                                               ; preds = %74
  %100 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %101 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %100, i32 0, i32 1
  store i32 1, i32* %101, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %104 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %106 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SPR_TYPE_WR_EX_AR, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %99
  %111 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %112 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SPR_TYPE_EX_AC_AR, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* %16, align 4
  %118 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %119 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %116, %110, %99
  %121 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %122 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %126 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %125, i32 0, i32 4
  %127 = call i32 @mtx_unlock(i32* %126)
  %128 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %129 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_6__*
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  %134 = load i8*, i8** @CTL_MSG_PERS_ACTION, align 8
  %135 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_6__*
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @CTL_PR_PREEMPT, align 8
  %138 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  store i8* %137, i8** %140, align 8
  %141 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %142 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  %147 = load i32, i32* %15, align 4
  %148 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  %151 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.scsi_per_res_out_parms*, %struct.scsi_per_res_out_parms** %19, align 8
  %156 = getelementptr inbounds %struct.scsi_per_res_out_parms, %struct.scsi_per_res_out_parms* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @memcpy(i32 %154, i32 %157, i32 4)
  %159 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %160 = load i32, i32* @M_WAITOK, align 4
  %161 = call i32 @ctl_ha_msg_send(i32 %159, %union.ctl_ha_msg* %20, i32 24, i32 %160)
  br label %176

162:                                              ; preds = %29
  %163 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %164 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %163, i32 0, i32 4
  %165 = call i32 @mtx_unlock(i32* %164)
  %166 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %167 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @M_CTL, align 4
  %170 = call i32 @free(i32 %168, i32 %169)
  %171 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %172 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %171, i32 1, i32 0, i32 8, i32 0, i32 0)
  %173 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %174 = bitcast %struct.ctl_scsiio* %173 to %union.ctl_io*
  %175 = call i32 @ctl_done(%union.ctl_io* %174)
  store i32 1, i32* %10, align 4
  br label %556

176:                                              ; preds = %120
  br label %555

177:                                              ; preds = %9
  %178 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %179 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @CTL_PR_ALL_REGISTRANTS, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %190, label %183

183:                                              ; preds = %177
  %184 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %185 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @CTL_LUN_PR_RESERVED, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %295, label %190

190:                                              ; preds = %183, %177
  store i32 0, i32* %22, align 4
  %191 = load i64, i64* %13, align 8
  %192 = load i64, i64* %14, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %208

194:                                              ; preds = %190
  %195 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %196 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %195, i32 0, i32 4
  %197 = call i32 @mtx_unlock(i32* %196)
  %198 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %199 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @M_CTL, align 4
  %202 = call i32 @free(i32 %200, i32 %201)
  %203 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %204 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %203, i32 1, i32 0, i32 8, i32 0, i32 0)
  %205 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %206 = bitcast %struct.ctl_scsiio* %205 to %union.ctl_io*
  %207 = call i32 @ctl_done(%union.ctl_io* %206)
  store i32 1, i32* %10, align 4
  br label %556

208:                                              ; preds = %190
  store i32 0, i32* %21, align 4
  br label %209

209:                                              ; preds = %232, %208
  %210 = load i32, i32* %21, align 4
  %211 = load i32, i32* @CTL_MAX_INITIATORS, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %235

213:                                              ; preds = %209
  %214 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %215 = load i32, i32* %21, align 4
  %216 = call i64 @ctl_get_prkey(%struct.ctl_lun* %214, i32 %215)
  %217 = load i64, i64* %14, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  br label %232

220:                                              ; preds = %213
  store i32 1, i32* %22, align 4
  %221 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %222 = load i32, i32* %21, align 4
  %223 = call i32 @ctl_clr_prkey(%struct.ctl_lun* %221, i32 %222)
  %224 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %225 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %225, align 4
  %228 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* @CTL_UA_REG_PREEMPT, align 4
  %231 = call i32 @ctl_est_ua(%struct.ctl_lun* %228, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %220, %219
  %233 = load i32, i32* %21, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %21, align 4
  br label %209

235:                                              ; preds = %209
  %236 = load i32, i32* %22, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %253, label %238

238:                                              ; preds = %235
  %239 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %240 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %239, i32 0, i32 4
  %241 = call i32 @mtx_unlock(i32* %240)
  %242 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %243 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @M_CTL, align 4
  %246 = call i32 @free(i32 %244, i32 %245)
  %247 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %248 = call i32 @ctl_set_reservation_conflict(%struct.ctl_scsiio* %247)
  %249 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %250 = bitcast %struct.ctl_scsiio* %249 to %union.ctl_io*
  %251 = call i32 @ctl_done(%union.ctl_io* %250)
  %252 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %252, i32* %10, align 4
  br label %556

253:                                              ; preds = %235
  %254 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %255 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 4
  %258 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %259 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %258, i32 0, i32 4
  %260 = call i32 @mtx_unlock(i32* %259)
  %261 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %262 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_6__*
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 8
  %267 = load i8*, i8** @CTL_MSG_PERS_ACTION, align 8
  %268 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_6__*
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  store i8* %267, i8** %269, align 8
  %270 = load i8*, i8** @CTL_PR_PREEMPT, align 8
  %271 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 3
  store i8* %270, i8** %273, align 8
  %274 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %275 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 0
  store i32 %276, i32* %279, align 8
  %280 = load i32, i32* %15, align 4
  %281 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  store i32 %280, i32* %283, align 4
  %284 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.scsi_per_res_out_parms*, %struct.scsi_per_res_out_parms** %19, align 8
  %289 = getelementptr inbounds %struct.scsi_per_res_out_parms, %struct.scsi_per_res_out_parms* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @memcpy(i32 %287, i32 %290, i32 4)
  %292 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %293 = load i32, i32* @M_WAITOK, align 4
  %294 = call i32 @ctl_ha_msg_send(i32 %292, %union.ctl_ha_msg* %20, i32 24, i32 %293)
  br label %554

295:                                              ; preds = %183
  %296 = load i64, i64* %14, align 8
  %297 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %298 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %299 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = call i64 @ctl_get_prkey(%struct.ctl_lun* %297, i32 %300)
  %302 = icmp eq i64 %296, %301
  br i1 %302, label %303, label %467

303:                                              ; preds = %295
  %304 = load %struct.scsi_per_res_out*, %struct.scsi_per_res_out** %18, align 8
  %305 = getelementptr inbounds %struct.scsi_per_res_out, %struct.scsi_per_res_out* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @SPR_SCOPE_MASK, align 4
  %308 = and i32 %306, %307
  %309 = load i32, i32* @SPR_LU_SCOPE, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %320

311:                                              ; preds = %303
  %312 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %313 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %312, i32 0, i32 4
  %314 = call i32 @mtx_unlock(i32* %313)
  %315 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %316 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %315, i32 1, i32 1, i32 2, i32 1, i32 4)
  %317 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %318 = bitcast %struct.ctl_scsiio* %317 to %union.ctl_io*
  %319 = call i32 @ctl_done(%union.ctl_io* %318)
  store i32 1, i32* %10, align 4
  br label %556

320:                                              ; preds = %303
  %321 = load i32, i32* %15, align 4
  %322 = icmp sgt i32 %321, 8
  br i1 %322, label %332, label %323

323:                                              ; preds = %320
  %324 = load i32, i32* %15, align 4
  %325 = icmp eq i32 %324, 2
  br i1 %325, label %332, label %326

326:                                              ; preds = %323
  %327 = load i32, i32* %15, align 4
  %328 = icmp eq i32 %327, 4
  br i1 %328, label %332, label %329

329:                                              ; preds = %326
  %330 = load i32, i32* %15, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %341

332:                                              ; preds = %329, %326, %323, %320
  %333 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %334 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %333, i32 0, i32 4
  %335 = call i32 @mtx_unlock(i32* %334)
  %336 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %337 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %336, i32 1, i32 1, i32 2, i32 1, i32 0)
  %338 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %339 = bitcast %struct.ctl_scsiio* %338 to %union.ctl_io*
  %340 = call i32 @ctl_done(%union.ctl_io* %339)
  store i32 1, i32* %10, align 4
  br label %556

341:                                              ; preds = %329
  store i32 0, i32* %21, align 4
  br label %342

342:                                              ; preds = %399, %341
  %343 = load i32, i32* %21, align 4
  %344 = load i32, i32* @CTL_MAX_INITIATORS, align 4
  %345 = icmp slt i32 %343, %344
  br i1 %345, label %346, label %402

346:                                              ; preds = %342
  %347 = load i32, i32* %21, align 4
  %348 = load i32, i32* %16, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %355, label %350

350:                                              ; preds = %346
  %351 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %352 = load i32, i32* %21, align 4
  %353 = call i64 @ctl_get_prkey(%struct.ctl_lun* %351, i32 %352)
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %350, %346
  br label %399

356:                                              ; preds = %350
  %357 = load i64, i64* %14, align 8
  %358 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %359 = load i32, i32* %21, align 4
  %360 = call i64 @ctl_get_prkey(%struct.ctl_lun* %358, i32 %359)
  %361 = icmp eq i64 %357, %360
  br i1 %361, label %362, label %374

362:                                              ; preds = %356
  %363 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %364 = load i32, i32* %21, align 4
  %365 = call i32 @ctl_clr_prkey(%struct.ctl_lun* %363, i32 %364)
  %366 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %367 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %368, -1
  store i32 %369, i32* %367, align 4
  %370 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %371 = load i32, i32* %21, align 4
  %372 = load i32, i32* @CTL_UA_REG_PREEMPT, align 4
  %373 = call i32 @ctl_est_ua(%struct.ctl_lun* %370, i32 %371, i32 %372)
  br label %398

374:                                              ; preds = %356
  %375 = load i32, i32* %15, align 4
  %376 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %377 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %375, %378
  br i1 %379, label %380, label %397

380:                                              ; preds = %374
  %381 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %382 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @SPR_TYPE_WR_EX_RO, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %392, label %386

386:                                              ; preds = %380
  %387 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %388 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @SPR_TYPE_EX_AC_RO, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %397

392:                                              ; preds = %386, %380
  %393 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %394 = load i32, i32* %21, align 4
  %395 = load i32, i32* @CTL_UA_RES_RELEASE, align 4
  %396 = call i32 @ctl_est_ua(%struct.ctl_lun* %393, i32 %394, i32 %395)
  br label %397

397:                                              ; preds = %392, %386, %374
  br label %398

398:                                              ; preds = %397, %362
  br label %399

399:                                              ; preds = %398, %355
  %400 = load i32, i32* %21, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %21, align 4
  br label %342

402:                                              ; preds = %342
  %403 = load i32, i32* %15, align 4
  %404 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %405 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %404, i32 0, i32 2
  store i32 %403, i32* %405, align 4
  %406 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %407 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @SPR_TYPE_WR_EX_AR, align 4
  %410 = icmp ne i32 %408, %409
  br i1 %410, label %411, label %421

411:                                              ; preds = %402
  %412 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %413 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* @SPR_TYPE_EX_AC_AR, align 4
  %416 = icmp ne i32 %414, %415
  br i1 %416, label %417, label %421

417:                                              ; preds = %411
  %418 = load i32, i32* %16, align 4
  %419 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %420 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %419, i32 0, i32 0
  store i32 %418, i32* %420, align 4
  br label %425

421:                                              ; preds = %411, %402
  %422 = load i32, i32* @CTL_PR_ALL_REGISTRANTS, align 4
  %423 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %424 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %423, i32 0, i32 0
  store i32 %422, i32* %424, align 4
  br label %425

425:                                              ; preds = %421, %417
  %426 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %427 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %426, i32 0, i32 5
  %428 = load i32, i32* %427, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %427, align 4
  %430 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %431 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %430, i32 0, i32 4
  %432 = call i32 @mtx_unlock(i32* %431)
  %433 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %434 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_6__*
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %437, i32 0, i32 1
  store i32 %436, i32* %438, align 8
  %439 = load i8*, i8** @CTL_MSG_PERS_ACTION, align 8
  %440 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_6__*
  %441 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %440, i32 0, i32 0
  store i8* %439, i8** %441, align 8
  %442 = load i8*, i8** @CTL_PR_PREEMPT, align 8
  %443 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i32 0, i32 3
  store i8* %442, i8** %445, align 8
  %446 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %447 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %450 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 0
  store i32 %448, i32* %451, align 8
  %452 = load i32, i32* %15, align 4
  %453 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %454 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %454, i32 0, i32 1
  store i32 %452, i32* %455, align 4
  %456 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %457 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.scsi_per_res_out_parms*, %struct.scsi_per_res_out_parms** %19, align 8
  %461 = getelementptr inbounds %struct.scsi_per_res_out_parms, %struct.scsi_per_res_out_parms* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @memcpy(i32 %459, i32 %462, i32 4)
  %464 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %465 = load i32, i32* @M_WAITOK, align 4
  %466 = call i32 @ctl_ha_msg_send(i32 %464, %union.ctl_ha_msg* %20, i32 24, i32 %465)
  br label %553

467:                                              ; preds = %295
  store i32 0, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %468

468:                                              ; preds = %491, %467
  %469 = load i32, i32* %21, align 4
  %470 = load i32, i32* @CTL_MAX_INITIATORS, align 4
  %471 = icmp slt i32 %469, %470
  br i1 %471, label %472, label %494

472:                                              ; preds = %468
  %473 = load i64, i64* %14, align 8
  %474 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %475 = load i32, i32* %21, align 4
  %476 = call i64 @ctl_get_prkey(%struct.ctl_lun* %474, i32 %475)
  %477 = icmp ne i64 %473, %476
  br i1 %477, label %478, label %479

478:                                              ; preds = %472
  br label %491

479:                                              ; preds = %472
  store i32 1, i32* %23, align 4
  %480 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %481 = load i32, i32* %21, align 4
  %482 = call i32 @ctl_clr_prkey(%struct.ctl_lun* %480, i32 %481)
  %483 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %484 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = add nsw i32 %485, -1
  store i32 %486, i32* %484, align 4
  %487 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %488 = load i32, i32* %21, align 4
  %489 = load i32, i32* @CTL_UA_REG_PREEMPT, align 4
  %490 = call i32 @ctl_est_ua(%struct.ctl_lun* %487, i32 %488, i32 %489)
  br label %491

491:                                              ; preds = %479, %478
  %492 = load i32, i32* %21, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %21, align 4
  br label %468

494:                                              ; preds = %468
  %495 = load i32, i32* %23, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %511, label %497

497:                                              ; preds = %494
  %498 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %499 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %498, i32 0, i32 4
  %500 = call i32 @mtx_unlock(i32* %499)
  %501 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %502 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* @M_CTL, align 4
  %505 = call i32 @free(i32 %503, i32 %504)
  %506 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %507 = call i32 @ctl_set_reservation_conflict(%struct.ctl_scsiio* %506)
  %508 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %509 = bitcast %struct.ctl_scsiio* %508 to %union.ctl_io*
  %510 = call i32 @ctl_done(%union.ctl_io* %509)
  store i32 1, i32* %10, align 4
  br label %556

511:                                              ; preds = %494
  %512 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %513 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %512, i32 0, i32 5
  %514 = load i32, i32* %513, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %513, align 4
  %516 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %517 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %516, i32 0, i32 4
  %518 = call i32 @mtx_unlock(i32* %517)
  %519 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %17, align 8
  %520 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_6__*
  %524 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %523, i32 0, i32 1
  store i32 %522, i32* %524, align 8
  %525 = load i8*, i8** @CTL_MSG_PERS_ACTION, align 8
  %526 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_6__*
  %527 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %526, i32 0, i32 0
  store i8* %525, i8** %527, align 8
  %528 = load i8*, i8** @CTL_PR_PREEMPT, align 8
  %529 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %530 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %529, i32 0, i32 0
  %531 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %530, i32 0, i32 3
  store i8* %528, i8** %531, align 8
  %532 = load %struct.ctl_lun*, %struct.ctl_lun** %12, align 8
  %533 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %536 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %535, i32 0, i32 0
  %537 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %536, i32 0, i32 0
  store i32 %534, i32* %537, align 8
  %538 = load i32, i32* %15, align 4
  %539 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %540 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %540, i32 0, i32 1
  store i32 %538, i32* %541, align 4
  %542 = bitcast %union.ctl_ha_msg* %20 to %struct.TYPE_7__*
  %543 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %543, i32 0, i32 2
  %545 = load i32, i32* %544, align 8
  %546 = load %struct.scsi_per_res_out_parms*, %struct.scsi_per_res_out_parms** %19, align 8
  %547 = getelementptr inbounds %struct.scsi_per_res_out_parms, %struct.scsi_per_res_out_parms* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 4
  %549 = call i32 @memcpy(i32 %545, i32 %548, i32 4)
  %550 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %551 = load i32, i32* @M_WAITOK, align 4
  %552 = call i32 @ctl_ha_msg_send(i32 %550, %union.ctl_ha_msg* %20, i32 24, i32 %551)
  br label %553

553:                                              ; preds = %511, %425
  br label %554

554:                                              ; preds = %553, %253
  br label %555

555:                                              ; preds = %554, %176
  store i32 0, i32* %10, align 4
  br label %556

556:                                              ; preds = %555, %497, %332, %311, %238, %194, %162, %64, %43
  %557 = load i32, i32* %10, align 4
  ret i32 %557
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i64 @ctl_get_prkey(%struct.ctl_lun*, i32) #1

declare dso_local i32 @ctl_clr_prkey(%struct.ctl_lun*, i32) #1

declare dso_local i32 @ctl_est_ua(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ctl_ha_msg_send(i32, %union.ctl_ha_msg*, i32, i32) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @ctl_set_reservation_conflict(%struct.ctl_scsiio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
