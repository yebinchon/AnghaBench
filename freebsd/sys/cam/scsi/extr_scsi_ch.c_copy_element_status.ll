; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_copy_element_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_copy_element_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_softc = type { i64*, i64* }
%struct.read_element_status_descriptor = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.read_element_status_device_id, %struct.TYPE_6__, %struct.volume_tag, %struct.volume_tag* }
%struct.TYPE_7__ = type { %struct.read_element_status_device_id }
%struct.read_element_status_device_id = type { i64, i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.read_element_status_device_id }
%struct.volume_tag = type { i32 }
%struct.changer_element_status = type { i64, i64, i64, i32, i64, i64, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CHET_MT = common dso_local global i64 0, align 8
@CHET_DT = common dso_local global i64 0, align 8
@READ_ELEMENT_STATUS_INVERT = common dso_local global i32 0, align 4
@CES_INVERT = common dso_local global i32 0, align 4
@READ_ELEMENT_STATUS_SVALID = common dso_local global i32 0, align 4
@CES_SOURCE_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"ch: warning: could not map element source address %ud to a valid element type\0A\00", align 1
@READ_ELEMENT_STATUS_PVOLTAG = common dso_local global i64 0, align 8
@READ_ELEMENT_STATUS_AVOLTAG = common dso_local global i64 0, align 8
@SCSI_REV_SPC = common dso_local global i32 0, align 4
@READ_ELEMENT_STATUS_PIV_SET = common dso_local global i32 0, align 4
@CES_PIV = common dso_local global i32 0, align 4
@SCSI_REV_2 = common dso_local global i32 0, align 4
@CES_PROTOCOL_ID_FCP_4 = common dso_local global i32 0, align 4
@READ_ELEMENT_STATUS_DT_IDVALID = common dso_local global i32 0, align 4
@CES_SCSIID_VALID = common dso_local global i32 0, align 4
@READ_ELEMENT_STATUS_DT_LUVALID = common dso_local global i32 0, align 4
@CES_LUN_VALID = common dso_local global i32 0, align 4
@READ_ELEMENT_STATUS_DT_LUNMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ch_softc*, i64, %struct.read_element_status_descriptor*, %struct.changer_element_status*, i32)* @copy_element_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_element_status(%struct.ch_softc* %0, i64 %1, %struct.read_element_status_descriptor* %2, %struct.changer_element_status* %3, i32 %4) #0 {
  %6 = alloca %struct.ch_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.read_element_status_descriptor*, align 8
  %9 = alloca %struct.changer_element_status*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.volume_tag*, align 8
  %14 = alloca %struct.volume_tag*, align 8
  %15 = alloca %struct.read_element_status_device_id*, align 8
  store %struct.ch_softc* %0, %struct.ch_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.read_element_status_descriptor* %2, %struct.read_element_status_descriptor** %8, align 8
  store %struct.changer_element_status* %3, %struct.changer_element_status** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %17 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @scsi_2btoul(i32 %18)
  store i64 %19, i64* %11, align 8
  store %struct.volume_tag* null, %struct.volume_tag** %13, align 8
  store %struct.volume_tag* null, %struct.volume_tag** %14, align 8
  store %struct.read_element_status_device_id* null, %struct.read_element_status_device_id** %15, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %22 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* @CHET_MT, align 8
  store i64 %23, i64* %12, align 8
  br label %24

24:                                               ; preds = %68, %5
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @CHET_DT, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %30 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %28
  %38 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %39 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %45 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %43, %49
  %51 = load i64, i64* %11, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %37
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %56 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = sub i64 %54, %60
  %62 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %63 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %66 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %71

67:                                               ; preds = %37, %28
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %12, align 8
  br label %24

71:                                               ; preds = %53, %24
  %72 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %73 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %76 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %78 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %81 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %80, i32 0, i32 16
  store i32 %79, i32* %81, align 8
  %82 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %83 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %86 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %85, i32 0, i32 15
  store i32 %84, i32* %86, align 4
  %87 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %88 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @READ_ELEMENT_STATUS_INVERT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %71
  %94 = load i32, i32* @CES_INVERT, align 4
  %95 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %96 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %71
  %100 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %101 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @READ_ELEMENT_STATUS_SVALID, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %175

