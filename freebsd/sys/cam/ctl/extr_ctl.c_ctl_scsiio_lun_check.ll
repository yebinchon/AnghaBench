; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_scsiio_lun_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_scsiio_lun_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i32, i64, i32, i64, %struct.TYPE_5__, %struct.TYPE_4__*, i32, %struct.ctl_softc* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_softc = type { i64, i64 }
%struct.ctl_cmd_entry = type { i32, i32 }
%struct.ctl_scsiio = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CTL_LUN_PRIMARY_SC = common dso_local global i32 0, align 4
@CTL_HA_LINK_OFFLINE = common dso_local global i64 0, align 8
@CTL_CMD_FLAG_OK_ON_UNAVAIL = common dso_local global i32 0, align 4
@CTL_LUN_PEER_SC_PRIMARY = common dso_local global i32 0, align 4
@CTL_HA_MODE_ACT_STBY = common dso_local global i64 0, align 8
@CTL_CMD_FLAG_OK_ON_STANDBY = common dso_local global i32 0, align 4
@CTL_HA_MODE_XFER = common dso_local global i64 0, align 8
@CTL_LUN_PAT_WRITE = common dso_local global i32 0, align 4
@CTL_LUN_FLAG_READONLY = common dso_local global i32 0, align 4
@SCP_SWP = common dso_local global i32 0, align 4
@SSD_KEY_DATA_PROTECT = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4
@CTL_LUN_RESERVED = common dso_local global i32 0, align 4
@CTL_CMD_FLAG_ALLOW_ON_RESV = common dso_local global i32 0, align 4
@CTL_LUN_PR_RESERVED = common dso_local global i32 0, align 4
@CTL_CMD_FLAG_ALLOW_ON_PR_RESV = common dso_local global i32 0, align 4
@CTL_CMD_FLAG_ALLOW_ON_PR_WRESV = common dso_local global i32 0, align 4
@SPR_TYPE_WR_EX = common dso_local global i32 0, align 4
@SPR_TYPE_WR_EX_RO = common dso_local global i32 0, align 4
@SPR_TYPE_WR_EX_AR = common dso_local global i32 0, align 4
@CTL_CMD_FLAG_OK_ON_NO_MEDIA = common dso_local global i32 0, align 4
@CTL_LUN_EJECTED = common dso_local global i32 0, align 4
@CTL_LUN_NO_MEDIA = common dso_local global i32 0, align 4
@CTL_LUN_REMOVABLE = common dso_local global i32 0, align 4
@CTL_LUN_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_lun*, %struct.ctl_cmd_entry*, %struct.ctl_scsiio*)* @ctl_scsiio_lun_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_scsiio_lun_check(%struct.ctl_lun* %0, %struct.ctl_cmd_entry* %1, %struct.ctl_scsiio* %2) #0 {
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.ctl_cmd_entry*, align 8
  %6 = alloca %struct.ctl_scsiio*, align 8
  %7 = alloca %struct.ctl_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ctl_lun* %0, %struct.ctl_lun** %4, align 8
  store %struct.ctl_cmd_entry* %1, %struct.ctl_cmd_entry** %5, align 8
  store %struct.ctl_scsiio* %2, %struct.ctl_scsiio** %6, align 8
  %10 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %11 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %10, i32 0, i32 7
  %12 = load %struct.ctl_softc*, %struct.ctl_softc** %11, align 8
  store %struct.ctl_softc* %12, %struct.ctl_softc** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %14 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %13, i32 0, i32 6
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @mtx_assert(i32* %14, i32 %15)
  %17 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %18 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CTL_LUN_PRIMARY_SC, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %80

23:                                               ; preds = %3
  %24 = load %struct.ctl_softc*, %struct.ctl_softc** %7, align 8
  %25 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CTL_HA_LINK_OFFLINE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  %31 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CTL_CMD_FLAG_OK_ON_UNAVAIL, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %38 = call i32 @ctl_set_lun_unavail(%struct.ctl_scsiio* %37)
  store i32 1, i32* %8, align 4
  br label %261

39:                                               ; preds = %29, %23
  %40 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %41 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CTL_LUN_PEER_SC_PRIMARY, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  %48 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CTL_CMD_FLAG_OK_ON_UNAVAIL, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %55 = call i32 @ctl_set_lun_transit(%struct.ctl_scsiio* %54)
  store i32 1, i32* %8, align 4
  br label %261

56:                                               ; preds = %46, %39
  %57 = load %struct.ctl_softc*, %struct.ctl_softc** %7, align 8
  %58 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CTL_HA_MODE_ACT_STBY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  %64 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CTL_CMD_FLAG_OK_ON_STANDBY, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %71 = call i32 @ctl_set_lun_standby(%struct.ctl_scsiio* %70)
  store i32 1, i32* %8, align 4
  br label %261

72:                                               ; preds = %62, %56
  %73 = load %struct.ctl_softc*, %struct.ctl_softc** %7, align 8
  %74 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CTL_HA_MODE_XFER, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %261

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %3
  %81 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  %82 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CTL_LUN_PAT_WRITE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %80
  %88 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %89 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %88, i32 0, i32 5
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = icmp ne %struct.TYPE_4__* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %94 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %93, i32 0, i32 5
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CTL_LUN_FLAG_READONLY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %103 = call i32 @ctl_set_hw_write_protected(%struct.ctl_scsiio* %102)
  store i32 1, i32* %8, align 4
  br label %261

