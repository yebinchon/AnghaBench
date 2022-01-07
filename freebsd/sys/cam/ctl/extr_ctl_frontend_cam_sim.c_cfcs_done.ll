; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_cam_sim.c_cfcs_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend_cam_sim.c_cfcs_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i64 }
%union.ccb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %union.ccb* }
%struct.TYPE_10__ = type { i64, i32, i32 }

@CTL_PRIV_FRONTEND = common dso_local global i64 0, align 8
@CTL_STATUS_MASK = common dso_local global i32 0, align 4
@CTL_STATUS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid CTL status %#x\00", align 1
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@cfcs_max_sense = common dso_local global i64 0, align 8
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @cfcs_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfcs_done(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %union.ccb*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %4 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %5 = bitcast %union.ctl_io* %4 to %struct.TYPE_7__*
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = load i64, i64* @CTL_PRIV_FRONTEND, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %union.ccb*, %union.ccb** %10, align 8
  store %union.ccb* %11, %union.ccb** %3, align 8
  %12 = load %union.ccb*, %union.ccb** %3, align 8
  %13 = icmp eq %union.ccb* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %16 = call i32 @ctl_free_io(%union.ctl_io* %15)
  br label %204

17:                                               ; preds = %1
  %18 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %19 = bitcast %union.ctl_io* %18 to %struct.TYPE_7__*
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CTL_STATUS_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @CTL_STATUS_NONE, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %28 = bitcast %union.ctl_io* %27 to %struct.TYPE_7__*
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %26, i8* %32)
  %34 = load %union.ccb*, %union.ccb** %3, align 8
  %35 = bitcast %union.ccb* %34 to %struct.TYPE_10__*
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XPT_SCSI_IO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %17
  %41 = load %union.ccb*, %union.ccb** %3, align 8
  %42 = bitcast %union.ccb* %41 to %struct.TYPE_9__*
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %46 = bitcast %union.ctl_io* %45 to %struct.TYPE_8__*
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %44, %48
  %50 = load %union.ccb*, %union.ccb** %3, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_9__*
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 5
  store i64 %49, i64* %52, align 8
  br label %53

53:                                               ; preds = %40, %17
  %54 = load i32, i32* @CAM_STATUS_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load %union.ccb*, %union.ccb** %3, align 8
  %57 = bitcast %union.ccb* %56 to %struct.TYPE_10__*
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %55
  store i32 %60, i32* %58, align 8
  %61 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %62 = bitcast %union.ctl_io* %61 to %struct.TYPE_7__*
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CTL_STATUS_MASK, align 4
  %66 = and i32 %64, %65
  switch i32 %66, label %163 [
    i32 128, label %67
    i32 129, label %74
    i32 131, label %155
    i32 130, label %162
  ]

67:                                               ; preds = %53
  %68 = load i32, i32* @CAM_REQ_CMP, align 4
  %69 = load %union.ccb*, %union.ccb** %3, align 8
  %70 = bitcast %union.ccb* %69 to %struct.TYPE_10__*
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 8
  br label %170

74:                                               ; preds = %53
  %75 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %76 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %77 = or i32 %75, %76
  %78 = load %union.ccb*, %union.ccb** %3, align 8
  %79 = bitcast %union.ccb* %78 to %struct.TYPE_10__*
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 8
  %83 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %84 = bitcast %union.ctl_io* %83 to %struct.TYPE_8__*
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %union.ccb*, %union.ccb** %3, align 8
  %88 = bitcast %union.ccb* %87 to %struct.TYPE_9__*
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 4
  %90 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %91 = bitcast %union.ctl_io* %90 to %struct.TYPE_8__*
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load %union.ccb*, %union.ccb** %3, align 8
  %94 = bitcast %union.ccb* %93 to %struct.TYPE_9__*
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %97 = bitcast %union.ctl_io* %96 to %struct.TYPE_8__*
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %union.ccb*, %union.ccb** %3, align 8
  %101 = bitcast %union.ccb* %100 to %struct.TYPE_9__*
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @min(i64 %99, i64 %103)
  %105 = call i32 @bcopy(i32* %92, i32* %95, i32 %104)
  %106 = load %union.ccb*, %union.ccb** %3, align 8
  %107 = bitcast %union.ccb* %106 to %struct.TYPE_9__*
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %111 = bitcast %union.ctl_io* %110 to %struct.TYPE_8__*
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %109, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %74
  %116 = load %union.ccb*, %union.ccb** %3, align 8
  %117 = bitcast %union.ccb* %116 to %struct.TYPE_9__*
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %121 = bitcast %union.ctl_io* %120 to %struct.TYPE_8__*
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %119, %123
  %125 = load %union.ccb*, %union.ccb** %3, align 8
  %126 = bitcast %union.ccb* %125 to %struct.TYPE_9__*
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  store i64 %124, i64* %127, align 8
  br label %132

