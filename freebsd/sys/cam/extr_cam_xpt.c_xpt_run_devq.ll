; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_run_devq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_run_devq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.mtx, i32 }
%struct.mtx = type { i32 }
%struct.cam_devq = type { i64, %struct.TYPE_14__, %struct.mtx, i32 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.cam_ed = type { i32, %struct.cam_sim*, i32, i32 }
%struct.cam_sim = type { i32 (%struct.cam_sim*, %union.ccb*)*, %struct.mtx* }
%union.ccb = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.cam_ed* }
%struct.xpt_proto = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%union.ccb*)* }
%struct.TYPE_8__ = type { i64 }

@CAM_DEBUG_XPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"xpt_run_devq\0A\00", align 1
@CAMQ_HEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"running device %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"device on run queue with no ccbs???\0A\00", align 1
@CAM_HIGH_POWER = common dso_local global i32 0, align 4
@xsoftc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@highpowerq_entry = common dso_local global i32 0, align 4
@CAM_DEV_QFREEZE = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@SID_CmdQue = common dso_local global i32 0, align 4
@CAM_TAG_ACTION_NONE = common dso_local global i64 0, align 8
@CAM_TAG_ACTION_VALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"device (%p) / path->device (%p) mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_devq*)* @xpt_run_devq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpt_run_devq(%struct.cam_devq* %0) #0 {
  %2 = alloca %struct.cam_devq*, align 8
  %3 = alloca %struct.mtx*, align 8
  %4 = alloca %struct.cam_ed*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.cam_sim*, align 8
  %7 = alloca %struct.xpt_proto*, align 8
  store %struct.cam_devq* %0, %struct.cam_devq** %2, align 8
  %8 = load i32, i32* @CAM_DEBUG_XPT, align 4
  %9 = call i32 @CAM_DEBUG_PRINT(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cam_devq*, %struct.cam_devq** %2, align 8
  %11 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  br label %15

15:                                               ; preds = %223, %64, %50, %1
  %16 = load %struct.cam_devq*, %struct.cam_devq** %2, align 8
  %17 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.cam_devq*, %struct.cam_devq** %2, align 8
  %23 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.cam_devq*, %struct.cam_devq** %2, align 8
  %28 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %30, 1
  br label %32

32:                                               ; preds = %26, %21, %15
  %33 = phi i1 [ false, %21 ], [ false, %15 ], [ %31, %26 ]
  br i1 %33, label %34, label %227

34:                                               ; preds = %32
  %35 = load %struct.cam_devq*, %struct.cam_devq** %2, align 8
  %36 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %35, i32 0, i32 1
  %37 = load i32, i32* @CAMQ_HEAD, align 4
  %38 = call i64 @camq_remove(%struct.TYPE_14__* %36, i32 %37)
  %39 = inttoptr i64 %38 to %struct.cam_ed*
  store %struct.cam_ed* %39, %struct.cam_ed** %4, align 8
  %40 = load i32, i32* @CAM_DEBUG_XPT, align 4
  %41 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %42 = bitcast %struct.cam_ed* %41 to i8*
  %43 = call i32 @CAM_DEBUG_PRINT(i32 %40, i8* %42)
  %44 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %45 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %44, i32 0, i32 3
  %46 = load i32, i32* @CAMQ_HEAD, align 4
  %47 = call %union.ccb* @cam_ccbq_peek_ccb(i32* %45, i32 %46)
  store %union.ccb* %47, %union.ccb** %5, align 8
  %48 = load %union.ccb*, %union.ccb** %5, align 8
  %49 = icmp eq %union.ccb* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %15

52:                                               ; preds = %34
  %53 = load %union.ccb*, %union.ccb** %5, align 8
  %54 = bitcast %union.ccb* %53 to %struct.TYPE_11__*
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CAM_HIGH_POWER, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %52
  %61 = call i32 @mtx_lock(%struct.mtx* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xsoftc, i32 0, i32 1))
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xsoftc, i32 0, i32 0), align 8
  %63 = icmp sle i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %66 = call i32 @xpt_freeze_devq_device(%struct.cam_ed* %65, i32 1)
  %67 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %68 = load i32, i32* @highpowerq_entry, align 4
  %69 = call i32 @STAILQ_INSERT_TAIL(i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xsoftc, i32 0, i32 2), %struct.cam_ed* %67, i32 %68)
  %70 = call i32 @mtx_unlock(%struct.mtx* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xsoftc, i32 0, i32 1))
  br label %15

