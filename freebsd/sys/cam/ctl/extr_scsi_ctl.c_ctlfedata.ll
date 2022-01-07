; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_scsi_ctl.c_ctlfedata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_scsi_ctl.c_ctlfedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlfe_lun_softc = type { %struct.ctlfe_softc* }
%struct.ctlfe_softc = type { i64 }
%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32* }
%struct.ctlfe_cmd_info = type { i32, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.ctl_sg_entry = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_MASK = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_IN = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@CAM_DATA_MASK = common dso_local global i32 0, align 4
@CTLFE_CMD_PIECEWISE = common dso_local global i32 0, align 4
@CTL_FLAG_BUS_ADDR = common dso_local global i32 0, align 4
@CAM_DATA_PADDR = common dso_local global i32 0, align 4
@CAM_DATA_VADDR = common dso_local global i32 0, align 4
@CTLFE_MAX_SEGS = common dso_local global i32 0, align 4
@CAM_DATA_SG_PADDR = common dso_local global i32 0, align 4
@CAM_DATA_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlfe_lun_softc*, %union.ctl_io*, i32*, i32**, i64*, i32*)* @ctlfedata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctlfedata(%struct.ctlfe_lun_softc* %0, %union.ctl_io* %1, i32* %2, i32** %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.ctlfe_lun_softc*, align 8
  %8 = alloca %union.ctl_io*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ctlfe_softc*, align 8
  %14 = alloca %struct.ctlfe_cmd_info*, align 8
  %15 = alloca %struct.ctl_sg_entry*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ctlfe_lun_softc* %0, %struct.ctlfe_lun_softc** %7, align 8
  store %union.ctl_io* %1, %union.ctl_io** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %21 = call %struct.ctlfe_cmd_info* @PRIV_INFO(%union.ctl_io* %20)
  store %struct.ctlfe_cmd_info* %21, %struct.ctlfe_cmd_info** %14, align 8
  %22 = load %struct.ctlfe_lun_softc*, %struct.ctlfe_lun_softc** %7, align 8
  %23 = getelementptr inbounds %struct.ctlfe_lun_softc, %struct.ctlfe_lun_softc* %22, i32 0, i32 0
  %24 = load %struct.ctlfe_softc*, %struct.ctlfe_softc** %23, align 8
  store %struct.ctlfe_softc* %24, %struct.ctlfe_softc** %13, align 8
  %25 = load i32, i32* @CAM_DIR_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %31 = bitcast %union.ctl_io* %30 to %struct.TYPE_5__*
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CTL_FLAG_DATA_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @CTL_FLAG_DATA_IN, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %6
  %39 = load i32, i32* @CAM_DIR_IN, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %48

43:                                               ; preds = %6
  %44 = load i32, i32* @CAM_DIR_OUT, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* @CAM_DATA_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load %struct.ctlfe_cmd_info*, %struct.ctlfe_cmd_info** %14, align 8
  %55 = getelementptr inbounds %struct.ctlfe_cmd_info, %struct.ctlfe_cmd_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %19, align 4
  %57 = load %struct.ctlfe_cmd_info*, %struct.ctlfe_cmd_info** %14, align 8
  %58 = getelementptr inbounds %struct.ctlfe_cmd_info, %struct.ctlfe_cmd_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %17, align 8
  %60 = load i32, i32* @CTLFE_CMD_PIECEWISE, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.ctlfe_cmd_info*, %struct.ctlfe_cmd_info** %14, align 8
  %63 = getelementptr inbounds %struct.ctlfe_cmd_info, %struct.ctlfe_cmd_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %67 = bitcast %union.ctl_io* %66 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %143

71:                                               ; preds = %48
  %72 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %73 = bitcast %union.ctl_io* %72 to %struct.TYPE_4__*
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %17, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %17, align 8
  %78 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %79 = bitcast %union.ctl_io* %78 to %struct.TYPE_4__*
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %82 = bitcast %union.ctl_io* %81 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %17, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32**, i32*** %10, align 8
  store i32* %86, i32** %87, align 8
  %88 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %89 = bitcast %union.ctl_io* %88 to %struct.TYPE_4__*
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %17, align 8
  %93 = sub i64 %91, %92
  %94 = load %struct.ctlfe_softc*, %struct.ctlfe_softc** %13, align 8
  %95 = getelementptr inbounds %struct.ctlfe_softc, %struct.ctlfe_softc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ule i64 %93, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %71
  %99 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %100 = bitcast %union.ctl_io* %99 to %struct.TYPE_4__*
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %17, align 8
  %104 = sub i64 %102, %103
  %105 = load i64*, i64** %11, align 8
  store i64 %104, i64* %105, align 8
  br label %123

106:                                              ; preds = %71
  %107 = load %struct.ctlfe_softc*, %struct.ctlfe_softc** %13, align 8
  %108 = getelementptr inbounds %struct.ctlfe_softc, %struct.ctlfe_softc* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %11, align 8
  store i64 %109, i64* %110, align 8
  %111 = load %struct.ctlfe_softc*, %struct.ctlfe_softc** %13, align 8
  %112 = getelementptr inbounds %struct.ctlfe_softc, %struct.ctlfe_softc* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ctlfe_cmd_info*, %struct.ctlfe_cmd_info** %14, align 8
  %115 = getelementptr inbounds %struct.ctlfe_cmd_info, %struct.ctlfe_cmd_info* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load i32, i32* @CTLFE_CMD_PIECEWISE, align 4
  %119 = load %struct.ctlfe_cmd_info*, %struct.ctlfe_cmd_info** %14, align 8
  %120 = getelementptr inbounds %struct.ctlfe_cmd_info, %struct.ctlfe_cmd_info* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %106, %98
  %124 = load i32*, i32** %12, align 8
  store i32 0, i32* %124, align 4
  %125 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %126 = bitcast %union.ctl_io* %125 to %struct.TYPE_5__*
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @CTL_FLAG_BUS_ADDR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %123
  %133 = load i32, i32* @CAM_DATA_PADDR, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %133
  store i32 %136, i32* %134, align 4
  br label %142

137:                                              ; preds = %123
  %138 = load i32, i32* @CAM_DATA_VADDR, align 4
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %138
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %137, %132
  br label %371

143:                                              ; preds = %48
  %144 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %145 = bitcast %union.ctl_io* %144 to %struct.TYPE_4__*
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = bitcast i32* %147 to %struct.ctl_sg_entry*
  store %struct.ctl_sg_entry* %148, %struct.ctl_sg_entry** %15, align 8
  br label %149

149:                                              ; preds = %163, %143
  %150 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %151 = bitcast %union.ctl_io* %150 to %struct.TYPE_4__*
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %15, align 8
  %155 = load i32, i32* %19, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %154, i64 %156
  %158 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %17, align 8
  %161 = sub i64 %159, %160
  %162 = icmp uge i64 %153, %161
  br i1 %162, label %163, label %179

163:                                              ; preds = %149
  %164 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %15, align 8
  %165 = load i32, i32* %19, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %164, i64 %166
  %168 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %17, align 8
  %171 = sub i64 %169, %170
  %172 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %173 = bitcast %union.ctl_io* %172 to %struct.TYPE_4__*
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = sub i64 %175, %171
  store i64 %176, i64* %174, align 8
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %19, align 4
  store i64 0, i64* %17, align 8
  br label %149

179:                                              ; preds = %149
  %180 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %181 = bitcast %union.ctl_io* %180 to %struct.TYPE_4__*
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %17, align 8
  %185 = add i64 %184, %183
  store i64 %185, i64* %17, align 8
  %186 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %187 = bitcast %union.ctl_io* %186 to %struct.TYPE_4__*
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  %189 = load %struct.ctlfe_cmd_info*, %struct.ctlfe_cmd_info** %14, align 8
  %190 = getelementptr inbounds %struct.ctlfe_cmd_info, %struct.ctlfe_cmd_info* %189, i32 0, i32 3
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  store %struct.TYPE_6__* %191, %struct.TYPE_6__** %16, align 8
  %192 = load i64*, i64** %11, align 8
  store i64 0, i64* %192, align 8
  store i32 0, i32* %18, align 4
  br label %193

193:                                              ; preds = %344, %179
  %194 = load i32, i32* %18, align 4
  %195 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %196 = bitcast %union.ctl_io* %195 to %struct.TYPE_4__*
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %19, align 4
  %200 = sub nsw i32 %198, %199
  %201 = icmp slt i32 %194, %200
  br i1 %201, label %202, label %347

202:                                              ; preds = %193
  %203 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %15, align 8
  %204 = load i32, i32* %18, align 4
  %205 = load i32, i32* %19, align 4
  %206 = add nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %203, i64 %207
  %209 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %17, align 8
  %212 = add i64 %210, %211
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %214 = load i32, i32* %18, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  store i64 %212, i64* %217, align 8
  %218 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %15, align 8
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* %19, align 4
  %221 = add nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %218, i64 %222
  %224 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %17, align 8
  %227 = sub i64 %225, %226
  %228 = load %struct.ctlfe_softc*, %struct.ctlfe_softc** %13, align 8
  %229 = getelementptr inbounds %struct.ctlfe_softc, %struct.ctlfe_softc* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64*, i64** %11, align 8
  %232 = load i64, i64* %231, align 8
  %233 = sub i64 %230, %232
  %234 = icmp ule i64 %227, %233
  br i1 %234, label %235, label %260

235:                                              ; preds = %202
  %236 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %15, align 8
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* %18, align 4
  %239 = add nsw i32 %237, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %236, i64 %240
  %242 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %17, align 8
  %245 = sub i64 %243, %244
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %247 = load i32, i32* %18, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  store i64 %245, i64* %250, align 8
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %252 = load i32, i32* %18, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64*, i64** %11, align 8
  %258 = load i64, i64* %257, align 8
  %259 = add i64 %258, %256
  store i64 %259, i64* %257, align 8
  br label %312

260:                                              ; preds = %202
  %261 = load %struct.ctlfe_softc*, %struct.ctlfe_softc** %13, align 8
  %262 = getelementptr inbounds %struct.ctlfe_softc, %struct.ctlfe_softc* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64*, i64** %11, align 8
  %265 = load i64, i64* %264, align 8
  %266 = sub i64 %263, %265
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %268 = load i32, i32* %18, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  store i64 %266, i64* %271, align 8
  %272 = load i32, i32* %19, align 4
  %273 = load i32, i32* %18, align 4
  %274 = add nsw i32 %272, %273
  %275 = load %struct.ctlfe_cmd_info*, %struct.ctlfe_cmd_info** %14, align 8
  %276 = getelementptr inbounds %struct.ctlfe_cmd_info, %struct.ctlfe_cmd_info* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 8
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %278 = load i32, i32* %18, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* %17, align 8
  %284 = add i64 %282, %283
  %285 = load %struct.ctlfe_cmd_info*, %struct.ctlfe_cmd_info** %14, align 8
  %286 = getelementptr inbounds %struct.ctlfe_cmd_info, %struct.ctlfe_cmd_info* %285, i32 0, i32 1
  store i64 %284, i64* %286, align 8
  %287 = load i32, i32* @CTLFE_CMD_PIECEWISE, align 4
  %288 = load %struct.ctlfe_cmd_info*, %struct.ctlfe_cmd_info** %14, align 8
  %289 = getelementptr inbounds %struct.ctlfe_cmd_info, %struct.ctlfe_cmd_info* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 8
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %293 = load i32, i32* %18, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64*, i64** %11, align 8
  %299 = load i64, i64* %298, align 8
  %300 = add i64 %299, %297
  store i64 %300, i64* %298, align 8
  %301 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %15, align 8
  %302 = load i32, i32* %18, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %301, i64 %303
  %305 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %260
  %309 = load i32, i32* %18, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %18, align 4
  br label %311

311:                                              ; preds = %308, %260
  br label %347

312:                                              ; preds = %235
  %313 = load i32, i32* %18, align 4
  %314 = load i32, i32* @CTLFE_MAX_SEGS, align 4
  %315 = sub nsw i32 %314, 1
  %316 = icmp eq i32 %313, %315
  br i1 %316, label %317, label %343

317:                                              ; preds = %312
  %318 = load i32, i32* %19, align 4
  %319 = load i32, i32* %18, align 4
  %320 = add nsw i32 %318, %319
  %321 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %322 = bitcast %union.ctl_io* %321 to %struct.TYPE_4__*
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = sub nsw i32 %324, 1
  %326 = icmp slt i32 %320, %325
  br i1 %326, label %327, label %343

327:                                              ; preds = %317
  %328 = load i32, i32* %19, align 4
  %329 = load i32, i32* %18, align 4
  %330 = add nsw i32 %328, %329
  %331 = add nsw i32 %330, 1
  %332 = load %struct.ctlfe_cmd_info*, %struct.ctlfe_cmd_info** %14, align 8
  %333 = getelementptr inbounds %struct.ctlfe_cmd_info, %struct.ctlfe_cmd_info* %332, i32 0, i32 0
  store i32 %331, i32* %333, align 8
  %334 = load %struct.ctlfe_cmd_info*, %struct.ctlfe_cmd_info** %14, align 8
  %335 = getelementptr inbounds %struct.ctlfe_cmd_info, %struct.ctlfe_cmd_info* %334, i32 0, i32 1
  store i64 0, i64* %335, align 8
  %336 = load i32, i32* @CTLFE_CMD_PIECEWISE, align 4
  %337 = load %struct.ctlfe_cmd_info*, %struct.ctlfe_cmd_info** %14, align 8
  %338 = getelementptr inbounds %struct.ctlfe_cmd_info, %struct.ctlfe_cmd_info* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = or i32 %339, %336
  store i32 %340, i32* %338, align 8
  %341 = load i32, i32* %18, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %18, align 4
  br label %347

343:                                              ; preds = %317, %312
  store i64 0, i64* %17, align 8
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %18, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %18, align 4
  br label %193

347:                                              ; preds = %327, %311, %193
  %348 = load i32, i32* %18, align 4
  %349 = load i32*, i32** %12, align 8
  store i32 %348, i32* %349, align 4
  %350 = load %union.ctl_io*, %union.ctl_io** %8, align 8
  %351 = bitcast %union.ctl_io* %350 to %struct.TYPE_5__*
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @CTL_FLAG_BUS_ADDR, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %347
  %358 = load i32, i32* @CAM_DATA_SG_PADDR, align 4
  %359 = load i32*, i32** %9, align 8
  %360 = load i32, i32* %359, align 4
  %361 = or i32 %360, %358
  store i32 %361, i32* %359, align 4
  br label %367

362:                                              ; preds = %347
  %363 = load i32, i32* @CAM_DATA_SG, align 4
  %364 = load i32*, i32** %9, align 8
  %365 = load i32, i32* %364, align 4
  %366 = or i32 %365, %363
  store i32 %366, i32* %364, align 4
  br label %367

367:                                              ; preds = %362, %357
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %369 = bitcast %struct.TYPE_6__* %368 to i32*
  %370 = load i32**, i32*** %10, align 8
  store i32* %369, i32** %370, align 8
  br label %371

371:                                              ; preds = %367, %142
  ret void
}

declare dso_local %struct.ctlfe_cmd_info* @PRIV_INFO(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
