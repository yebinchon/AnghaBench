; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_denounce_periph_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_denounce_periph_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.cam_periph = type { i32, i32, %struct.cam_path* }
%struct.cam_path = type { %struct.TYPE_12__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i64, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.sbuf = type { i32 }
%struct.xpt_proto = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*, %struct.sbuf*)* }

@MA_OWNED = common dso_local global i32 0, align 4
@xsoftc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [47 x i8] c"%s%d at %s%d bus %d scbus%d target %d lun %jx\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%d: \00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s%d: Unknown protocol device %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" s/n %.60s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" detached\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpt_denounce_periph_sbuf(%struct.cam_periph* %0, %struct.sbuf* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca %struct.cam_path*, align 8
  %6 = alloca %struct.xpt_proto*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %struct.sbuf* %1, %struct.sbuf** %4, align 8
  %7 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %8 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %7, i32 0, i32 2
  %9 = load %struct.cam_path*, %struct.cam_path** %8, align 8
  store %struct.cam_path* %9, %struct.cam_path** %5, align 8
  %10 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @cam_periph_assert(%struct.cam_periph* %10, i32 %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xsoftc, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %17 = call i32 @xpt_denounce_periph(%struct.cam_periph* %16)
  br label %136

18:                                               ; preds = %2
  %19 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %20 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.xpt_proto* @xpt_proto_find(i32 %23)
  store %struct.xpt_proto* %24, %struct.xpt_proto** %6, align 8
  %25 = load %struct.xpt_proto*, %struct.xpt_proto** %6, align 8
  %26 = icmp ne %struct.xpt_proto* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.xpt_proto*, %struct.xpt_proto** %6, align 8
  %29 = getelementptr inbounds %struct.xpt_proto, %struct.xpt_proto* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_12__*, %struct.sbuf*)*, i32 (%struct.TYPE_12__*, %struct.sbuf*)** %31, align 8
  %33 = icmp eq i32 (%struct.TYPE_12__*, %struct.sbuf*)* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %36 = call i32 @xpt_denounce_periph(%struct.cam_periph* %35)
  br label %136

37:                                               ; preds = %27, %18
  %38 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %39 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %40 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %43 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %46 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %53 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %60 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %67 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %72 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %77 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i32 %51, i32 %58, i32 %65, i32 %70, i32 %75, i32 %81)
  %83 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %84 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %85 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %88 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load %struct.xpt_proto*, %struct.xpt_proto** %6, align 8
  %92 = icmp ne %struct.xpt_proto* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %37
  %94 = load %struct.xpt_proto*, %struct.xpt_proto** %6, align 8
  %95 = getelementptr inbounds %struct.xpt_proto, %struct.xpt_proto* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_12__*, %struct.sbuf*)*, i32 (%struct.TYPE_12__*, %struct.sbuf*)** %97, align 8
  %99 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %100 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %103 = call i32 %98(%struct.TYPE_12__* %101, %struct.sbuf* %102)
  br label %118

104:                                              ; preds = %37
  %105 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %106 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %107 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %110 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %113 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %111, i32 %116)
  br label %118

118:                                              ; preds = %104, %93
  %119 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %120 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %118
  %126 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %127 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %128 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %127, i32 0, i32 0
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %125, %118
  %134 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %135 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %34, %15
  ret void
}

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local i32 @xpt_denounce_periph(%struct.cam_periph*) #1

declare dso_local %struct.xpt_proto* @xpt_proto_find(i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
