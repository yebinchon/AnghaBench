; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cdev = type { i32 }
%struct.uio = type { i32 }
%union.ccb = type { %struct.targ_cmd_descr }
%struct.targ_cmd_descr = type { i32, i32, %union.ccb*, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.targ_softc = type { i32, i32, i32, i32 }

@CAM_DEBUG_PERIPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"write - uio_resid %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"write - uiomove failed (%d)\0A\00", align 1
@CAM_PRIORITY_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Sent ATIO/INOT (%p)\0A\00", align 1
@periph_links = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@XPT_FC_QUEUED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Sending queued ccb %#x (%p)\0A\00", align 1
@tqe = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Sending inline ccb %#x (%p)\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @targwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targwrite(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.ccb*, align 8
  %9 = alloca %struct.targ_softc*, align 8
  %10 = alloca %struct.targ_cmd_descr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.ccb*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = bitcast %struct.targ_softc** %9 to i8**
  %17 = call i32 @devfs_get_cdevpriv(i8** %16)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %19 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %22 = load %struct.uio*, %struct.uio** %6, align 8
  %23 = getelementptr inbounds %struct.uio, %struct.uio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @CAM_DEBUG(i32 %20, i32 %21, i8* %26)
  br label %28

28:                                               ; preds = %196, %3
  %29 = load %struct.uio*, %struct.uio** %6, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i1 [ false, %28 ], [ %36, %34 ]
  br i1 %38, label %39, label %201

39:                                               ; preds = %37
  %40 = ptrtoint %union.ccb** %8 to i32
  %41 = load %struct.uio*, %struct.uio** %6, align 8
  %42 = call i32 @uiomove(i32 %40, i32 8, %struct.uio* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %47 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @CAM_DEBUG(i32 %48, i32 %49, i8* %52)
  br label %201

54:                                               ; preds = %39
  %55 = load %union.ccb*, %union.ccb** %8, align 8
  %56 = bitcast %union.ccb* %55 to %struct.targ_cmd_descr*
  %57 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @fuword32(i32* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %12, align 4
  br label %201

65:                                               ; preds = %54
  %66 = load %union.ccb*, %union.ccb** %8, align 8
  %67 = bitcast %union.ccb* %66 to %struct.targ_cmd_descr*
  %68 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %67, i32 0, i32 0
  %69 = call i32 @fuword32(i32* %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  switch i32 %70, label %110 [
    i32 130, label %71
    i32 128, label %71
    i32 129, label %71
  ]

71:                                               ; preds = %65, %65, %65
  %72 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %73 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cam_periph_lock(i32 %74)
  %76 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call %union.ccb* @targgetccb(%struct.targ_softc* %76, i32 %77, i32 %78)
  store %union.ccb* %79, %union.ccb** %15, align 8
  %80 = load %union.ccb*, %union.ccb** %15, align 8
  %81 = bitcast %union.ccb* %80 to %struct.targ_cmd_descr*
  %82 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.targ_cmd_descr*
  store %struct.targ_cmd_descr* %84, %struct.targ_cmd_descr** %10, align 8
  %85 = load %union.ccb*, %union.ccb** %8, align 8
  %86 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %10, align 8
  %87 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %86, i32 0, i32 2
  store %union.ccb* %85, %union.ccb** %87, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %10, align 8
  %90 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %92 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %95 = load %union.ccb*, %union.ccb** %8, align 8
  %96 = bitcast %union.ccb* %95 to i8*
  %97 = call i32 @CAM_DEBUG(i32 %93, i32 %94, i8* %96)
  %98 = load %union.ccb*, %union.ccb** %15, align 8
  %99 = call i32 @xpt_action(%union.ccb* %98)
  %100 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %101 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %100, i32 0, i32 3
  %102 = load %union.ccb*, %union.ccb** %15, align 8
  %103 = bitcast %union.ccb* %102 to %struct.targ_cmd_descr*
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @periph_links, i32 0, i32 0), align 4
  %105 = call i32 @TAILQ_INSERT_TAIL(i32* %101, %struct.targ_cmd_descr* %103, i32 %104)
  %106 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %107 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @cam_periph_unlock(i32 %108)
  br label %196

110:                                              ; preds = %65
  %111 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %112 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @cam_periph_lock(i32 %113)
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @XPT_FC_QUEUED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %149

119:                                              ; preds = %110
  %120 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %121 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load %union.ccb*, %union.ccb** %8, align 8
  %126 = bitcast %union.ccb* %125 to i8*
  %127 = call i32 @CAM_DEBUG(i32 %122, i32 %123, i8* %126)
  %128 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %129 = call %struct.targ_cmd_descr* @targgetdescr(%struct.targ_softc* %128)
  store %struct.targ_cmd_descr* %129, %struct.targ_cmd_descr** %10, align 8
  %130 = load %union.ccb*, %union.ccb** %8, align 8
  %131 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %10, align 8
  %132 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %131, i32 0, i32 2
  store %union.ccb* %130, %union.ccb** %132, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %10, align 8
  %135 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %10, align 8
  %138 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %140 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %139, i32 0, i32 2
  %141 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %10, align 8
  %142 = load i32, i32* @tqe, align 4
  %143 = call i32 @TAILQ_INSERT_TAIL(i32* %140, %struct.targ_cmd_descr* %141, i32 %142)
  %144 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %145 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @xpt_schedule(i32 %146, i32 %147)
  br label %191

149:                                              ; preds = %110
  %150 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %151 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load %union.ccb*, %union.ccb** %8, align 8
  %156 = bitcast %union.ccb* %155 to i8*
  %157 = call i32 @CAM_DEBUG(i32 %152, i32 %153, i8* %156)
  %158 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %14, align 4
  %161 = call %union.ccb* @targgetccb(%struct.targ_softc* %158, i32 %159, i32 %160)
  store %union.ccb* %161, %union.ccb** %15, align 8
  %162 = load %union.ccb*, %union.ccb** %15, align 8
  %163 = bitcast %union.ccb* %162 to %struct.targ_cmd_descr*
  %164 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to %struct.targ_cmd_descr*
  store %struct.targ_cmd_descr* %166, %struct.targ_cmd_descr** %10, align 8
  %167 = load %union.ccb*, %union.ccb** %8, align 8
  %168 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %10, align 8
  %169 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %168, i32 0, i32 2
  store %union.ccb* %167, %union.ccb** %169, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %10, align 8
  %172 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %13, align 4
  %174 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %10, align 8
  %175 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %177 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %10, align 8
  %178 = load %union.ccb*, %union.ccb** %15, align 8
  %179 = call i32 @targusermerge(%struct.targ_softc* %176, %struct.targ_cmd_descr* %177, %union.ccb* %178)
  %180 = load i32, i32* @EFAULT, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %149
  %183 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %184 = load %union.ccb*, %union.ccb** %15, align 8
  %185 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %10, align 8
  %186 = call i32 @targsendccb(%struct.targ_softc* %183, %union.ccb* %184, %struct.targ_cmd_descr* %185)
  br label %187

187:                                              ; preds = %182, %149
  %188 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %189 = load %union.ccb*, %union.ccb** %15, align 8
  %190 = call i32 @targreturnccb(%struct.targ_softc* %188, %union.ccb* %189)
  br label %191

191:                                              ; preds = %187, %119
  %192 = load %struct.targ_softc*, %struct.targ_softc** %9, align 8
  %193 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @cam_periph_unlock(i32 %194)
  br label %196

196:                                              ; preds = %191, %71
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = add i64 %198, 8
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %11, align 4
  br label %28

201:                                              ; preds = %63, %45, %37
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = load i32, i32* %11, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load i32, i32* %12, align 4
  store i32 %208, i32* %4, align 4
  br label %220

209:                                              ; preds = %204, %201
  %210 = load i32, i32* %11, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %209
  %213 = load %struct.uio*, %struct.uio** %6, align 8
  %214 = getelementptr inbounds %struct.uio, %struct.uio* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = load i32, i32* @ENOSPC, align 4
  store i32 %218, i32* %4, align 4
  br label %220

219:                                              ; preds = %212, %209
  store i32 0, i32* %4, align 4
  br label %220

220:                                              ; preds = %219, %217, %207
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

declare dso_local i32 @fuword32(i32*) #1

declare dso_local i32 @cam_periph_lock(i32) #1

declare dso_local %union.ccb* @targgetccb(%struct.targ_softc*, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.targ_cmd_descr*, i32) #1

declare dso_local i32 @cam_periph_unlock(i32) #1

declare dso_local %struct.targ_cmd_descr* @targgetdescr(%struct.targ_softc*) #1

declare dso_local i32 @xpt_schedule(i32, i32) #1

declare dso_local i32 @targusermerge(%struct.targ_softc*, %struct.targ_cmd_descr*, %union.ccb*) #1

declare dso_local i32 @targsendccb(%struct.targ_softc*, %union.ccb*, %struct.targ_cmd_descr*) #1

declare dso_local i32 @targreturnccb(%struct.targ_softc*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
