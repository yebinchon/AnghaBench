; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_targ_bh.c_targbhenlun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_targ_bh.c_targbhenlun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.cam_periph = type { i32, i64 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i8*, i32, i32* }
%struct.targbh_softc = type { i32, i32, %struct.ccb_accept_tio* }
%struct.ccb_accept_tio = type { %struct.TYPE_6__ }
%struct.ccb_immediate_notify = type { %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.targbh_cmd_desc = type { %struct.ccb_accept_tio* }

@TARGBH_FLAG_LUN_ENABLED = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_EN_LUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"targbhenlun - Enable Lun Rejected with status 0x%x\0A\00", align 1
@MAX_ACCEPT = common dso_local global i32 0, align 4
@M_SCSIBH = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@CAM_RESRC_UNAVAIL = common dso_local global i64 0, align 8
@XPT_ACCEPT_TARGET_IO = common dso_local global i32 0, align 4
@targbhdone = common dso_local global i8* null, align 8
@CAM_REQ_INPROG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"targbhenlun - Could not allocate accept tio CCBs: status = 0x%x\0A\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i64 0, align 8
@XPT_IMMEDIATE_NOTIFY = common dso_local global i32 0, align 4
@periph_links = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"targbhenlun - Could not allocate immediate notify CCBs: status = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cam_periph*)* @targbhenlun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @targbhenlun(%struct.cam_periph* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb, align 8
  %5 = alloca %struct.targbh_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccb_accept_tio*, align 8
  %9 = alloca %struct.ccb_immediate_notify*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  %10 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %11 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.targbh_softc*
  store %struct.targbh_softc* %13, %struct.targbh_softc** %5, align 8
  %14 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %15 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TARGBH_FLAG_LUN_ENABLED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* @CAM_REQ_CMP, align 8
  store i64 %21, i64* %2, align 8
  br label %206

22:                                               ; preds = %1
  %23 = bitcast %union.ccb* %4 to %struct.TYPE_6__*
  %24 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %25 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %28 = call i32 @xpt_setup_ccb(%struct.TYPE_6__* %23, i32 %26, i32 %27)
  %29 = load i32, i32* @XPT_EN_LUN, align 4
  %30 = bitcast %union.ccb* %4 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = bitcast %union.ccb* %4 to %struct.TYPE_5__*
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = bitcast %union.ccb* %4 to %struct.TYPE_5__*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = bitcast %union.ccb* %4 to %struct.TYPE_5__*
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = call i32 @xpt_action(%union.ccb* %4)
  %39 = bitcast %union.ccb* %4 to %struct.TYPE_6__*
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @CAM_REQ_CMP, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %22
  %46 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %47 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @xpt_print(i32 %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %2, align 8
  br label %206

52:                                               ; preds = %22
  %53 = load i32, i32* @TARGBH_FLAG_LUN_ENABLED, align 4
  %54 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %55 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %126, %52
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MAX_ACCEPT, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %129

62:                                               ; preds = %58
  %63 = load i32, i32* @M_SCSIBH, align 4
  %64 = load i32, i32* @M_NOWAIT, align 4
  %65 = call i64 @malloc(i32 32, i32 %63, i32 %64)
  %66 = inttoptr i64 %65 to %struct.ccb_accept_tio*
  store %struct.ccb_accept_tio* %66, %struct.ccb_accept_tio** %8, align 8
  %67 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %68 = icmp eq %struct.ccb_accept_tio* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i64, i64* @CAM_RESRC_UNAVAIL, align 8
  store i64 %70, i64* %6, align 8
  br label %129

71:                                               ; preds = %62
  %72 = call i32* (...) @targbhallocdescr()
  %73 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %74 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  store i32* %72, i32** %75, align 8
  %76 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %77 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %83 = load i32, i32* @M_SCSIBH, align 4
  %84 = call i32 @free(%struct.ccb_accept_tio* %82, i32 %83)
  %85 = load i64, i64* @CAM_RESRC_UNAVAIL, align 8
  store i64 %85, i64* %6, align 8
  br label %129

86:                                               ; preds = %71
  %87 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %88 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %87, i32 0, i32 0
  %89 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %90 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %93 = call i32 @xpt_setup_ccb(%struct.TYPE_6__* %88, i32 %91, i32 %92)
  %94 = load i32, i32* @XPT_ACCEPT_TARGET_IO, align 4
  %95 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %96 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load i8*, i8** @targbhdone, align 8
  %99 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %100 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i8* %98, i8** %101, align 8
  %102 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %103 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %102, i32 0, i32 2
  %104 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %103, align 8
  %105 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %106 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = bitcast i32* %108 to %struct.targbh_cmd_desc*
  %110 = getelementptr inbounds %struct.targbh_cmd_desc, %struct.targbh_cmd_desc* %109, i32 0, i32 0
  store %struct.ccb_accept_tio* %104, %struct.ccb_accept_tio** %110, align 8
  %111 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %112 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %113 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %112, i32 0, i32 2
  store %struct.ccb_accept_tio* %111, %struct.ccb_accept_tio** %113, align 8
  %114 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %115 = bitcast %struct.ccb_accept_tio* %114 to %union.ccb*
  %116 = call i32 @xpt_action(%union.ccb* %115)
  %117 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %8, align 8
  %118 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %6, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i64, i64* @CAM_REQ_INPROG, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %86
  br label %129

125:                                              ; preds = %86
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %58

129:                                              ; preds = %124, %81, %69, %58
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %134 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @xpt_print(i32 %135, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %136)
  %138 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %139 = call i32 @targbhdislun(%struct.cam_periph* %138)
  %140 = load i64, i64* @CAM_REQ_CMP_ERR, align 8
  store i64 %140, i64* %2, align 8
  br label %206

141:                                              ; preds = %129
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %189, %141
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @MAX_ACCEPT, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %192

146:                                              ; preds = %142
  %147 = load i32, i32* @M_SCSIBH, align 4
  %148 = load i32, i32* @M_NOWAIT, align 4
  %149 = call i64 @malloc(i32 32, i32 %147, i32 %148)
  %150 = inttoptr i64 %149 to %struct.ccb_immediate_notify*
  store %struct.ccb_immediate_notify* %150, %struct.ccb_immediate_notify** %9, align 8
  %151 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %9, align 8
  %152 = icmp eq %struct.ccb_immediate_notify* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i64, i64* @CAM_RESRC_UNAVAIL, align 8
  store i64 %154, i64* %6, align 8
  br label %192

155:                                              ; preds = %146
  %156 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %9, align 8
  %157 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %156, i32 0, i32 0
  %158 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %159 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %162 = call i32 @xpt_setup_ccb(%struct.TYPE_6__* %157, i32 %160, i32 %161)
  %163 = load i32, i32* @XPT_IMMEDIATE_NOTIFY, align 4
  %164 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %9, align 8
  %165 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  store i32 %163, i32* %166, align 8
  %167 = load i8*, i8** @targbhdone, align 8
  %168 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %9, align 8
  %169 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  store i8* %167, i8** %170, align 8
  %171 = load %struct.targbh_softc*, %struct.targbh_softc** %5, align 8
  %172 = getelementptr inbounds %struct.targbh_softc, %struct.targbh_softc* %171, i32 0, i32 1
  %173 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %9, align 8
  %174 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %173, i32 0, i32 0
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @periph_links, i32 0, i32 0), align 4
  %176 = call i32 @SLIST_INSERT_HEAD(i32* %172, %struct.TYPE_6__* %174, i32 %175)
  %177 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %9, align 8
  %178 = bitcast %struct.ccb_immediate_notify* %177 to %union.ccb*
  %179 = call i32 @xpt_action(%union.ccb* %178)
  %180 = load %struct.ccb_immediate_notify*, %struct.ccb_immediate_notify** %9, align 8
  %181 = getelementptr inbounds %struct.ccb_immediate_notify, %struct.ccb_immediate_notify* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %6, align 8
  %184 = load i64, i64* %6, align 8
  %185 = load i64, i64* @CAM_REQ_INPROG, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %155
  br label %192

188:                                              ; preds = %155
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %142

192:                                              ; preds = %187, %153, %142
  %193 = load i32, i32* %7, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %197 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i64, i64* %6, align 8
  %200 = call i32 @xpt_print(i32 %198, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %199)
  %201 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %202 = call i32 @targbhdislun(%struct.cam_periph* %201)
  %203 = load i64, i64* @CAM_REQ_CMP_ERR, align 8
  store i64 %203, i64* %2, align 8
  br label %206

204:                                              ; preds = %192
  %205 = load i64, i64* @CAM_REQ_CMP, align 8
  store i64 %205, i64* %2, align 8
  br label %206

206:                                              ; preds = %204, %195, %132, %45, %20
  %207 = load i64, i64* %2, align 8
  ret i64 %207
}

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_print(i32, i8*, i64) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32* @targbhallocdescr(...) #1

declare dso_local i32 @free(%struct.ccb_accept_tio*, i32) #1

declare dso_local i32 @targbhdislun(%struct.cam_periph*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