71:                                               ; preds = %60
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xsoftc, i32 0, i32 0), align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xsoftc, i32 0, i32 0), align 8
  br label %74

74:                                               ; preds = %71
  %75 = call i32 @mtx_unlock(%struct.mtx* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xsoftc, i32 0, i32 1))
  br label %76

76:                                               ; preds = %74, %52
  %77 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %78 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %77, i32 0, i32 3
  %79 = load %union.ccb*, %union.ccb** %5, align 8
  %80 = call i32 @cam_ccbq_remove_ccb(i32* %78, %union.ccb* %79)
  %81 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %82 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %81, i32 0, i32 3
  %83 = load %union.ccb*, %union.ccb** %5, align 8
  %84 = call i32 @cam_ccbq_send_ccb(i32* %82, %union.ccb* %83)
  %85 = load %struct.cam_devq*, %struct.cam_devq** %2, align 8
  %86 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %86, align 8
  %89 = load %struct.cam_devq*, %struct.cam_devq** %2, align 8
  %90 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.cam_devq*, %struct.cam_devq** %2, align 8
  %94 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %95 = call i32 @xpt_schedule_devq(%struct.cam_devq* %93, %struct.cam_ed* %94)
  %96 = load %struct.cam_devq*, %struct.cam_devq** %2, align 8
  %97 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %96, i32 0, i32 2
  %98 = call i32 @mtx_unlock(%struct.mtx* %97)
  %99 = load %union.ccb*, %union.ccb** %5, align 8
  %100 = bitcast %union.ccb* %99 to %struct.TYPE_11__*
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @CAM_DEV_QFREEZE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %76
  %107 = load %union.ccb*, %union.ccb** %5, align 8
  %108 = bitcast %union.ccb* %107 to %struct.TYPE_11__*
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = call i32 @xpt_freeze_devq(%struct.TYPE_13__* %110, i32 1)
  br label %112

112:                                              ; preds = %106, %76
  %113 = load %union.ccb*, %union.ccb** %5, align 8
  %114 = bitcast %union.ccb* %113 to %struct.TYPE_11__*
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @XPT_SCSI_IO, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %149

119:                                              ; preds = %112
  %120 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %121 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SID_CmdQue, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %119
  %127 = load %union.ccb*, %union.ccb** %5, align 8
  %128 = bitcast %union.ccb* %127 to %struct.TYPE_8__*
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CAM_TAG_ACTION_NONE, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load i32, i32* @CAM_TAG_ACTION_VALID, align 4
  %135 = load %union.ccb*, %union.ccb** %5, align 8
  %136 = bitcast %union.ccb* %135 to %struct.TYPE_11__*
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %134
  store i32 %139, i32* %137, align 8
  br label %148

140:                                              ; preds = %126, %119
  %141 = load i32, i32* @CAM_TAG_ACTION_VALID, align 4
  %142 = xor i32 %141, -1
  %143 = load %union.ccb*, %union.ccb** %5, align 8
  %144 = bitcast %union.ccb* %143 to %struct.TYPE_11__*
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, %142
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %140, %133
  br label %149

149:                                              ; preds = %148, %112
  %150 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %151 = load %union.ccb*, %union.ccb** %5, align 8
  %152 = bitcast %union.ccb* %151 to %struct.TYPE_11__*
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load %struct.cam_ed*, %struct.cam_ed** %155, align 8
  %157 = icmp eq %struct.cam_ed* %150, %156
  %158 = zext i1 %157 to i32
  %159 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %160 = load %union.ccb*, %union.ccb** %5, align 8
  %161 = bitcast %union.ccb* %160 to %struct.TYPE_11__*
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load %struct.cam_ed*, %struct.cam_ed** %164, align 8
  %166 = bitcast %struct.cam_ed* %165 to i8*
  %167 = call i32 @KASSERT(i32 %158, i8* %166)
  %168 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %169 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call %struct.xpt_proto* @xpt_proto_find(i32 %170)
  store %struct.xpt_proto* %171, %struct.xpt_proto** %7, align 8
  %172 = load %struct.xpt_proto*, %struct.xpt_proto** %7, align 8
  %173 = icmp ne %struct.xpt_proto* %172, null
  br i1 %173, label %174, label %189