106:                                              ; preds = %99
  %107 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %108 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @scsi_2btoul(i32 %109)
  store i64 %110, i64* %11, align 8
  %111 = load i64, i64* @CHET_MT, align 8
  store i64 %111, i64* %12, align 8
  br label %112

112:                                              ; preds = %161, %106
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* @CHET_DT, align 8
  %115 = icmp ule i64 %113, %114
  br i1 %115, label %116, label %164

116:                                              ; preds = %112
  %117 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %118 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* %12, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %11, align 8
  %124 = icmp ule i64 %122, %123
  br i1 %124, label %125, label %160

125:                                              ; preds = %116
  %126 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %127 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* %12, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %133 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %132, i32 0, i32 1
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* %12, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %131, %137
  %139 = load i64, i64* %11, align 8
  %140 = icmp ugt i64 %138, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %125
  %142 = load i64, i64* %11, align 8
  %143 = load %struct.ch_softc*, %struct.ch_softc** %6, align 8
  %144 = getelementptr inbounds %struct.ch_softc, %struct.ch_softc* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* %12, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = sub i64 %142, %148
  %150 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %151 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %150, i32 0, i32 4
  store i64 %149, i64* %151, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %154 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %153, i32 0, i32 5
  store i64 %152, i64* %154, align 8
  %155 = load i32, i32* @CES_SOURCE_VALID, align 4
  %156 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %157 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %164

160:                                              ; preds = %125, %116
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %12, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %12, align 8
  br label %112

164:                                              ; preds = %141, %112
  %165 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %166 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @CES_SOURCE_VALID, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %164
  %172 = load i64, i64* %11, align 8
  %173 = call i32 @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %172)
  br label %174

174:                                              ; preds = %171, %164
  br label %175

175:                                              ; preds = %174, %99
  %176 = load i64, i64* %7, align 8
  %177 = load i64, i64* @READ_ELEMENT_STATUS_PVOLTAG, align 8
  %178 = and i64 %176, %177
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %182 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 3
  store %struct.volume_tag* %183, %struct.volume_tag** %13, align 8
  br label %184

184:                                              ; preds = %180, %175
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* @READ_ELEMENT_STATUS_AVOLTAG, align 8
  %187 = and i64 %185, %186
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %184
  %190 = load i64, i64* %7, align 8
  %191 = load i64, i64* @READ_ELEMENT_STATUS_PVOLTAG, align 8
  %192 = and i64 %190, %191
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %189
  %195 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %196 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 4
  %198 = load %struct.volume_tag*, %struct.volume_tag** %197, align 8
  %199 = getelementptr inbounds %struct.volume_tag, %struct.volume_tag* %198, i64 1
  br label %204

200:                                              ; preds = %189
  %201 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %202 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 3
  br label %204

204:                                              ; preds = %200, %194
  %205 = phi %struct.volume_tag* [ %199, %194 ], [ %203, %200 ]
  store %struct.volume_tag* %205, %struct.volume_tag** %14, align 8
  br label %206

206:                                              ; preds = %204, %184
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* @SCSI_REV_SPC, align 4
  %209 = icmp sge i32 %207, %208
  br i1 %209, label %210, label %245

210:                                              ; preds = %206
  %211 = load i64, i64* %7, align 8
  %212 = load i64, i64* @READ_ELEMENT_STATUS_PVOLTAG, align 8
  %213 = and i64 %211, %212
  %214 = load i64, i64* %7, align 8
  %215 = load i64, i64* @READ_ELEMENT_STATUS_AVOLTAG, align 8
  %216 = and i64 %214, %215
  %217 = xor i64 %213, %216
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %210
  %220 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %221 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  store %struct.read_element_status_device_id* %223, %struct.read_element_status_device_id** %15, align 8
  br label %244

224:                                              ; preds = %210
  %225 = load i64, i64* %7, align 8
  %226 = load i64, i64* @READ_ELEMENT_STATUS_PVOLTAG, align 8
  %227 = and i64 %225, %226
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %238, label %229

229:                                              ; preds = %224
  %230 = load i64, i64* %7, align 8
  %231 = load i64, i64* @READ_ELEMENT_STATUS_AVOLTAG, align 8
  %232 = and i64 %230, %231
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %229
  %235 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %236 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 1
  store %struct.read_element_status_device_id* %237, %struct.read_element_status_device_id** %15, align 8
  br label %243

