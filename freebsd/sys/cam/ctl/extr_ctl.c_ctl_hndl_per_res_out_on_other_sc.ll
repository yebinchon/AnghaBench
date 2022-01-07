; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_hndl_per_res_out_on_other_sc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_hndl_per_res_out_on_other_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ctl_softc = type { i32, i32, i32, %struct.ctl_lun** }
%struct.ctl_lun = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%union.ctl_ha_msg = type { %struct.TYPE_8__, [8 x i8] }
%struct.TYPE_8__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@ctl_max_luns = common dso_local global i64 0, align 8
@CTL_LUN_DISABLED = common dso_local global i32 0, align 4
@CTL_LUN_PR_RESERVED = common dso_local global i32 0, align 4
@CTL_PR_NO_RESERVATION = common dso_local global i8* null, align 8
@SPR_TYPE_WR_EX_RO = common dso_local global i32 0, align 4
@SPR_TYPE_EX_AC_RO = common dso_local global i32 0, align 4
@CTL_UA_RES_RELEASE = common dso_local global i32 0, align 4
@CTL_PR_ALL_REGISTRANTS = common dso_local global i32 0, align 4
@SPR_TYPE_EX_AC = common dso_local global i32 0, align 4
@SPR_TYPE_WR_EX = common dso_local global i32 0, align 4
@SCP_NUAR = common dso_local global i32 0, align 4
@CTL_MAX_INITIATORS = common dso_local global i32 0, align 4
@CTL_UA_REG_PREEMPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @ctl_hndl_per_res_out_on_other_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_hndl_per_res_out_on_other_sc(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_softc*, align 8
  %4 = alloca %union.ctl_ha_msg*, align 8
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %9 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %10 = call %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io* %9)
  store %struct.ctl_softc* %10, %struct.ctl_softc** %3, align 8
  %11 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %12 = bitcast %union.ctl_io* %11 to %struct.TYPE_7__*
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %union.ctl_ha_msg*
  store %union.ctl_ha_msg* %14, %union.ctl_ha_msg** %4, align 8
  %15 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %16 = bitcast %union.ctl_ha_msg* %15 to %struct.TYPE_8__*
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %20, i32 0, i32 2
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @ctl_max_luns, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %1
  %27 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %27, i32 0, i32 3
  %29 = load %struct.ctl_lun**, %struct.ctl_lun*** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.ctl_lun*, %struct.ctl_lun** %29, i64 %30
  %32 = load %struct.ctl_lun*, %struct.ctl_lun** %31, align 8
  store %struct.ctl_lun* %32, %struct.ctl_lun** %5, align 8
  %33 = icmp eq %struct.ctl_lun* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %26, %1
  %35 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %35, i32 0, i32 2
  %37 = call i32 @mtx_unlock(i32* %36)
  br label %343

38:                                               ; preds = %26
  %39 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %40 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %39, i32 0, i32 2
  %41 = call i32 @mtx_lock(i32* %40)
  %42 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %42, i32 0, i32 2
  %44 = call i32 @mtx_unlock(i32* %43)
  %45 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %46 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CTL_LUN_DISABLED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %53 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %52, i32 0, i32 2
  %54 = call i32 @mtx_unlock(i32* %53)
  br label %343

55:                                               ; preds = %38
  %56 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %57 = bitcast %union.ctl_ha_msg* %56 to %struct.TYPE_8__*
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = call i64 @ctl_get_initindex(%struct.TYPE_12__* %58)
  store i64 %59, i64* %7, align 8
  %60 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %61 = bitcast %union.ctl_ha_msg* %60 to %struct.TYPE_10__*
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %339 [
    i32 131, label %65
    i32 128, label %104
    i32 129, label %211
    i32 130, label %231
    i32 132, label %294
    i32 133, label %298
  ]