128:                                              ; preds = %74
  %129 = load %union.ccb*, %union.ccb** %3, align 8
  %130 = bitcast %union.ccb* %129 to %struct.TYPE_9__*
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  br label %132

132:                                              ; preds = %128, %115
  %133 = load %union.ccb*, %union.ccb** %3, align 8
  %134 = bitcast %union.ccb* %133 to %struct.TYPE_9__*
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %union.ccb*, %union.ccb** %3, align 8
  %138 = bitcast %union.ccb* %137 to %struct.TYPE_9__*
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %136, %140
  %142 = load i64, i64* @cfcs_max_sense, align 8
  %143 = icmp sgt i64 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %132
  %145 = load %union.ccb*, %union.ccb** %3, align 8
  %146 = bitcast %union.ccb* %145 to %struct.TYPE_9__*
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @cfcs_max_sense, align 8
  %150 = sub nsw i64 %148, %149
  %151 = load %union.ccb*, %union.ccb** %3, align 8
  %152 = bitcast %union.ccb* %151 to %struct.TYPE_9__*
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store i64 %150, i64* %153, align 8
  br label %154

154:                                              ; preds = %144, %132
  br label %170

155:                                              ; preds = %53
  %156 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %157 = load %union.ccb*, %union.ccb** %3, align 8
  %158 = bitcast %union.ccb* %157 to %struct.TYPE_10__*
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %156
  store i32 %161, i32* %159, align 8
  br label %170

162:                                              ; preds = %53
  br label %163

163:                                              ; preds = %53, %162
  %164 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %165 = load %union.ccb*, %union.ccb** %3, align 8
  %166 = bitcast %union.ccb* %165 to %struct.TYPE_10__*
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %164
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %163, %155, %154, %67
  %171 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %172 = call i32 @ctl_free_io(%union.ctl_io* %171)
  %173 = load %union.ccb*, %union.ccb** %3, align 8
  %174 = bitcast %union.ccb* %173 to %struct.TYPE_10__*
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @CAM_STATUS_MASK, align 4
  %178 = and i32 %176, %177
  %179 = load i32, i32* @CAM_REQ_CMP, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %201

181:                                              ; preds = %170
  %182 = load %union.ccb*, %union.ccb** %3, align 8
  %183 = bitcast %union.ccb* %182 to %struct.TYPE_10__*
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %187 = and i32 %185, %186
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %181
  %190 = load %union.ccb*, %union.ccb** %3, align 8
  %191 = bitcast %union.ccb* %190 to %struct.TYPE_10__*
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @xpt_freeze_devq(i32 %193, i32 1)
  %195 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %196 = load %union.ccb*, %union.ccb** %3, align 8
  %197 = bitcast %union.ccb* %196 to %struct.TYPE_10__*
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %195
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %189, %181, %170
  %202 = load %union.ccb*, %union.ccb** %3, align 8
  %203 = call i32 @xpt_done(%union.ccb* %202)
  br label %204

204:                                              ; preds = %201, %14
  ret void
}

declare dso_local i32 @ctl_free_io(%union.ctl_io*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