238:                                              ; preds = %229, %224
  %239 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %240 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  store %struct.read_element_status_device_id* %242, %struct.read_element_status_device_id** %15, align 8
  br label %243

243:                                              ; preds = %238, %234
  br label %244

244:                                              ; preds = %243, %219
  br label %245

245:                                              ; preds = %244, %206
  %246 = load %struct.volume_tag*, %struct.volume_tag** %13, align 8
  %247 = icmp ne %struct.volume_tag* %246, null
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %250 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %249, i32 0, i32 14
  %251 = load %struct.volume_tag*, %struct.volume_tag** %13, align 8
  %252 = call i32 @copy_voltag(i32* %250, %struct.volume_tag* %251)
  br label %253

253:                                              ; preds = %248, %245
  %254 = load %struct.volume_tag*, %struct.volume_tag** %14, align 8
  %255 = icmp ne %struct.volume_tag* %254, null
  br i1 %255, label %256, label %261

256:                                              ; preds = %253
  %257 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %258 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %257, i32 0, i32 14
  %259 = load %struct.volume_tag*, %struct.volume_tag** %14, align 8
  %260 = call i32 @copy_voltag(i32* %258, %struct.volume_tag* %259)
  br label %261

261:                                              ; preds = %256, %253
  %262 = load %struct.read_element_status_device_id*, %struct.read_element_status_device_id** %15, align 8
  %263 = icmp ne %struct.read_element_status_device_id* %262, null
  br i1 %263, label %264, label %331

264:                                              ; preds = %261
  %265 = load %struct.read_element_status_device_id*, %struct.read_element_status_device_id** %15, align 8
  %266 = getelementptr inbounds %struct.read_element_status_device_id, %struct.read_element_status_device_id* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp ugt i64 %267, 0
  br i1 %268, label %269, label %293

269:                                              ; preds = %264
  %270 = load %struct.read_element_status_device_id*, %struct.read_element_status_device_id** %15, align 8
  %271 = getelementptr inbounds %struct.read_element_status_device_id, %struct.read_element_status_device_id* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = inttoptr i64 %272 to i8*
  %274 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %275 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %274, i32 0, i32 6
  %276 = load i8*, i8** %275, align 8
  %277 = load %struct.read_element_status_device_id*, %struct.read_element_status_device_id** %15, align 8
  %278 = getelementptr inbounds %struct.read_element_status_device_id, %struct.read_element_status_device_id* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @bcopy(i8* %273, i8* %276, i64 %279)
  %281 = load %struct.read_element_status_device_id*, %struct.read_element_status_device_id** %15, align 8
  %282 = getelementptr inbounds %struct.read_element_status_device_id, %struct.read_element_status_device_id* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %285 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %284, i32 0, i32 7
  store i64 %283, i64* %285, align 8
  %286 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %287 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %286, i32 0, i32 6
  %288 = load i8*, i8** %287, align 8
  %289 = load %struct.read_element_status_device_id*, %struct.read_element_status_device_id** %15, align 8
  %290 = getelementptr inbounds %struct.read_element_status_device_id, %struct.read_element_status_device_id* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds i8, i8* %288, i64 %291
  store i8 0, i8* %292, align 1
  br label %293

293:                                              ; preds = %269, %264
  %294 = load %struct.read_element_status_device_id*, %struct.read_element_status_device_id** %15, align 8
  %295 = getelementptr inbounds %struct.read_element_status_device_id, %struct.read_element_status_device_id* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @READ_ELEMENT_STATUS_PIV_SET, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %312

300:                                              ; preds = %293
  %301 = load i32, i32* @CES_PIV, align 4
  %302 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %303 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 8
  %306 = load %struct.read_element_status_device_id*, %struct.read_element_status_device_id** %15, align 8
  %307 = getelementptr inbounds %struct.read_element_status_device_id, %struct.read_element_status_device_id* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @READ_ELEMENT_STATUS_PROTOCOL_ID(i32 %308)
  %310 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %311 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %310, i32 0, i32 10
  store i32 %309, i32* %311, align 8
  br label %312

