; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_announce_periph_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_announce_periph_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.cam_periph = type { i32, i32, i32, %struct.cam_path* }
%struct.cam_path = type { %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { i8*, i64, i8*, i32, i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.cam_periph*, %struct.sbuf*)* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sbuf = type { i32 }
%struct.xpt_proto = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_16__*, %struct.sbuf*)* }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_PERIPH_ANNOUNCED = common dso_local global i32 0, align 4
@xsoftc = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str = private unnamed_addr constant [47 x i8] c"%s%d at %s%d bus %d scbus%d target %d lun %jx\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%d: \00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s%d: Unknown protocol device %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s%d: Serial Number %.60s\0A\00", align 1
@SID_CmdQue = common dso_local global i32 0, align 4
@CAM_DEV_TAG_AFTER_COUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"%s%d: Command Queueing enabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s%d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_announce_periph_sbuf(%struct.cam_periph* %0, %struct.sbuf* %1, i8* %2) #0 {
  %4 = alloca %struct.cam_periph*, align 8
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca %struct.xpt_proto*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %4, align 8
  store %struct.sbuf* %1, %struct.sbuf** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %10 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %9, i32 0, i32 3
  %11 = load %struct.cam_path*, %struct.cam_path** %10, align 8
  store %struct.cam_path* %11, %struct.cam_path** %7, align 8
  %12 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @cam_periph_assert(%struct.cam_periph* %12, i32 %13)
  %15 = load i32, i32* @CAM_PERIPH_ANNOUNCED, align 4
  %16 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %17 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xsoftc, i32 0, i32 0), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @xpt_announce_periph(%struct.cam_periph* %23, i8* %24)
  br label %211

26:                                               ; preds = %3
  %27 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %28 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %27, i32 0, i32 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call %struct.xpt_proto* @xpt_proto_find(i8* %31)
  store %struct.xpt_proto* %32, %struct.xpt_proto** %8, align 8
  %33 = load %struct.xpt_proto*, %struct.xpt_proto** %8, align 8
  %34 = icmp ne %struct.xpt_proto* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.xpt_proto*, %struct.xpt_proto** %8, align 8
  %37 = getelementptr inbounds %struct.xpt_proto, %struct.xpt_proto* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_16__*, %struct.sbuf*)*, i32 (%struct.TYPE_16__*, %struct.sbuf*)** %39, align 8
  %41 = icmp eq i32 (%struct.TYPE_16__*, %struct.sbuf*)* %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %35, %26
  %43 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %44 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %43, i32 0, i32 1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32 (%struct.cam_periph*, %struct.sbuf*)*, i32 (%struct.cam_periph*, %struct.sbuf*)** %50, align 8
  %52 = icmp eq i32 (%struct.cam_periph*, %struct.sbuf*)* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %42, %35
  %54 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @xpt_announce_periph(%struct.cam_periph* %54, i8* %55)
  br label %211

57:                                               ; preds = %42
  %58 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %59 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %60 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %63 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %66 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %65, i32 0, i32 1
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %73 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %72, i32 0, i32 1
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %80 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %79, i32 0, i32 1
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %87 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %86, i32 0, i32 1
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %92 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %91, i32 0, i32 2
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %97 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %96, i32 0, i32 0
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 (%struct.sbuf*, i8*, i32, i32, ...) @sbuf_printf(%struct.sbuf* %58, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64, i32 %71, i32 %78, i32 %85, i32 %90, i32 %95, i32 %101)
  %103 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %104 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %105 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %108 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (%struct.sbuf*, i8*, i32, i32, ...) @sbuf_printf(%struct.sbuf* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load %struct.xpt_proto*, %struct.xpt_proto** %8, align 8
  %112 = icmp ne %struct.xpt_proto* %111, null
  br i1 %112, label %113, label %124

113:                                              ; preds = %57
  %114 = load %struct.xpt_proto*, %struct.xpt_proto** %8, align 8
  %115 = getelementptr inbounds %struct.xpt_proto, %struct.xpt_proto* %114, i32 0, i32 0
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32 (%struct.TYPE_16__*, %struct.sbuf*)*, i32 (%struct.TYPE_16__*, %struct.sbuf*)** %117, align 8
  %119 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %120 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %119, i32 0, i32 0
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %123 = call i32 %118(%struct.TYPE_16__* %121, %struct.sbuf* %122)
  br label %138

124:                                              ; preds = %57
  %125 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %126 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %127 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %130 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %133 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %132, i32 0, i32 0
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (%struct.sbuf*, i8*, i32, i32, ...) @sbuf_printf(%struct.sbuf* %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %131, i8* %136)
  br label %138

138:                                              ; preds = %124, %113
  %139 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %140 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %139, i32 0, i32 0
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %138
  %146 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %147 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %148 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %151 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %154 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %153, i32 0, i32 0
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (%struct.sbuf*, i8*, i32, i32, ...) @sbuf_printf(%struct.sbuf* %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %149, i32 %152, i8* %157)
  br label %159

159:                                              ; preds = %145, %138
  %160 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %161 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %160, i32 0, i32 1
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32 (%struct.cam_periph*, %struct.sbuf*)*, i32 (%struct.cam_periph*, %struct.sbuf*)** %167, align 8
  %169 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %170 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %171 = call i32 %168(%struct.cam_periph* %169, %struct.sbuf* %170)
  %172 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %173 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %172, i32 0, i32 0
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @SID_CmdQue, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %159
  %181 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %182 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %181, i32 0, i32 0
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @CAM_DEV_TAG_AFTER_COUNT, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %180, %159
  %190 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %191 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %192 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %195 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (%struct.sbuf*, i8*, i32, i32, ...) @sbuf_printf(%struct.sbuf* %190, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %193, i32 %196)
  br label %198

198:                                              ; preds = %189, %180
  %199 = load i8*, i8** %6, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %203 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %204 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.cam_periph*, %struct.cam_periph** %4, align 8
  %207 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i8*, i8** %6, align 8
  %210 = call i32 (%struct.sbuf*, i8*, i32, i32, ...) @sbuf_printf(%struct.sbuf* %202, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %205, i32 %208, i8* %209)
  br label %211

211:                                              ; preds = %22, %53, %201, %198
  ret void
}

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local i32 @xpt_announce_periph(%struct.cam_periph*, i8*) #1

declare dso_local %struct.xpt_proto* @xpt_proto_find(i8*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
