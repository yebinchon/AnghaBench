; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_passthrough_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_passthrough_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.aac_cam* }
%struct.aac_cam = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.aac_softc* }
%struct.aac_softc = type { i32, i32, i32 }
%struct.aac_command = type { i32, i32, i32, %union.ccb*, i32, i64, i32*, i32*, %struct.aac_fib* }
%struct.aac_fib = type { %struct.TYPE_14__, i32* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.aac_srb = type { i64, i32, i32, i32, i64, i64, i32, i32, i32*, i32, i32 }
%struct.aac_event = type { i32, %union.ccb*, i32 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_RESRC_UNAVAIL = common dso_local global i32 0, align 4
@M_AACRAIDCAM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Warning, out of memory for event\0A\00", align 1
@aac_cam_event = common dso_local global i32 0, align 4
@AAC_EVENT_CMFREE = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@AAC_CMD_DATAIN = common dso_local global i32 0, align 4
@AAC_CMD_DATAOUT = common dso_local global i32 0, align 4
@AAC_SRB_FUNC_EXECUTE_SCSI = common dso_local global i32 0, align 4
@AAC_SRB_FLAGS_UNSPECIFIED_DIRECTION = common dso_local global i32 0, align 4
@AAC_SRB_FLAGS_DATA_IN = common dso_local global i32 0, align 4
@AAC_SRB_FLAGS_DATA_OUT = common dso_local global i32 0, align 4
@AAC_SRB_FLAGS_NO_DATA_XFER = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@AAC_FLAGS_SG_64BIT = common dso_local global i32 0, align 4
@ScsiPortCommandU64 = common dso_local global i32 0, align 4
@ScsiPortCommand = common dso_local global i32 0, align 4
@aac_cam_complete = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@AAC_FIBSTATE_HOSTOWNED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_INITIALISED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_FROMHOST = common dso_local global i32 0, align 4
@AAC_FIBSTATE_REXPECTED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_NORM = common dso_local global i32 0, align 4
@AAC_FIBSTATE_ASYNC = common dso_local global i32 0, align 4
@AAC_FIBSTATE_FAST_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @aac_passthrough_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_passthrough_command(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.aac_cam*, align 8
  %6 = alloca %struct.aac_softc*, align 8
  %7 = alloca %struct.aac_command*, align 8
  %8 = alloca %struct.aac_fib*, align 8
  %9 = alloca %struct.aac_srb*, align 8
  %10 = alloca %struct.aac_event*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %11 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %12 = call i64 @cam_sim_softc(%struct.cam_sim* %11)
  %13 = inttoptr i64 %12 to %struct.aac_cam*
  store %struct.aac_cam* %13, %struct.aac_cam** %5, align 8
  %14 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %15 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.aac_softc*, %struct.aac_softc** %17, align 8
  store %struct.aac_softc* %18, %struct.aac_softc** %6, align 8
  %19 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %20 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %19, i32 0, i32 2
  %21 = load i32, i32* @MA_OWNED, align 4
  %22 = call i32 @mtx_assert(i32* %20, i32 %21)
  %23 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %24 = call i64 @aacraid_alloc_command(%struct.aac_softc* %23, %struct.aac_command** %7)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %2
  %27 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %28 = call i32 @xpt_freeze_simq(%struct.cam_sim* %27, i32 1)
  %29 = load i32, i32* @CAM_RESRC_UNAVAIL, align 4
  %30 = load %union.ccb*, %union.ccb** %4, align 8
  %31 = bitcast %union.ccb* %30 to %struct.TYPE_13__*
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 5
  store i32 %29, i32* %32, align 8
  %33 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %34 = load %union.ccb*, %union.ccb** %4, align 8
  %35 = bitcast %union.ccb* %34 to %struct.TYPE_13__*
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store %struct.aac_cam* %33, %struct.aac_cam** %40, align 8
  %41 = load i32, i32* @M_AACRAIDCAM, align 4
  %42 = load i32, i32* @M_NOWAIT, align 4
  %43 = load i32, i32* @M_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call %struct.aac_event* @malloc(i32 24, i32 %41, i32 %44)
  store %struct.aac_event* %45, %struct.aac_event** %10, align 8
  %46 = load %struct.aac_event*, %struct.aac_event** %10, align 8
  %47 = icmp eq %struct.aac_event* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %26
  %49 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %50 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %305

53:                                               ; preds = %26
  %54 = load i32, i32* @aac_cam_event, align 4
  %55 = load %struct.aac_event*, %struct.aac_event** %10, align 8
  %56 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %union.ccb*, %union.ccb** %4, align 8
  %58 = load %struct.aac_event*, %struct.aac_event** %10, align 8
  %59 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %58, i32 0, i32 1
  store %union.ccb* %57, %union.ccb** %59, align 8
  %60 = load i32, i32* @AAC_EVENT_CMFREE, align 4
  %61 = load %struct.aac_event*, %struct.aac_event** %10, align 8
  %62 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %64 = load %struct.aac_event*, %struct.aac_event** %10, align 8
  %65 = call i32 @aacraid_add_event(%struct.aac_softc* %63, %struct.aac_event* %64)
  br label %305

66:                                               ; preds = %2
  %67 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %68 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %67, i32 0, i32 8
  %69 = load %struct.aac_fib*, %struct.aac_fib** %68, align 8
  store %struct.aac_fib* %69, %struct.aac_fib** %8, align 8
  %70 = load %union.ccb*, %union.ccb** %4, align 8
  %71 = bitcast %union.ccb* %70 to %struct.TYPE_13__*
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CAM_DIR_MASK, align 4
  %75 = and i32 %73, %74
  switch i32 %75, label %89 [
    i32 130, label %76
    i32 128, label %82
    i32 129, label %88
  ]

76:                                               ; preds = %66
  %77 = load i32, i32* @AAC_CMD_DATAIN, align 4
  %78 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %79 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %97

82:                                               ; preds = %66
  %83 = load i32, i32* @AAC_CMD_DATAOUT, align 4
  %84 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %85 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %97

88:                                               ; preds = %66
  br label %97

89:                                               ; preds = %66
  %90 = load i32, i32* @AAC_CMD_DATAIN, align 4
  %91 = load i32, i32* @AAC_CMD_DATAOUT, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %94 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %89, %88, %82, %76
  %98 = load %struct.aac_fib*, %struct.aac_fib** %8, align 8
  %99 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = bitcast i32* %101 to %struct.aac_srb*
  store %struct.aac_srb* %102, %struct.aac_srb** %9, align 8
  %103 = load i32, i32* @AAC_SRB_FUNC_EXECUTE_SCSI, align 4
  %104 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %105 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 4
  %106 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %107 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @AAC_CMD_DATAIN, align 4
  %110 = load i32, i32* @AAC_CMD_DATAOUT, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %97
  %115 = load i32, i32* @AAC_SRB_FLAGS_UNSPECIFIED_DIRECTION, align 4
  %116 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %117 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %116, i32 0, i32 9
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %114, %97
  %119 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %120 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @AAC_CMD_DATAIN, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i32, i32* @AAC_SRB_FLAGS_DATA_IN, align 4
  %127 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %128 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %127, i32 0, i32 9
  store i32 %126, i32* %128, align 8
  br label %145

129:                                              ; preds = %118
  %130 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %131 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @AAC_CMD_DATAOUT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load i32, i32* @AAC_SRB_FLAGS_DATA_OUT, align 4
  %138 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %139 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %138, i32 0, i32 9
  store i32 %137, i32* %139, align 8
  br label %144

140:                                              ; preds = %129
  %141 = load i32, i32* @AAC_SRB_FLAGS_NO_DATA_XFER, align 4
  %142 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %143 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %142, i32 0, i32 9
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %140, %136
  br label %145

145:                                              ; preds = %144, %125
  %146 = load %union.ccb*, %union.ccb** %4, align 8
  %147 = bitcast %union.ccb* %146 to %struct.TYPE_11__*
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %151 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %150, i32 0, i32 7
  store i32 %149, i32* %151, align 4
  %152 = load %union.ccb*, %union.ccb** %4, align 8
  %153 = bitcast %union.ccb* %152 to %struct.TYPE_13__*
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @CAM_CDB_POINTER, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %145
  %160 = load %union.ccb*, %union.ccb** %4, align 8
  %161 = bitcast %union.ccb* %160 to %struct.TYPE_11__*
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %166 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %165, i32 0, i32 8
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %170 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @bcopy(i32 %164, i32* %168, i32 %171)
  br label %187

173:                                              ; preds = %145
  %174 = load %union.ccb*, %union.ccb** %4, align 8
  %175 = bitcast %union.ccb* %174 to %struct.TYPE_11__*
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %180 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %179, i32 0, i32 8
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %184 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @bcopy(i32 %178, i32* %182, i32 %185)
  br label %187

187:                                              ; preds = %173, %159
  %188 = load %struct.aac_softc*, %struct.aac_softc** %6, align 8
  %189 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @AAC_FLAGS_SG_64BIT, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = load i32, i32* @ScsiPortCommandU64, align 4
  br label %198

196:                                              ; preds = %187
  %197 = load i32, i32* @ScsiPortCommand, align 4
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi i32 [ %195, %194 ], [ %197, %196 ]
  %200 = load %struct.aac_fib*, %struct.aac_fib** %8, align 8
  %201 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  store i32 %199, i32* %202, align 8
  %203 = load %struct.aac_fib*, %struct.aac_fib** %8, align 8
  %204 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  store i32 68, i32* %205, align 8
  %206 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %207 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %206, i32 0, i32 6
  %208 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %209 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %208, i32 0, i32 7
  store i32* %207, i32** %209, align 8
  %210 = load %union.ccb*, %union.ccb** %4, align 8
  %211 = bitcast %union.ccb* %210 to %struct.TYPE_13__*
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @CAM_DIR_MASK, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 129
  br i1 %216, label %217, label %238

217:                                              ; preds = %198
  %218 = load %union.ccb*, %union.ccb** %4, align 8
  %219 = bitcast %union.ccb* %218 to %struct.TYPE_11__*
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = inttoptr i64 %221 to i8*
  %223 = bitcast i8* %222 to i32*
  %224 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %225 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %224, i32 0, i32 6
  store i32* %223, i32** %225, align 8
  %226 = load %union.ccb*, %union.ccb** %4, align 8
  %227 = bitcast %union.ccb* %226 to %struct.TYPE_11__*
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %231 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %230, i32 0, i32 5
  store i64 %229, i64* %231, align 8
  %232 = load %union.ccb*, %union.ccb** %4, align 8
  %233 = bitcast %union.ccb* %232 to %struct.TYPE_11__*
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %237 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %236, i32 0, i32 5
  store i64 %235, i64* %237, align 8
  br label %245

238:                                              ; preds = %198
  %239 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %240 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %239, i32 0, i32 6
  store i32* null, i32** %240, align 8
  %241 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %242 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %241, i32 0, i32 5
  store i64 0, i64* %242, align 8
  %243 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %244 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %243, i32 0, i32 5
  store i64 0, i64* %244, align 8
  br label %245

245:                                              ; preds = %238, %217
  %246 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %247 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %246, i32 0, i32 0
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = sub nsw i64 %250, 1
  %252 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %253 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %252, i32 0, i32 4
  store i64 %251, i64* %253, align 8
  %254 = load %union.ccb*, %union.ccb** %4, align 8
  %255 = bitcast %union.ccb* %254 to %struct.TYPE_13__*
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %259 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 8
  %260 = load %union.ccb*, %union.ccb** %4, align 8
  %261 = bitcast %union.ccb* %260 to %struct.TYPE_13__*
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %265 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 4
  %266 = load %union.ccb*, %union.ccb** %4, align 8
  %267 = bitcast %union.ccb* %266 to %struct.TYPE_13__*
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %271 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 8
  %272 = load %struct.aac_srb*, %struct.aac_srb** %9, align 8
  %273 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %272, i32 0, i32 0
  store i64 0, i64* %273, align 8
  %274 = load i32, i32* @aac_cam_complete, align 4
  %275 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %276 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %275, i32 0, i32 4
  store i32 %274, i32* %276, align 8
  %277 = load %union.ccb*, %union.ccb** %4, align 8
  %278 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %279 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %278, i32 0, i32 3
  store %union.ccb* %277, %union.ccb** %279, align 8
  %280 = load i32, i32* @time_uptime, align 4
  %281 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %282 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %281, i32 0, i32 2
  store i32 %280, i32* %282, align 8
  %283 = load i32, i32* @AAC_FIBSTATE_HOSTOWNED, align 4
  %284 = load i32, i32* @AAC_FIBSTATE_INITIALISED, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @AAC_FIBSTATE_FROMHOST, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @AAC_FIBSTATE_REXPECTED, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* @AAC_FIBSTATE_NORM, align 4
  %291 = or i32 %289, %290
  %292 = load i32, i32* @AAC_FIBSTATE_ASYNC, align 4
  %293 = or i32 %291, %292
  %294 = load i32, i32* @AAC_FIBSTATE_FAST_RESPONSE, align 4
  %295 = or i32 %293, %294
  %296 = load %struct.aac_fib*, %struct.aac_fib** %8, align 8
  %297 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 1
  store i32 %295, i32* %298, align 4
  %299 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %300 = call i32 @aac_enqueue_ready(%struct.aac_command* %299)
  %301 = load %struct.aac_command*, %struct.aac_command** %7, align 8
  %302 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @aacraid_startio(i32 %303)
  br label %305

305:                                              ; preds = %245, %53, %48
  ret void
}

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @aacraid_alloc_command(%struct.aac_softc*, %struct.aac_command**) #1

declare dso_local i32 @xpt_freeze_simq(%struct.cam_sim*, i32) #1

declare dso_local %struct.aac_event* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @aacraid_add_event(%struct.aac_softc*, %struct.aac_event*) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @aac_enqueue_ready(%struct.aac_command*) #1

declare dso_local i32 @aacraid_startio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
