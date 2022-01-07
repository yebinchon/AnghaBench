; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cdev = type { i32 }
%struct.uio = type { i32 }
%struct.descr_queue = type { i32 }
%struct.targ_cmd_descr = type { %union.ccb*, i64 }
%union.ccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.targ_softc = type { i32, i32, %struct.descr_queue, %struct.descr_queue }
%struct.ccb_queue = type opaque
%struct.ccb_hdr = type { %union.ccb*, i64 }

@CAM_DEBUG_PERIPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"targread\0A\00", align 1
@IO_NDELAY = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"targrd\00", align 1
@ERESTART = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@periph_links = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"targread ccb %p (%p)\0A\00", align 1
@tqe = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"targread aborted descr %p (%p)\0A\00", align 1
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @targread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targread(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.descr_queue*, align 8
  %9 = alloca %struct.targ_cmd_descr*, align 8
  %10 = alloca %struct.targ_softc*, align 8
  %11 = alloca %struct.ccb_queue*, align 8
  %12 = alloca %struct.ccb_hdr*, align 8
  %13 = alloca %union.ccb*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.targ_cmd_descr*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %17 = bitcast %struct.targ_softc** %10 to i8**
  %18 = call i32 @devfs_get_cdevpriv(i8** %17)
  %19 = load %struct.targ_softc*, %struct.targ_softc** %10, align 8
  %20 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %19, i32 0, i32 3
  %21 = bitcast %struct.descr_queue* %20 to %struct.ccb_queue*
  store %struct.ccb_queue* %21, %struct.ccb_queue** %11, align 8
  %22 = load %struct.targ_softc*, %struct.targ_softc** %10, align 8
  %23 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %22, i32 0, i32 2
  store %struct.descr_queue* %23, %struct.descr_queue** %8, align 8
  %24 = load %struct.targ_softc*, %struct.targ_softc** %10, align 8
  %25 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %28 = call i32 @CAM_DEBUG(i32 %26, i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.targ_softc*, %struct.targ_softc** %10, align 8
  %30 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cam_periph_lock(i32 %31)
  %33 = load %struct.ccb_queue*, %struct.ccb_queue** %11, align 8
  %34 = bitcast %struct.ccb_queue* %33 to %struct.descr_queue*
  %35 = call %struct.targ_cmd_descr* @TAILQ_FIRST(%struct.descr_queue* %34)
  %36 = bitcast %struct.targ_cmd_descr* %35 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %36, %struct.ccb_hdr** %12, align 8
  %37 = load %struct.descr_queue*, %struct.descr_queue** %8, align 8
  %38 = call %struct.targ_cmd_descr* @TAILQ_FIRST(%struct.descr_queue* %37)
  store %struct.targ_cmd_descr* %38, %struct.targ_cmd_descr** %9, align 8
  br label %39

39:                                               ; preds = %83, %74, %3
  %40 = load %struct.ccb_hdr*, %struct.ccb_hdr** %12, align 8
  %41 = icmp eq %struct.ccb_hdr* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %9, align 8
  %44 = icmp eq %struct.targ_cmd_descr* %43, null
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  br i1 %46, label %47, label %84

47:                                               ; preds = %45
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @IO_NDELAY, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  %53 = load %struct.targ_softc*, %struct.targ_softc** %10, align 8
  %54 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ccb_queue*, %struct.ccb_queue** %11, align 8
  %57 = bitcast %struct.ccb_queue* %56 to %struct.descr_queue*
  %58 = load i32, i32* @PRIBIO, align 4
  %59 = load i32, i32* @PCATCH, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @cam_periph_sleep(i32 %55, %struct.descr_queue* %57, i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %61, i32* %15, align 4
  %62 = load %struct.ccb_queue*, %struct.ccb_queue** %11, align 8
  %63 = bitcast %struct.ccb_queue* %62 to %struct.descr_queue*
  %64 = call %struct.targ_cmd_descr* @TAILQ_FIRST(%struct.descr_queue* %63)
  %65 = bitcast %struct.targ_cmd_descr* %64 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %65, %struct.ccb_hdr** %12, align 8
  %66 = load %struct.descr_queue*, %struct.descr_queue** %8, align 8
  %67 = call %struct.targ_cmd_descr* @TAILQ_FIRST(%struct.descr_queue* %66)
  store %struct.targ_cmd_descr* %67, %struct.targ_cmd_descr** %9, align 8
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %52
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @ERESTART, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %39

75:                                               ; preds = %70
  br label %212

76:                                               ; preds = %52
  br label %83

77:                                               ; preds = %47
  %78 = load %struct.targ_softc*, %struct.targ_softc** %10, align 8
  %79 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cam_periph_unlock(i32 %80)
  %82 = load i32, i32* @EAGAIN, align 4
  store i32 %82, i32* %4, align 4
  br label %218

83:                                               ; preds = %76
  br label %39

84:                                               ; preds = %45
  br label %85

85:                                               ; preds = %139, %84
  %86 = load %struct.ccb_hdr*, %struct.ccb_hdr** %12, align 8
  %87 = icmp ne %struct.ccb_hdr* %86, null
  br i1 %87, label %88, label %148

88:                                               ; preds = %85
  %89 = load %struct.uio*, %struct.uio** %6, align 8
  %90 = getelementptr inbounds %struct.uio, %struct.uio* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ult i64 %92, 8
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %148

95:                                               ; preds = %88
  %96 = load %struct.ccb_queue*, %struct.ccb_queue** %11, align 8
  %97 = bitcast %struct.ccb_queue* %96 to %struct.descr_queue*
  %98 = load %struct.ccb_hdr*, %struct.ccb_hdr** %12, align 8
  %99 = bitcast %struct.ccb_hdr* %98 to %struct.targ_cmd_descr*
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @periph_links, i32 0, i32 0), align 4
  %101 = call i32 @TAILQ_REMOVE(%struct.descr_queue* %97, %struct.targ_cmd_descr* %99, i32 %100)
  %102 = load %struct.ccb_hdr*, %struct.ccb_hdr** %12, align 8
  %103 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.targ_cmd_descr*
  store %struct.targ_cmd_descr* %105, %struct.targ_cmd_descr** %16, align 8
  %106 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %16, align 8
  %107 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %106, i32 0, i32 0
  %108 = load %union.ccb*, %union.ccb** %107, align 8
  store %union.ccb* %108, %union.ccb** %13, align 8
  %109 = load %struct.targ_softc*, %struct.targ_softc** %10, align 8
  %110 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %113 = load %struct.ccb_hdr*, %struct.ccb_hdr** %12, align 8
  %114 = load %union.ccb*, %union.ccb** %13, align 8
  %115 = bitcast %union.ccb* %114 to i8*
  %116 = call i32 @CAM_DEBUG(i32 %111, i32 %112, i8* %115)
  %117 = load %struct.targ_softc*, %struct.targ_softc** %10, align 8
  %118 = load %struct.ccb_hdr*, %struct.ccb_hdr** %12, align 8
  %119 = bitcast %struct.ccb_hdr* %118 to %union.ccb*
  %120 = call i32 @targreturnccb(%struct.targ_softc* %117, %union.ccb* %119)
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %95
  br label %212

124:                                              ; preds = %95
  %125 = load %struct.targ_softc*, %struct.targ_softc** %10, align 8
  %126 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @cam_periph_unlock(i32 %127)
  %129 = ptrtoint %union.ccb** %13 to i32
  %130 = load %struct.uio*, %struct.uio** %6, align 8
  %131 = call i32 @uiomove(i32 %129, i32 8, %struct.uio* %130)
  store i32 %131, i32* %15, align 4
  %132 = load %struct.targ_softc*, %struct.targ_softc** %10, align 8
  %133 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @cam_periph_lock(i32 %134)
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %124
  br label %212

139:                                              ; preds = %124
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %141, 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %14, align 4
  %144 = load %struct.ccb_queue*, %struct.ccb_queue** %11, align 8
  %145 = bitcast %struct.ccb_queue* %144 to %struct.descr_queue*
  %146 = call %struct.targ_cmd_descr* @TAILQ_FIRST(%struct.descr_queue* %145)
  %147 = bitcast %struct.targ_cmd_descr* %146 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %147, %struct.ccb_hdr** %12, align 8
  br label %85

148:                                              ; preds = %94, %85
  br label %149

149:                                              ; preds = %194, %148
  %150 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %9, align 8
  %151 = icmp ne %struct.targ_cmd_descr* %150, null
  br i1 %151, label %152, label %201

152:                                              ; preds = %149
  %153 = load %struct.uio*, %struct.uio** %6, align 8
  %154 = getelementptr inbounds %struct.uio, %struct.uio* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp ult i64 %156, 8
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %201

159:                                              ; preds = %152
  %160 = load %struct.descr_queue*, %struct.descr_queue** %8, align 8
  %161 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %9, align 8
  %162 = load i32, i32* @tqe, align 4
  %163 = call i32 @TAILQ_REMOVE(%struct.descr_queue* %160, %struct.targ_cmd_descr* %161, i32 %162)
  %164 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %9, align 8
  %165 = getelementptr inbounds %struct.targ_cmd_descr, %struct.targ_cmd_descr* %164, i32 0, i32 0
  %166 = load %union.ccb*, %union.ccb** %165, align 8
  store %union.ccb* %166, %union.ccb** %13, align 8
  %167 = load %struct.targ_softc*, %struct.targ_softc** %10, align 8
  %168 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %171 = load %struct.targ_cmd_descr*, %struct.targ_cmd_descr** %9, align 8
  %172 = load %union.ccb*, %union.ccb** %13, align 8
  %173 = bitcast %union.ccb* %172 to i8*
  %174 = call i32 @CAM_DEBUG(i32 %169, i32 %170, i8* %173)
  %175 = load %union.ccb*, %union.ccb** %13, align 8
  %176 = bitcast %union.ccb* %175 to %struct.TYPE_3__*
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %179 = call i32 @suword(i32* %177, i32 %178)
  %180 = load %struct.targ_softc*, %struct.targ_softc** %10, align 8
  %181 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @cam_periph_unlock(i32 %182)
  %184 = ptrtoint %union.ccb** %13 to i32
  %185 = load %struct.uio*, %struct.uio** %6, align 8
  %186 = call i32 @uiomove(i32 %184, i32 8, %struct.uio* %185)
  store i32 %186, i32* %15, align 4
  %187 = load %struct.targ_softc*, %struct.targ_softc** %10, align 8
  %188 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @cam_periph_lock(i32 %189)
  %191 = load i32, i32* %15, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %159
  br label %212

194:                                              ; preds = %159
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = add i64 %196, 8
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %14, align 4
  %199 = load %struct.descr_queue*, %struct.descr_queue** %8, align 8
  %200 = call %struct.targ_cmd_descr* @TAILQ_FIRST(%struct.descr_queue* %199)
  store %struct.targ_cmd_descr* %200, %struct.targ_cmd_descr** %9, align 8
  br label %149

201:                                              ; preds = %158, %149
  %202 = load i32, i32* %14, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %201
  %205 = load %struct.uio*, %struct.uio** %6, align 8
  %206 = getelementptr inbounds %struct.uio, %struct.uio* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = load i32, i32* @ENOSPC, align 4
  store i32 %210, i32* %15, align 4
  br label %211

211:                                              ; preds = %209, %204, %201
  br label %212

212:                                              ; preds = %211, %193, %138, %123, %75
  %213 = load %struct.targ_softc*, %struct.targ_softc** %10, align 8
  %214 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @cam_periph_unlock(i32 %215)
  %217 = load i32, i32* %15, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %212, %77
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @cam_periph_lock(i32) #1

declare dso_local %struct.targ_cmd_descr* @TAILQ_FIRST(%struct.descr_queue*) #1

declare dso_local i32 @cam_periph_sleep(i32, %struct.descr_queue*, i32, i8*, i32) #1

declare dso_local i32 @cam_periph_unlock(i32) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.descr_queue*, %struct.targ_cmd_descr*, i32) #1

declare dso_local i32 @targreturnccb(%struct.targ_softc*, %union.ccb*) #1

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

declare dso_local i32 @suword(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
