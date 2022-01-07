; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptdoioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptdoioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.cam_path* }
%struct.cam_path = type { i32 }
%struct.periph_driver = type { i32, i32 }
%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%union.ccb = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i8*, i32, i32, i32, i32, %struct.cam_path*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.cam_eb = type { i32 }
%struct.cam_periph_map_info = type { i32 }
%struct.cam_periph = type { %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { %struct.cam_ed*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.cam_ed = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i32, i32, i8*, i32 }

@CAM_UNLOCKED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@CAM_DATA_MASK = common dso_local global i32 0, align 4
@CAM_DATA_VADDR = common dso_local global i32 0, align 4
@xpt_periph = common dso_local global %struct.TYPE_16__* null, align 8
@MAXPHYS = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@periph_drivers = common dso_local global %struct.periph_driver** null, align 8
@CAM_REQ_CMP_ERR = common dso_local global i8* null, align 8
@CAM_GDEVLIST_ERROR = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@unit_links = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@periph_links = common dso_local global i32 0, align 4
@CAM_GDEVLIST_MORE_DEVS = common dso_local global i8* null, align 8
@CAM_GDEVLIST_LAST_DEVICE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"xptioctl: pass driver is not in the kernel\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"xptioctl: put \22device pass\22 in your kernel config file\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @xptdoioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptdoioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.ccb*, align 8
  %14 = alloca %union.ccb*, align 8
  %15 = alloca %struct.cam_eb*, align 8
  %16 = alloca %union.ccb, align 8
  %17 = alloca %struct.cam_periph_map_info, align 4
  %18 = alloca %struct.cam_path*, align 8
  %19 = alloca %union.ccb*, align 8
  %20 = alloca %struct.cam_periph*, align 8
  %21 = alloca %struct.periph_driver**, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.cam_ed*, align 8
  %26 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store i32 0, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %461 [
    i32 136, label %28
    i32 137, label %248
  ]

28:                                               ; preds = %5
  %29 = load i64, i64* %9, align 8
  %30 = inttoptr i64 %29 to %union.ccb*
  store %union.ccb* %30, %union.ccb** %14, align 8
  %31 = load %union.ccb*, %union.ccb** %14, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_15__*
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CAM_UNLOCKED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %6, align 4
  br label %465

40:                                               ; preds = %28
  %41 = load %union.ccb*, %union.ccb** %14, align 8
  %42 = bitcast %union.ccb* %41 to %struct.TYPE_15__*
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.cam_eb* @xpt_find_bus(i32 %44)
  store %struct.cam_eb* %45, %struct.cam_eb** %15, align 8
  %46 = load %struct.cam_eb*, %struct.cam_eb** %15, align 8
  %47 = icmp eq %struct.cam_eb* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %6, align 4
  br label %465

50:                                               ; preds = %40
  %51 = load %union.ccb*, %union.ccb** %14, align 8
  %52 = bitcast %union.ccb* %51 to %struct.TYPE_15__*
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %93 [
    i32 130, label %55
    i32 131, label %55
    i32 128, label %74
  ]

55:                                               ; preds = %50, %50
  %56 = load %union.ccb*, %union.ccb** %14, align 8
  %57 = bitcast %union.ccb* %56 to %struct.TYPE_15__*
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %union.ccb*, %union.ccb** %14, align 8
  %64 = bitcast %union.ccb* %63 to %struct.TYPE_15__*
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %62, %55
  %70 = load %struct.cam_eb*, %struct.cam_eb** %15, align 8
  %71 = call i32 @xpt_release_bus(%struct.cam_eb* %70)
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %6, align 4
  br label %465

73:                                               ; preds = %62
  br label %94

74:                                               ; preds = %50
  %75 = load %union.ccb*, %union.ccb** %14, align 8
  %76 = bitcast %union.ccb* %75 to %struct.TYPE_15__*
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = load %union.ccb*, %union.ccb** %14, align 8
  %83 = bitcast %union.ccb* %82 to %struct.TYPE_15__*
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %81, %74
  %89 = load %struct.cam_eb*, %struct.cam_eb** %15, align 8
  %90 = call i32 @xpt_release_bus(%struct.cam_eb* %89)
  %91 = load i32, i32* @EINVAL, align 4
  store i32 %91, i32* %6, align 4
  br label %465

92:                                               ; preds = %81
  br label %94

93:                                               ; preds = %50
  br label %94

94:                                               ; preds = %93, %92, %73
  %95 = load %union.ccb*, %union.ccb** %14, align 8
  %96 = bitcast %union.ccb* %95 to %struct.TYPE_15__*
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %243 [
    i32 130, label %99
    i32 131, label %99
    i32 132, label %99
    i32 133, label %99
    i32 129, label %99
    i32 128, label %99
    i32 135, label %161
    i32 134, label %201
  ]

99:                                               ; preds = %94, %94, %94, %94, %94, %94
  %100 = call %union.ccb* (...) @xpt_alloc_ccb()
  store %union.ccb* %100, %union.ccb** %13, align 8
  %101 = load %union.ccb*, %union.ccb** %13, align 8
  %102 = bitcast %union.ccb* %101 to %struct.TYPE_15__*
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 6
  %104 = load %union.ccb*, %union.ccb** %14, align 8
  %105 = bitcast %union.ccb* %104 to %struct.TYPE_15__*
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %union.ccb*, %union.ccb** %14, align 8
  %109 = bitcast %union.ccb* %108 to %struct.TYPE_15__*
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %union.ccb*, %union.ccb** %14, align 8
  %113 = bitcast %union.ccb* %112 to %struct.TYPE_15__*
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @xpt_create_path(%struct.cam_path** %103, i32* null, i32 %107, i32 %111, i32 %115)
  %117 = load i8*, i8** @CAM_REQ_CMP, align 8
  %118 = icmp ne i8* %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %99
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* %12, align 4
  %121 = load %union.ccb*, %union.ccb** %13, align 8
  %122 = call i32 @xpt_free_ccb(%union.ccb* %121)
  br label %245

123:                                              ; preds = %99
  %124 = load %union.ccb*, %union.ccb** %13, align 8
  %125 = bitcast %union.ccb* %124 to %struct.TYPE_15__*
  %126 = load %union.ccb*, %union.ccb** %13, align 8
  %127 = bitcast %union.ccb* %126 to %struct.TYPE_15__*
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 6
  %129 = load %struct.cam_path*, %struct.cam_path** %128, align 8
  %130 = load %union.ccb*, %union.ccb** %14, align 8
  %131 = bitcast %union.ccb* %130 to %struct.TYPE_15__*
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 7
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @xpt_setup_ccb(%struct.TYPE_15__* %125, %struct.cam_path* %129, i32 %134)
  %136 = load %union.ccb*, %union.ccb** %13, align 8
  %137 = load %union.ccb*, %union.ccb** %14, align 8
  %138 = call i32 @xpt_merge_ccb(%union.ccb* %136, %union.ccb* %137)
  %139 = load %union.ccb*, %union.ccb** %13, align 8
  %140 = bitcast %union.ccb* %139 to %struct.TYPE_15__*
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 6
  %142 = load %struct.cam_path*, %struct.cam_path** %141, align 8
  %143 = call i32 @xpt_path_lock(%struct.cam_path* %142)
  %144 = load %union.ccb*, %union.ccb** %13, align 8
  %145 = call i32 @cam_periph_runccb(%union.ccb* %144, i32* null, i32 0, i32 0, i32* null)
  %146 = load %union.ccb*, %union.ccb** %13, align 8
  %147 = bitcast %union.ccb* %146 to %struct.TYPE_15__*
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 6
  %149 = load %struct.cam_path*, %struct.cam_path** %148, align 8
  %150 = call i32 @xpt_path_unlock(%struct.cam_path* %149)
  %151 = load %union.ccb*, %union.ccb** %13, align 8
  %152 = load %union.ccb*, %union.ccb** %14, align 8
  %153 = call i32 @bcopy(%union.ccb* %151, %union.ccb* %152, i32 48)
  %154 = load %union.ccb*, %union.ccb** %13, align 8
  %155 = bitcast %union.ccb* %154 to %struct.TYPE_15__*
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 6
  %157 = load %struct.cam_path*, %struct.cam_path** %156, align 8
  %158 = call i32 @xpt_free_path(%struct.cam_path* %157)
  %159 = load %union.ccb*, %union.ccb** %13, align 8
  %160 = call i32 @xpt_free_ccb(%union.ccb* %159)
  br label %245

161:                                              ; preds = %94
  %162 = bitcast %union.ccb* %16 to %struct.TYPE_15__*
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 6
  %164 = load %union.ccb*, %union.ccb** %14, align 8
  %165 = bitcast %union.ccb* %164 to %struct.TYPE_15__*
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load %union.ccb*, %union.ccb** %14, align 8
  %169 = bitcast %union.ccb* %168 to %struct.TYPE_15__*
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %union.ccb*, %union.ccb** %14, align 8
  %173 = bitcast %union.ccb* %172 to %struct.TYPE_15__*
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i8* @xpt_create_path(%struct.cam_path** %163, i32* null, i32 %167, i32 %171, i32 %175)
  %177 = load i8*, i8** @CAM_REQ_CMP, align 8
  %178 = icmp ne i8* %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %161
  %180 = load i32, i32* @EINVAL, align 4
  store i32 %180, i32* %12, align 4
  br label %245

181:                                              ; preds = %161
  %182 = bitcast %union.ccb* %16 to %struct.TYPE_15__*
  %183 = bitcast %union.ccb* %16 to %struct.TYPE_15__*
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 6
  %185 = load %struct.cam_path*, %struct.cam_path** %184, align 8
  %186 = load %union.ccb*, %union.ccb** %14, align 8
  %187 = bitcast %union.ccb* %186 to %struct.TYPE_15__*
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 7
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @xpt_setup_ccb(%struct.TYPE_15__* %182, %struct.cam_path* %185, i32 %190)
  %192 = load %union.ccb*, %union.ccb** %14, align 8
  %193 = call i32 @xpt_merge_ccb(%union.ccb* %16, %union.ccb* %192)
  %194 = call i32 @xpt_action(%union.ccb* %16)
  %195 = load %union.ccb*, %union.ccb** %14, align 8
  %196 = call i32 @bcopy(%union.ccb* %16, %union.ccb* %195, i32 48)
  %197 = bitcast %union.ccb* %16 to %struct.TYPE_15__*
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 6
  %199 = load %struct.cam_path*, %struct.cam_path** %198, align 8
  %200 = call i32 @xpt_free_path(%struct.cam_path* %199)
  br label %245

201:                                              ; preds = %94
  %202 = load %union.ccb*, %union.ccb** %14, align 8
  %203 = bitcast %union.ccb* %202 to %struct.TYPE_15__*
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @CAM_DATA_MASK, align 4
  %207 = and i32 %205, %206
  %208 = load i32, i32* @CAM_DATA_VADDR, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %201
  %211 = load i32, i32* @EINVAL, align 4
  store i32 %211, i32* %12, align 4
  br label %245

212:                                              ; preds = %201
  %213 = load %union.ccb*, %union.ccb** %14, align 8
  %214 = bitcast %union.ccb* %213 to %struct.TYPE_15__*
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 6
  %216 = load %struct.cam_path*, %struct.cam_path** %215, align 8
  store %struct.cam_path* %216, %struct.cam_path** %18, align 8
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** @xpt_periph, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = load %struct.cam_path*, %struct.cam_path** %218, align 8
  %220 = load %union.ccb*, %union.ccb** %14, align 8
  %221 = bitcast %union.ccb* %220 to %struct.TYPE_15__*
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 6
  store %struct.cam_path* %219, %struct.cam_path** %222, align 8
  %223 = call i32 @bzero(%struct.cam_periph_map_info* %17, i32 4)
  %224 = load %union.ccb*, %union.ccb** %14, align 8
  %225 = load i32, i32* @MAXPHYS, align 4
  %226 = call i32 @cam_periph_mapmem(%union.ccb* %224, %struct.cam_periph_map_info* %17, i32 %225)
  store i32 %226, i32* %12, align 4
  %227 = load i32, i32* %12, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %212
  %230 = load %struct.cam_path*, %struct.cam_path** %18, align 8
  %231 = load %union.ccb*, %union.ccb** %14, align 8
  %232 = bitcast %union.ccb* %231 to %struct.TYPE_15__*
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 6
  store %struct.cam_path* %230, %struct.cam_path** %233, align 8
  br label %245

234:                                              ; preds = %212
  %235 = load %union.ccb*, %union.ccb** %14, align 8
  %236 = call i32 @xpt_action(%union.ccb* %235)
  %237 = load %union.ccb*, %union.ccb** %14, align 8
  %238 = call i32 @cam_periph_unmapmem(%union.ccb* %237, %struct.cam_periph_map_info* %17)
  %239 = load %struct.cam_path*, %struct.cam_path** %18, align 8
  %240 = load %union.ccb*, %union.ccb** %14, align 8
  %241 = bitcast %union.ccb* %240 to %struct.TYPE_15__*
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 6
  store %struct.cam_path* %239, %struct.cam_path** %242, align 8
  store i32 0, i32* %12, align 4
  br label %245

243:                                              ; preds = %94
  %244 = load i32, i32* @ENOTSUP, align 4
  store i32 %244, i32* %12, align 4
  br label %245

245:                                              ; preds = %243, %234, %229, %210, %181, %179, %123, %119
  %246 = load %struct.cam_eb*, %struct.cam_eb** %15, align 8
  %247 = call i32 @xpt_release_bus(%struct.cam_eb* %246)
  br label %463

248:                                              ; preds = %5
  %249 = load i64, i64* %9, align 8
  %250 = inttoptr i64 %249 to %union.ccb*
  store %union.ccb* %250, %union.ccb** %19, align 8
  %251 = load %union.ccb*, %union.ccb** %19, align 8
  %252 = bitcast %union.ccb* %251 to %struct.TYPE_12__*
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %23, align 4
  %255 = load %union.ccb*, %union.ccb** %19, align 8
  %256 = bitcast %union.ccb* %255 to %struct.TYPE_12__*
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  store i8* %258, i8** %22, align 8
  store i32 0, i32* %24, align 4
  %259 = load %union.ccb*, %union.ccb** %19, align 8
  %260 = bitcast %union.ccb* %259 to %struct.TYPE_12__*
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %248
  %267 = load i32, i32* @EINVAL, align 4
  store i32 %267, i32* %12, align 4
  br label %463

268:                                              ; preds = %248
  %269 = call i32 (...) @xpt_lock_buses()
  %270 = load %struct.periph_driver**, %struct.periph_driver*** @periph_drivers, align 8
  store %struct.periph_driver** %270, %struct.periph_driver*** %21, align 8
  br label %271

271:                                              ; preds = %285, %268
  %272 = load %struct.periph_driver**, %struct.periph_driver*** %21, align 8
  %273 = load %struct.periph_driver*, %struct.periph_driver** %272, align 8
  %274 = icmp ne %struct.periph_driver* %273, null
  br i1 %274, label %275, label %288

275:                                              ; preds = %271
  %276 = load %struct.periph_driver**, %struct.periph_driver*** %21, align 8
  %277 = load %struct.periph_driver*, %struct.periph_driver** %276, align 8
  %278 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i8*, i8** %22, align 8
  %281 = call i32 @strcmp(i32 %279, i8* %280)
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %275
  br label %288

284:                                              ; preds = %275
  br label %285

285:                                              ; preds = %284
  %286 = load %struct.periph_driver**, %struct.periph_driver*** %21, align 8
  %287 = getelementptr inbounds %struct.periph_driver*, %struct.periph_driver** %286, i32 1
  store %struct.periph_driver** %287, %struct.periph_driver*** %21, align 8
  br label %271

288:                                              ; preds = %283, %271
  %289 = load %struct.periph_driver**, %struct.periph_driver*** %21, align 8
  %290 = load %struct.periph_driver*, %struct.periph_driver** %289, align 8
  %291 = icmp eq %struct.periph_driver* %290, null
  br i1 %291, label %292, label %310

292:                                              ; preds = %288
  %293 = call i32 (...) @xpt_unlock_buses()
  %294 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %295 = load %union.ccb*, %union.ccb** %19, align 8
  %296 = bitcast %union.ccb* %295 to %struct.TYPE_15__*
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 1
  store i8* %294, i8** %297, align 8
  %298 = load i8*, i8** @CAM_GDEVLIST_ERROR, align 8
  %299 = load %union.ccb*, %union.ccb** %19, align 8
  %300 = bitcast %union.ccb* %299 to %struct.TYPE_12__*
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 3
  store i8* %298, i8** %301, align 8
  %302 = load %union.ccb*, %union.ccb** %19, align 8
  %303 = bitcast %union.ccb* %302 to %struct.TYPE_12__*
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  store i8 0, i8* %305, align 1
  %306 = load %union.ccb*, %union.ccb** %19, align 8
  %307 = bitcast %union.ccb* %306 to %struct.TYPE_12__*
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 2
  store i32 0, i32* %308, align 4
  %309 = load i32, i32* @ENOENT, align 4
  store i32 %309, i32* %12, align 4
  br label %463

310:                                              ; preds = %288
  %311 = load %struct.periph_driver**, %struct.periph_driver*** %21, align 8
  %312 = load %struct.periph_driver*, %struct.periph_driver** %311, align 8
  %313 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %312, i32 0, i32 0
  %314 = call %struct.cam_periph* @TAILQ_FIRST(i32* %313)
  store %struct.cam_periph* %314, %struct.cam_periph** %20, align 8
  br label %315

315:                                              ; preds = %326, %310
  %316 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %317 = icmp ne %struct.cam_periph* %316, null
  br i1 %317, label %318, label %330

318:                                              ; preds = %315
  %319 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %320 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* %23, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %318
  br label %330

325:                                              ; preds = %318
  br label %326

326:                                              ; preds = %325
  %327 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %328 = load i32, i32* @unit_links, align 4
  %329 = call %struct.cam_periph* @TAILQ_NEXT(%struct.cam_periph* %327, i32 %328)
  store %struct.cam_periph* %329, %struct.cam_periph** %20, align 8
  br label %315

330:                                              ; preds = %324, %315
  %331 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %332 = icmp ne %struct.cam_periph* %331, null
  br i1 %332, label %333, label %433

333:                                              ; preds = %330
  store i32 1, i32* %24, align 4
  %334 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %335 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %334, i32 0, i32 0
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 0
  %338 = load %struct.cam_ed*, %struct.cam_ed** %337, align 8
  store %struct.cam_ed* %338, %struct.cam_ed** %25, align 8
  store i32 0, i32* %26, align 4
  %339 = load %struct.cam_ed*, %struct.cam_ed** %25, align 8
  %340 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %339, i32 0, i32 2
  %341 = call %struct.cam_periph* @SLIST_FIRST(i32* %340)
  store %struct.cam_periph* %341, %struct.cam_periph** %20, align 8
  br label %342

342:                                              ; preds = %426, %333
  %343 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %344 = icmp ne %struct.cam_periph* %343, null
  br i1 %344, label %345, label %432

345:                                              ; preds = %342
  %346 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %347 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @strcmp(i32 %348, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %425

351:                                              ; preds = %345
  %352 = load %union.ccb*, %union.ccb** %19, align 8
  %353 = bitcast %union.ccb* %352 to %struct.TYPE_12__*
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 0
  %355 = load i8*, i8** %354, align 8
  %356 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %357 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @strlcpy(i8* %355, i32 %358, i32 8)
  %360 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %361 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  %363 = load %union.ccb*, %union.ccb** %19, align 8
  %364 = bitcast %union.ccb* %363 to %struct.TYPE_12__*
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 2
  store i32 %362, i32* %365, align 4
  %366 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %367 = load i32, i32* @periph_links, align 4
  %368 = call %struct.cam_periph* @SLIST_NEXT(%struct.cam_periph* %366, i32 %367)
  %369 = icmp ne %struct.cam_periph* %368, null
  br i1 %369, label %370, label %375

370:                                              ; preds = %351
  %371 = load i8*, i8** @CAM_GDEVLIST_MORE_DEVS, align 8
  %372 = load %union.ccb*, %union.ccb** %19, align 8
  %373 = bitcast %union.ccb* %372 to %struct.TYPE_12__*
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 3
  store i8* %371, i8** %374, align 8
  br label %380

375:                                              ; preds = %351
  %376 = load i8*, i8** @CAM_GDEVLIST_LAST_DEVICE, align 8
  %377 = load %union.ccb*, %union.ccb** %19, align 8
  %378 = bitcast %union.ccb* %377 to %struct.TYPE_12__*
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 3
  store i8* %376, i8** %379, align 8
  br label %380

380:                                              ; preds = %375, %370
  %381 = load %struct.cam_ed*, %struct.cam_ed** %25, align 8
  %382 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load %union.ccb*, %union.ccb** %19, align 8
  %385 = bitcast %union.ccb* %384 to %struct.TYPE_12__*
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i32 0, i32 4
  store i32 %383, i32* %386, align 8
  %387 = load i32, i32* %26, align 4
  %388 = load %union.ccb*, %union.ccb** %19, align 8
  %389 = bitcast %union.ccb* %388 to %struct.TYPE_12__*
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 1
  store i32 %387, i32* %390, align 8
  %391 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %392 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %391, i32 0, i32 0
  %393 = load %struct.TYPE_11__*, %struct.TYPE_11__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 2
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load %union.ccb*, %union.ccb** %19, align 8
  %399 = bitcast %union.ccb* %398 to %struct.TYPE_15__*
  %400 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %399, i32 0, i32 4
  store i32 %397, i32* %400, align 8
  %401 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %402 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %401, i32 0, i32 0
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 1
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = load %union.ccb*, %union.ccb** %19, align 8
  %409 = bitcast %union.ccb* %408 to %struct.TYPE_15__*
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i32 0, i32 3
  store i32 %407, i32* %410, align 4
  %411 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %412 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %411, i32 0, i32 0
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %413, i32 0, i32 0
  %415 = load %struct.cam_ed*, %struct.cam_ed** %414, align 8
  %416 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = load %union.ccb*, %union.ccb** %19, align 8
  %419 = bitcast %union.ccb* %418 to %struct.TYPE_15__*
  %420 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %419, i32 0, i32 2
  store i32 %417, i32* %420, align 8
  %421 = load i8*, i8** @CAM_REQ_CMP, align 8
  %422 = load %union.ccb*, %union.ccb** %19, align 8
  %423 = bitcast %union.ccb* %422 to %struct.TYPE_15__*
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 1
  store i8* %421, i8** %424, align 8
  br label %432

425:                                              ; preds = %345
  br label %426

426:                                              ; preds = %425
  %427 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %428 = load i32, i32* @periph_links, align 4
  %429 = call %struct.cam_periph* @SLIST_NEXT(%struct.cam_periph* %427, i32 %428)
  store %struct.cam_periph* %429, %struct.cam_periph** %20, align 8
  %430 = load i32, i32* %26, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %26, align 4
  br label %342

432:                                              ; preds = %380, %342
  br label %433

433:                                              ; preds = %432, %330
  %434 = load %struct.cam_periph*, %struct.cam_periph** %20, align 8
  %435 = icmp eq %struct.cam_periph* %434, null
  br i1 %435, label %436, label %459

436:                                              ; preds = %433
  %437 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %438 = load %union.ccb*, %union.ccb** %19, align 8
  %439 = bitcast %union.ccb* %438 to %struct.TYPE_15__*
  %440 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %439, i32 0, i32 1
  store i8* %437, i8** %440, align 8
  %441 = load i8*, i8** @CAM_GDEVLIST_ERROR, align 8
  %442 = load %union.ccb*, %union.ccb** %19, align 8
  %443 = bitcast %union.ccb* %442 to %struct.TYPE_12__*
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 3
  store i8* %441, i8** %444, align 8
  %445 = load %union.ccb*, %union.ccb** %19, align 8
  %446 = bitcast %union.ccb* %445 to %struct.TYPE_12__*
  %447 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %446, i32 0, i32 0
  %448 = load i8*, i8** %447, align 8
  store i8 0, i8* %448, align 1
  %449 = load %union.ccb*, %union.ccb** %19, align 8
  %450 = bitcast %union.ccb* %449 to %struct.TYPE_12__*
  %451 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %450, i32 0, i32 2
  store i32 0, i32* %451, align 4
  %452 = load i32, i32* @ENOENT, align 4
  store i32 %452, i32* %12, align 4
  %453 = load i32, i32* %24, align 4
  %454 = icmp eq i32 %453, 1
  br i1 %454, label %455, label %458

455:                                              ; preds = %436
  %456 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %457 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %458

458:                                              ; preds = %455, %436
  br label %459

459:                                              ; preds = %458, %433
  %460 = call i32 (...) @xpt_unlock_buses()
  br label %463

461:                                              ; preds = %5
  %462 = load i32, i32* @ENOTTY, align 4
  store i32 %462, i32* %12, align 4
  br label %463

463:                                              ; preds = %461, %459, %292, %266, %245
  %464 = load i32, i32* %12, align 4
  store i32 %464, i32* %6, align 4
  br label %465

465:                                              ; preds = %463, %88, %69, %48, %38
  %466 = load i32, i32* %6, align 4
  ret i32 %466
}

declare dso_local %struct.cam_eb* @xpt_find_bus(i32) #1

declare dso_local i32 @xpt_release_bus(%struct.cam_eb*) #1

declare dso_local %union.ccb* @xpt_alloc_ccb(...) #1

declare dso_local i8* @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_15__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_merge_ccb(%union.ccb*, %union.ccb*) #1

declare dso_local i32 @xpt_path_lock(%struct.cam_path*) #1

declare dso_local i32 @cam_periph_runccb(%union.ccb*, i32*, i32, i32, i32*) #1

declare dso_local i32 @xpt_path_unlock(%struct.cam_path*) #1

declare dso_local i32 @bcopy(%union.ccb*, %union.ccb*, i32) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @bzero(%struct.cam_periph_map_info*, i32) #1

declare dso_local i32 @cam_periph_mapmem(%union.ccb*, %struct.cam_periph_map_info*, i32) #1

declare dso_local i32 @cam_periph_unmapmem(%union.ccb*, %struct.cam_periph_map_info*) #1

declare dso_local i32 @xpt_lock_buses(...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @xpt_unlock_buses(...) #1

declare dso_local %struct.cam_periph* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.cam_periph* @TAILQ_NEXT(%struct.cam_periph*, i32) #1

declare dso_local %struct.cam_periph* @SLIST_FIRST(i32*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local %struct.cam_periph* @SLIST_NEXT(%struct.cam_periph*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