174:                                              ; preds = %149
  %175 = load %struct.xpt_proto*, %struct.xpt_proto** %7, align 8
  %176 = getelementptr inbounds %struct.xpt_proto, %struct.xpt_proto* %175, i32 0, i32 0
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32 (%union.ccb*)*, i32 (%union.ccb*)** %178, align 8
  %180 = icmp ne i32 (%union.ccb*)* %179, null
  br i1 %180, label %181, label %189

181:                                              ; preds = %174
  %182 = load %struct.xpt_proto*, %struct.xpt_proto** %7, align 8
  %183 = getelementptr inbounds %struct.xpt_proto, %struct.xpt_proto* %182, i32 0, i32 0
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32 (%union.ccb*)*, i32 (%union.ccb*)** %185, align 8
  %187 = load %union.ccb*, %union.ccb** %5, align 8
  %188 = call i32 %186(%union.ccb* %187)
  br label %189

189:                                              ; preds = %181, %174, %149
  %190 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %191 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %190, i32 0, i32 1
  %192 = load %struct.cam_sim*, %struct.cam_sim** %191, align 8
  store %struct.cam_sim* %192, %struct.cam_sim** %6, align 8
  %193 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %194 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %193, i32 0, i32 1
  %195 = load %struct.mtx*, %struct.mtx** %194, align 8
  store %struct.mtx* %195, %struct.mtx** %3, align 8
  %196 = load %struct.mtx*, %struct.mtx** %3, align 8
  %197 = icmp ne %struct.mtx* %196, null
  br i1 %197, label %198, label %205

198:                                              ; preds = %189
  %199 = load %struct.mtx*, %struct.mtx** %3, align 8
  %200 = call i32 @mtx_owned(%struct.mtx* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = load %struct.mtx*, %struct.mtx** %3, align 8
  %204 = call i32 @mtx_lock(%struct.mtx* %203)
  br label %206

205:                                              ; preds = %198, %189
  store %struct.mtx* null, %struct.mtx** %3, align 8
  br label %206

206:                                              ; preds = %205, %202
  %207 = call i32 (...) @cam_iosched_now()
  %208 = load %union.ccb*, %union.ccb** %5, align 8
  %209 = bitcast %union.ccb* %208 to %struct.TYPE_11__*
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  store i32 %207, i32* %211, align 8
  %212 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %213 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %212, i32 0, i32 0
  %214 = load i32 (%struct.cam_sim*, %union.ccb*)*, i32 (%struct.cam_sim*, %union.ccb*)** %213, align 8
  %215 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %216 = load %union.ccb*, %union.ccb** %5, align 8
  %217 = call i32 %214(%struct.cam_sim* %215, %union.ccb* %216)
  %218 = load %struct.mtx*, %struct.mtx** %3, align 8
  %219 = icmp ne %struct.mtx* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %206
  %221 = load %struct.mtx*, %struct.mtx** %3, align 8
  %222 = call i32 @mtx_unlock(%struct.mtx* %221)
  br label %223

223:                                              ; preds = %220, %206
  %224 = load %struct.cam_devq*, %struct.cam_devq** %2, align 8
  %225 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %224, i32 0, i32 2
  %226 = call i32 @mtx_lock(%struct.mtx* %225)
  br label %15

227:                                              ; preds = %32
  %228 = load %struct.cam_devq*, %struct.cam_devq** %2, align 8
  %229 = getelementptr inbounds %struct.cam_devq, %struct.cam_devq* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, -1
  store i32 %232, i32* %230, align 8
  ret void
}

declare dso_local i32 @CAM_DEBUG_PRINT(i32, i8*) #1

declare dso_local i64 @camq_remove(%struct.TYPE_14__*, i32) #1

declare dso_local %union.ccb* @cam_ccbq_peek_ccb(i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @xpt_freeze_devq_device(%struct.cam_ed*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.cam_ed*, i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @cam_ccbq_remove_ccb(i32*, %union.ccb*) #1

declare dso_local i32 @cam_ccbq_send_ccb(i32*, %union.ccb*) #1

declare dso_local i32 @xpt_schedule_devq(%struct.cam_devq*, %struct.cam_ed*) #1

declare dso_local i32 @xpt_freeze_devq(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.xpt_proto* @xpt_proto_find(i32) #1

declare dso_local i32 @mtx_owned(%struct.mtx*) #1

declare dso_local i32 @cam_iosched_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