65:                                               ; preds = %55
  %66 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %67 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %68 = bitcast %union.ctl_ha_msg* %67 to %struct.TYPE_10__*
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ctl_alloc_prkey(%struct.ctl_lun* %66, i32 %71)
  %73 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %74 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %75 = bitcast %union.ctl_ha_msg* %74 to %struct.TYPE_10__*
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ctl_get_prkey(%struct.ctl_lun* %73, i32 %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %65
  %82 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %83 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %81, %65
  %87 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %88 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %89 = bitcast %union.ctl_ha_msg* %88 to %struct.TYPE_10__*
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %94 = bitcast %union.ctl_ha_msg* %93 to %struct.TYPE_10__*
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @scsi_8btou64(i32 %97)
  %99 = call i32 @ctl_set_prkey(%struct.ctl_lun* %87, i32 %92, i32 %98)
  %100 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %101 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %339

104:                                              ; preds = %55
  %105 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %106 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %107 = bitcast %union.ctl_ha_msg* %106 to %struct.TYPE_10__*
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ctl_clr_prkey(%struct.ctl_lun* %105, i32 %110)
  %112 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %113 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %113, align 4
  %116 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %117 = bitcast %union.ctl_ha_msg* %116 to %struct.TYPE_10__*
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %122 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %180

125:                                              ; preds = %104
  %126 = load i32, i32* @CTL_LUN_PR_RESERVED, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %129 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load i8*, i8** @CTL_PR_NO_RESERVATION, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %135 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %137 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SPR_TYPE_WR_EX_RO, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %125
  %142 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %143 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @SPR_TYPE_EX_AC_RO, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %177

147:                                              ; preds = %141, %125
  %148 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %149 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %177

152:                                              ; preds = %147
  %153 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %154 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %173, %152
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %159 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %156
  %163 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @ctl_get_prkey(%struct.ctl_lun* %163, i32 %164)
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %173

168:                                              ; preds = %162
  %169 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @CTL_UA_RES_RELEASE, align 4
  %172 = call i32 @ctl_est_ua(%struct.ctl_lun* %169, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %168, %167
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  br label %156

176:                                              ; preds = %156
  br label %177

177:                                              ; preds = %176, %147, %141
  %178 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %179 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %178, i32 0, i32 5
  store i32 0, i32* %179, align 4
  br label %206

180:                                              ; preds = %104
  %181 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %182 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @CTL_PR_ALL_REGISTRANTS, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %205

186:                                              ; preds = %180
  %187 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %188 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %186
  %192 = load i32, i32* @CTL_LUN_PR_RESERVED, align 4
  %193 = xor i32 %192, -1
  %194 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %195 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %199 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %198, i32 0, i32 5
  store i32 0, i32* %199, align 4
  %200 = load i8*, i8** @CTL_PR_NO_RESERVATION, align 8
  %201 = ptrtoint i8* %200 to i32
  %202 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %203 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %191, %186
  br label %205

205:                                              ; preds = %204, %180
  br label %206

206:                                              ; preds = %205, %177
  %207 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %208 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 4
  br label %339

211:                                              ; preds = %55
  %212 = load i32, i32* @CTL_LUN_PR_RESERVED, align 4
  %213 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %214 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 4
  %217 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %218 = bitcast %union.ctl_ha_msg* %217 to %struct.TYPE_10__*
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %223 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 4
  %224 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %225 = bitcast %union.ctl_ha_msg* %224 to %struct.TYPE_10__*
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %230 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  br label %339

231:                                              ; preds = %55
  %232 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %233 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @SPR_TYPE_EX_AC, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %281

237:                                              ; preds = %231
  %238 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %239 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @SPR_TYPE_WR_EX, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %281

243:                                              ; preds = %237
  %244 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %245 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %244, i32 0, i32 6
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @SCP_NUAR, align 4
  %249 = and i32 %247, %248
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %281

251:                                              ; preds = %243
  %252 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %253 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  store i32 %254, i32* %6, align 4
  br label %255

255:                                              ; preds = %277, %251
  %256 = load i32, i32* %6, align 4
  %257 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %258 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %280

261:                                              ; preds = %255
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = load i64, i64* %7, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %271, label %266

266:                                              ; preds = %261
  %267 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %268 = load i32, i32* %6, align 4
  %269 = call i32 @ctl_get_prkey(%struct.ctl_lun* %267, i32 %268)
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %266, %261
  br label %277

272:                                              ; preds = %266
  %273 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %274 = load i32, i32* %6, align 4
  %275 = load i32, i32* @CTL_UA_RES_RELEASE, align 4
  %276 = call i32 @ctl_est_ua(%struct.ctl_lun* %273, i32 %274, i32 %275)
  br label %277

277:                                              ; preds = %272, %271
  %278 = load i32, i32* %6, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %6, align 4
  br label %255

280:                                              ; preds = %255
  br label %281

281:                                              ; preds = %280, %243, %237, %231
  %282 = load i32, i32* @CTL_LUN_PR_RESERVED, align 4
  %283 = xor i32 %282, -1
  %284 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %285 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, %283
  store i32 %287, i32* %285, align 4
  %288 = load i8*, i8** @CTL_PR_NO_RESERVATION, align 8
  %289 = ptrtoint i8* %288 to i32
  %290 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %291 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 4
  %292 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %293 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %292, i32 0, i32 5
  store i32 0, i32* %293, align 4
  br label %339

294:                                              ; preds = %55
  %295 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %296 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %4, align 8
  %297 = call i32 @ctl_pro_preempt_other(%struct.ctl_lun* %295, %union.ctl_ha_msg* %296)
  br label %339

298:                                              ; preds = %55
  %299 = load i32, i32* @CTL_LUN_PR_RESERVED, align 4
  %300 = xor i32 %299, -1
  %301 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %302 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, %300
  store i32 %304, i32* %302, align 4
  %305 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %306 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %305, i32 0, i32 5
  store i32 0, i32* %306, align 4
  %307 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %308 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %307, i32 0, i32 4
  store i32 0, i32* %308, align 4
  %309 = load i8*, i8** @CTL_PR_NO_RESERVATION, align 8
  %310 = ptrtoint i8* %309 to i32
  %311 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %312 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %311, i32 0, i32 1
  store i32 %310, i32* %312, align 4
  store i32 0, i32* %6, align 4
  br label %313

313:                                              ; preds = %331, %298
  %314 = load i32, i32* %6, align 4
  %315 = load i32, i32* @CTL_MAX_INITIATORS, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %334

317:                                              ; preds = %313
  %318 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %319 = load i32, i32* %6, align 4
  %320 = call i32 @ctl_get_prkey(%struct.ctl_lun* %318, i32 %319)
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %317
  br label %331

323:                                              ; preds = %317
  %324 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %325 = load i32, i32* %6, align 4
  %326 = call i32 @ctl_clr_prkey(%struct.ctl_lun* %324, i32 %325)
  %327 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %328 = load i32, i32* %6, align 4
  %329 = load i32, i32* @CTL_UA_REG_PREEMPT, align 4
  %330 = call i32 @ctl_est_ua(%struct.ctl_lun* %327, i32 %328, i32 %329)
  br label %331

331:                                              ; preds = %323, %322
  %332 = load i32, i32* %6, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %6, align 4
  br label %313

334:                                              ; preds = %313
  %335 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %336 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %336, align 4
  br label %339

339:                                              ; preds = %55, %334, %294, %281, %211, %206, %86
  %340 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %341 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %340, i32 0, i32 2
  %342 = call i32 @mtx_unlock(i32* %341)
  br label %343

343:                                              ; preds = %339, %51, %34
  ret void
}

declare dso_local %struct.ctl_softc* @CTL_SOFTC(%union.ctl_io*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @ctl_get_initindex(%struct.TYPE_12__*) #1

declare dso_local i32 @ctl_alloc_prkey(%struct.ctl_lun*, i32) #1

declare dso_local i32 @ctl_get_prkey(%struct.ctl_lun*, i32) #1

declare dso_local i32 @ctl_set_prkey(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @scsi_8btou64(i32) #1

declare dso_local i32 @ctl_clr_prkey(%struct.ctl_lun*, i32) #1

declare dso_local i32 @ctl_est_ua(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @ctl_pro_preempt_other(%struct.ctl_lun*, %union.ctl_ha_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