104:                                              ; preds = %92, %87
  %105 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %106 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SCP_SWP, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %114 = load i32, i32* @SSD_KEY_DATA_PROTECT, align 4
  %115 = load i32, i32* @SSD_ELEM_NONE, align 4
  %116 = call i32 @ctl_set_sense(%struct.ctl_scsiio* %113, i32 1, i32 %114, i32 39, i32 2, i32 %115)
  store i32 1, i32* %8, align 4
  br label %261

117:                                              ; preds = %104
  br label %118

118:                                              ; preds = %117, %80
  %119 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %120 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = call i64 @ctl_get_initindex(i32* %121)
  store i64 %122, i64* %9, align 8
  %123 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %124 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @CTL_LUN_RESERVED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %118
  %130 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  %131 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CTL_CMD_FLAG_ALLOW_ON_RESV, align 4
  %134 = and i32 %132, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %129
  %137 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %138 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %9, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %144 = call i32 @ctl_set_reservation_conflict(%struct.ctl_scsiio* %143)
  store i32 1, i32* %8, align 4
  br label %261

145:                                              ; preds = %136
  br label %146

146:                                              ; preds = %145, %129, %118
  %147 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %148 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @CTL_LUN_PR_RESERVED, align 4
  %151 = and i32 %149, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %146
  %154 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  %155 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @CTL_CMD_FLAG_ALLOW_ON_PR_RESV, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153, %146
  br label %208

161:                                              ; preds = %153
  %162 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  %163 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @CTL_CMD_FLAG_ALLOW_ON_PR_WRESV, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %161
  %169 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %170 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @SPR_TYPE_WR_EX, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %186, label %174

174:                                              ; preds = %168
  %175 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %176 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @SPR_TYPE_WR_EX_RO, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %186, label %180

180:                                              ; preds = %174
  %181 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %182 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @SPR_TYPE_WR_EX_AR, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %180, %174, %168
  br label %207

187:                                              ; preds = %180, %161
  %188 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %189 = load i64, i64* %9, align 8
  %190 = call i64 @ctl_get_prkey(%struct.ctl_lun* %188, i64 %189)
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %203, label %192

192:                                              ; preds = %187
  %193 = load i64, i64* %9, align 8
  %194 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %195 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %193, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %192
  %199 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %200 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %201, 4
  br i1 %202, label %203, label %206

203:                                              ; preds = %198, %187
  %204 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %205 = call i32 @ctl_set_reservation_conflict(%struct.ctl_scsiio* %204)
  store i32 1, i32* %8, align 4
  br label %261

206:                                              ; preds = %198, %192
  br label %207

207:                                              ; preds = %206, %186
  br label %208

208:                                              ; preds = %207, %160
  %209 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %5, align 8
  %210 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @CTL_CMD_FLAG_OK_ON_NO_MEDIA, align 4
  %213 = and i32 %211, %212
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %260

215:                                              ; preds = %208
  %216 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %217 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @CTL_LUN_EJECTED, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %215
  %223 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %224 = call i32 @ctl_set_lun_ejected(%struct.ctl_scsiio* %223)
  br label %259

225:                                              ; preds = %215
  %226 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %227 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @CTL_LUN_NO_MEDIA, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %246

232:                                              ; preds = %225
  %233 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %234 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @CTL_LUN_REMOVABLE, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %232
  %240 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %241 = call i32 @ctl_set_lun_no_media(%struct.ctl_scsiio* %240)
  br label %245

242:                                              ; preds = %232
  %243 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %244 = call i32 @ctl_set_lun_int_reqd(%struct.ctl_scsiio* %243)
  br label %245

245:                                              ; preds = %242, %239
  br label %258

246:                                              ; preds = %225
  %247 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %248 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @CTL_LUN_STOPPED, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %246
  %254 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %255 = call i32 @ctl_set_lun_stopped(%struct.ctl_scsiio* %254)
  br label %257

256:                                              ; preds = %246
  br label %261

257:                                              ; preds = %253
  br label %258

258:                                              ; preds = %257, %245
  br label %259

259:                                              ; preds = %258, %222
  store i32 1, i32* %8, align 4
  br label %261

260:                                              ; preds = %208
  br label %261

261:                                              ; preds = %260, %259, %256, %203, %142, %112, %101, %78, %69, %53, %36
  %262 = load i32, i32* %8, align 4
  ret i32 %262
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @ctl_set_lun_unavail(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_set_lun_transit(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_set_lun_standby(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_set_hw_write_protected(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_set_sense(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ctl_get_initindex(i32*) #1

declare dso_local i32 @ctl_set_reservation_conflict(%struct.ctl_scsiio*) #1

declare dso_local i64 @ctl_get_prkey(%struct.ctl_lun*, i64) #1

declare dso_local i32 @ctl_set_lun_ejected(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_set_lun_no_media(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_set_lun_int_reqd(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_set_lun_stopped(%struct.ctl_scsiio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
