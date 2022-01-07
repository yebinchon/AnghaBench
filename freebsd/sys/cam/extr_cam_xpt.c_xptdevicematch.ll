; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptdevicematch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptdevicematch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_match_pattern = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_match_pattern }
%struct.device_match_pattern = type { i32, i64, i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.cam_ed = type { i64, i64, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.scsi_vpd_device_id = type { i64 }

@DM_RET_NONE = common dso_local global i32 0, align 4
@DM_RET_ERROR = common dso_local global i32 0, align 4
@DM_RET_DESCEND = common dso_local global i32 0, align 4
@DM_RET_COPY = common dso_local global i32 0, align 4
@DEV_MATCH_DEVICE = common dso_local global i64 0, align 8
@DEV_MATCH_PERIPH = common dso_local global i64 0, align 8
@DM_RET_ACTION_MASK = common dso_local global i32 0, align 4
@DEV_MATCH_INQUIRY = common dso_local global i32 0, align 4
@DEV_MATCH_DEVID = common dso_local global i32 0, align 4
@DEV_MATCH_ANY = common dso_local global i32 0, align 4
@DEV_MATCH_NONE = common dso_local global i32 0, align 4
@DEV_MATCH_PATH = common dso_local global i32 0, align 4
@DEV_MATCH_TARGET = common dso_local global i32 0, align 4
@DEV_MATCH_LUN = common dso_local global i32 0, align 4
@scsi_static_inquiry_match = common dso_local global i32 0, align 4
@SVPD_DEVICE_ID_HDR_LEN = common dso_local global i64 0, align 8
@DM_RET_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_match_pattern*, i64, %struct.cam_ed*)* @xptdevicematch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptdevicematch(%struct.dev_match_pattern* %0, i64 %1, %struct.cam_ed* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_match_pattern*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cam_ed*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.device_match_pattern*, align 8
  %11 = alloca %struct.scsi_vpd_device_id*, align 8
  store %struct.dev_match_pattern* %0, %struct.dev_match_pattern** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.cam_ed* %2, %struct.cam_ed** %7, align 8
  %12 = load i32, i32* @DM_RET_NONE, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.cam_ed*, %struct.cam_ed** %7, align 8
  %14 = icmp eq %struct.cam_ed* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @DM_RET_ERROR, align 4
  store i32 %16, i32* %4, align 4
  br label %233

17:                                               ; preds = %3
  %18 = load %struct.dev_match_pattern*, %struct.dev_match_pattern** %5, align 8
  %19 = icmp eq %struct.dev_match_pattern* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @DM_RET_DESCEND, align 4
  %25 = load i32, i32* @DM_RET_COPY, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %4, align 4
  br label %233

27:                                               ; preds = %20
  store i64 0, i64* %9, align 8
  br label %28

28:                                               ; preds = %218, %27
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %221

32:                                               ; preds = %28
  %33 = load %struct.dev_match_pattern*, %struct.dev_match_pattern** %5, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.dev_match_pattern, %struct.dev_match_pattern* %33, i64 %34
  %36 = getelementptr inbounds %struct.dev_match_pattern, %struct.dev_match_pattern* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DEV_MATCH_DEVICE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %32
  %41 = load %struct.dev_match_pattern*, %struct.dev_match_pattern** %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.dev_match_pattern, %struct.dev_match_pattern* %41, i64 %42
  %44 = getelementptr inbounds %struct.dev_match_pattern, %struct.dev_match_pattern* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DEV_MATCH_PERIPH, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @DM_RET_ACTION_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @DM_RET_NONE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @DM_RET_DESCEND, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %48, %40
  br label %218

59:                                               ; preds = %32
  %60 = load %struct.dev_match_pattern*, %struct.dev_match_pattern** %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.dev_match_pattern, %struct.dev_match_pattern* %60, i64 %61
  %63 = getelementptr inbounds %struct.dev_match_pattern, %struct.dev_match_pattern* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store %struct.device_match_pattern* %64, %struct.device_match_pattern** %10, align 8
  %65 = load %struct.device_match_pattern*, %struct.device_match_pattern** %10, align 8
  %66 = getelementptr inbounds %struct.device_match_pattern, %struct.device_match_pattern* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DEV_MATCH_INQUIRY, align 4
  %69 = load i32, i32* @DEV_MATCH_DEVID, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = load i32, i32* @DEV_MATCH_INQUIRY, align 4
  %73 = load i32, i32* @DEV_MATCH_DEVID, align 4
  %74 = or i32 %72, %73
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %59
  %77 = load i32, i32* @DM_RET_ERROR, align 4
  store i32 %77, i32* %4, align 4
  br label %233

78:                                               ; preds = %59
  %79 = load %struct.device_match_pattern*, %struct.device_match_pattern** %10, align 8
  %80 = getelementptr inbounds %struct.device_match_pattern, %struct.device_match_pattern* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @DEV_MATCH_ANY, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %206

85:                                               ; preds = %78
  %86 = load %struct.device_match_pattern*, %struct.device_match_pattern** %10, align 8
  %87 = getelementptr inbounds %struct.device_match_pattern, %struct.device_match_pattern* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DEV_MATCH_NONE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %218

92:                                               ; preds = %85
  %93 = load %struct.device_match_pattern*, %struct.device_match_pattern** %10, align 8
  %94 = getelementptr inbounds %struct.device_match_pattern, %struct.device_match_pattern* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @DEV_MATCH_PATH, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %92
  %100 = load %struct.device_match_pattern*, %struct.device_match_pattern** %10, align 8
  %101 = getelementptr inbounds %struct.device_match_pattern, %struct.device_match_pattern* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.cam_ed*, %struct.cam_ed** %7, align 8
  %104 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %103, i32 0, i32 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %102, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  br label %218

112:                                              ; preds = %99, %92
  %113 = load %struct.device_match_pattern*, %struct.device_match_pattern** %10, align 8
  %114 = getelementptr inbounds %struct.device_match_pattern, %struct.device_match_pattern* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DEV_MATCH_TARGET, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %112
  %120 = load %struct.device_match_pattern*, %struct.device_match_pattern** %10, align 8
  %121 = getelementptr inbounds %struct.device_match_pattern, %struct.device_match_pattern* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.cam_ed*, %struct.cam_ed** %7, align 8
  %124 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %123, i32 0, i32 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %122, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %218

130:                                              ; preds = %119, %112
  %131 = load %struct.device_match_pattern*, %struct.device_match_pattern** %10, align 8
  %132 = getelementptr inbounds %struct.device_match_pattern, %struct.device_match_pattern* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @DEV_MATCH_LUN, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %130
  %138 = load %struct.device_match_pattern*, %struct.device_match_pattern** %10, align 8
  %139 = getelementptr inbounds %struct.device_match_pattern, %struct.device_match_pattern* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.cam_ed*, %struct.cam_ed** %7, align 8
  %142 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %140, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %218

146:                                              ; preds = %137, %130
  %147 = load %struct.device_match_pattern*, %struct.device_match_pattern** %10, align 8
  %148 = getelementptr inbounds %struct.device_match_pattern, %struct.device_match_pattern* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @DEV_MATCH_INQUIRY, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %146
  %154 = load %struct.cam_ed*, %struct.cam_ed** %7, align 8
  %155 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %154, i32 0, i32 3
  %156 = ptrtoint i32* %155 to i32
  %157 = load %struct.device_match_pattern*, %struct.device_match_pattern** %10, align 8
  %158 = getelementptr inbounds %struct.device_match_pattern, %struct.device_match_pattern* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = ptrtoint i32* %159 to i32
  %161 = load i32, i32* @scsi_static_inquiry_match, align 4
  %162 = call i32* @cam_quirkmatch(i32 %156, i32 %160, i32 1, i32 4, i32 %161)
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %153
  br label %218

165:                                              ; preds = %153, %146
  %166 = load %struct.cam_ed*, %struct.cam_ed** %7, align 8
  %167 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to %struct.scsi_vpd_device_id*
  store %struct.scsi_vpd_device_id* %169, %struct.scsi_vpd_device_id** %11, align 8
  %170 = load %struct.device_match_pattern*, %struct.device_match_pattern** %10, align 8
  %171 = getelementptr inbounds %struct.device_match_pattern, %struct.device_match_pattern* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @DEV_MATCH_DEVID, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %205

176:                                              ; preds = %165
  %177 = load %struct.cam_ed*, %struct.cam_ed** %7, align 8
  %178 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @SVPD_DEVICE_ID_HDR_LEN, align 8
  %181 = icmp slt i64 %179, %180
  br i1 %181, label %204, label %182

182:                                              ; preds = %176
  %183 = load %struct.scsi_vpd_device_id*, %struct.scsi_vpd_device_id** %11, align 8
  %184 = getelementptr inbounds %struct.scsi_vpd_device_id, %struct.scsi_vpd_device_id* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i32*
  %187 = load %struct.cam_ed*, %struct.cam_ed** %7, align 8
  %188 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @SVPD_DEVICE_ID_HDR_LEN, align 8
  %191 = sub nsw i64 %189, %190
  %192 = load %struct.device_match_pattern*, %struct.device_match_pattern** %10, align 8
  %193 = getelementptr inbounds %struct.device_match_pattern, %struct.device_match_pattern* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.device_match_pattern*, %struct.device_match_pattern** %10, align 8
  %198 = getelementptr inbounds %struct.device_match_pattern, %struct.device_match_pattern* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @scsi_devid_match(i32* %186, i64 %191, i32 %196, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %182, %176
  br label %218

205:                                              ; preds = %182, %165
  br label %206

206:                                              ; preds = %205, %84
  %207 = load i32, i32* @DM_RET_COPY, align 4
  %208 = load i32, i32* %8, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @DM_RET_ACTION_MASK, align 4
  %212 = and i32 %210, %211
  %213 = load i32, i32* @DM_RET_DESCEND, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %206
  %216 = load i32, i32* %8, align 4
  store i32 %216, i32* %4, align 4
  br label %233

217:                                              ; preds = %206
  br label %218

218:                                              ; preds = %217, %204, %164, %145, %129, %111, %91, %58
  %219 = load i64, i64* %9, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %9, align 8
  br label %28

221:                                              ; preds = %28
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @DM_RET_ACTION_MASK, align 4
  %224 = and i32 %222, %223
  %225 = load i32, i32* @DM_RET_NONE, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = load i32, i32* @DM_RET_STOP, align 4
  %229 = load i32, i32* %8, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %8, align 4
  br label %231

231:                                              ; preds = %227, %221
  %232 = load i32, i32* %8, align 4
  store i32 %232, i32* %4, align 4
  br label %233

233:                                              ; preds = %231, %215, %76, %23, %15
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32* @cam_quirkmatch(i32, i32, i32, i32, i32) #1

declare dso_local i64 @scsi_devid_match(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