312:                                              ; preds = %300, %293
  %313 = load %struct.read_element_status_device_id*, %struct.read_element_status_device_id** %15, align 8
  %314 = getelementptr inbounds %struct.read_element_status_device_id, %struct.read_element_status_device_id* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @READ_ELEMENT_STATUS_CODE_SET(i32 %315)
  %317 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %318 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %317, i32 0, i32 13
  store i32 %316, i32* %318, align 4
  %319 = load %struct.read_element_status_device_id*, %struct.read_element_status_device_id** %15, align 8
  %320 = getelementptr inbounds %struct.read_element_status_device_id, %struct.read_element_status_device_id* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @READ_ELEMENT_STATUS_ASSOCIATION(i32 %321)
  %323 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %324 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %323, i32 0, i32 12
  store i32 %322, i32* %324, align 8
  %325 = load %struct.read_element_status_device_id*, %struct.read_element_status_device_id** %15, align 8
  %326 = getelementptr inbounds %struct.read_element_status_device_id, %struct.read_element_status_device_id* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @READ_ELEMENT_STATUS_DESIGNATOR_TYPE(i32 %327)
  %329 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %330 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %329, i32 0, i32 11
  store i32 %328, i32* %330, align 4
  br label %346

331:                                              ; preds = %261
  %332 = load i32, i32* %10, align 4
  %333 = load i32, i32* @SCSI_REV_2, align 4
  %334 = icmp sgt i32 %332, %333
  br i1 %334, label %335, label %345

335:                                              ; preds = %331
  %336 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %337 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %336, i32 0, i32 7
  store i64 0, i64* %337, align 8
  %338 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %339 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %338, i32 0, i32 6
  %340 = load i8*, i8** %339, align 8
  %341 = getelementptr inbounds i8, i8* %340, i64 0
  store i8 0, i8* %341, align 1
  %342 = load i32, i32* @CES_PROTOCOL_ID_FCP_4, align 4
  %343 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %344 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %343, i32 0, i32 10
  store i32 %342, i32* %344, align 8
  br label %345

345:                                              ; preds = %335, %331
  br label %346

346:                                              ; preds = %345, %312
  %347 = load i32, i32* %10, align 4
  %348 = load i32, i32* @SCSI_REV_2, align 4
  %349 = icmp sle i32 %347, %348
  br i1 %349, label %350, label %397

350:                                              ; preds = %346
  %351 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %352 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @READ_ELEMENT_STATUS_DT_IDVALID, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %372

359:                                              ; preds = %350
  %360 = load i32, i32* @CES_SCSIID_VALID, align 4
  %361 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %362 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = or i32 %363, %360
  store i32 %364, i32* %362, align 8
  %365 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %366 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %371 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %370, i32 0, i32 8
  store i32 %369, i32* %371, align 8
  br label %372

372:                                              ; preds = %359, %350
  %373 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %374 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @READ_ELEMENT_STATUS_DT_LUVALID, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %396

381:                                              ; preds = %372
  %382 = load i32, i32* @CES_LUN_VALID, align 4
  %383 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %384 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 8
  %386 = or i32 %385, %382
  store i32 %386, i32* %384, align 8
  %387 = load %struct.read_element_status_descriptor*, %struct.read_element_status_descriptor** %8, align 8
  %388 = getelementptr inbounds %struct.read_element_status_descriptor, %struct.read_element_status_descriptor* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @READ_ELEMENT_STATUS_DT_LUNMASK, align 4
  %393 = and i32 %391, %392
  %394 = load %struct.changer_element_status*, %struct.changer_element_status** %9, align 8
  %395 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %394, i32 0, i32 9
  store i32 %393, i32* %395, align 4
  br label %396

396:                                              ; preds = %381, %372
  br label %397

397:                                              ; preds = %396, %346
  ret void
}

declare dso_local i64 @scsi_2btoul(i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @copy_voltag(i32*, %struct.volume_tag*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @READ_ELEMENT_STATUS_PROTOCOL_ID(i32) #1

declare dso_local i32 @READ_ELEMENT_STATUS_CODE_SET(i32) #1

declare dso_local i32 @READ_ELEMENT_STATUS_ASSOCIATION(i32) #1

declare dso_local i32 @READ_ELEMENT_STATUS_DESIGNATOR_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
