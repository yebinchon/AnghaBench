; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_dump_service_use_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_arm.c_vchiq_dump_service_use_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.service_data_struct = type { i32, i32, i32 }

@vchiq_dump_service_use_state.local_max_services = internal constant i32 64, align 4
@vchiq_dump_service_use_state.nz = internal global i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [23 x i8] c"<-- preventing suspend\00", align 1
@VCHIQ_SRVSTATE_FREE = common dso_local global i64 0, align 8
@vchiq_susp_log_level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"-- Videcore suspend state: %s --\00", align 1
@suspend_state_names = common dso_local global i32* null, align 8
@VC_SUSPEND_NUM_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"-- Videcore resume state: %s --\00", align 1
@resume_state_names = common dso_local global i32* null, align 8
@VC_RESUME_NUM_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [93 x i8] c"Too many active services (%d).  Only dumping up to first %d services with non-zero use-count\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"----- %c%c%c%c:%d service count %d %s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"----- VCHIQ use count count %d\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"--- Overall vchiq instance use count %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiq_dump_service_use_state(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x %struct.service_data_struct], align 16
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = call %struct.TYPE_12__* @vchiq_platform_get_arm_state(%struct.TYPE_10__* %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %180

19:                                               ; preds = %1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 4
  %22 = call i32 @read_lock_bh(i32* %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp sgt i32 %38, 64
  br i1 %39, label %40, label %41

40:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %19
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %102, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 64
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi i1 [ false, %42 ], [ %48, %46 ]
  br i1 %50, label %51, label %105

51:                                               ; preds = %49
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %54, i64 %56
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %13, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %60 = icmp ne %struct.TYPE_11__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %102

62:                                               ; preds = %51
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %102

71:                                               ; preds = %65, %62
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VCHIQ_SRVSTATE_FREE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %71
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [64 x %struct.service_data_struct], [64 x %struct.service_data_struct]* %12, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [64 x %struct.service_data_struct], [64 x %struct.service_data_struct]* %12, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %91, i32 0, i32 1
  store i32 %88, i32* %92, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds [64 x %struct.service_data_struct], [64 x %struct.service_data_struct]* %12, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %99, i32 0, i32 2
  store i32 %95, i32* %100, align 4
  br label %101

101:                                              ; preds = %77, %71
  br label %102

102:                                              ; preds = %101, %70, %61
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %42

105:                                              ; preds = %49
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 4
  %108 = call i32 @read_unlock_bh(i32* %107)
  %109 = load i32, i32* @vchiq_susp_log_level, align 4
  %110 = load i32*, i32** @suspend_state_names, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @VC_SUSPEND_NUM_OFFSET, align 4
  %113 = add i32 %111, %112
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, i32, ...) @vchiq_log_warning(i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @vchiq_susp_log_level, align 4
  %119 = load i32*, i32** @resume_state_names, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @VC_RESUME_NUM_OFFSET, align 4
  %122 = add i32 %120, %121
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32, i8*, i32, ...) @vchiq_log_warning(i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %105
  %130 = load i32, i32* @vchiq_susp_log_level, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 (i32, i8*, i32, ...) @vchiq_log_warning(i32 %130, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0), i32 %131, i32 64)
  br label %133

133:                                              ; preds = %129, %105
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %168, %133
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %171

138:                                              ; preds = %134
  %139 = load i32, i32* @vchiq_susp_log_level, align 4
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [64 x %struct.service_data_struct], [64 x %struct.service_data_struct]* %12, i64 0, i64 %141
  %143 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @VCHIQ_FOURCC_AS_4CHARS(i32 %144)
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [64 x %struct.service_data_struct], [64 x %struct.service_data_struct]* %12, i64 0, i64 %147
  %149 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [64 x %struct.service_data_struct], [64 x %struct.service_data_struct]* %12, i64 0, i64 %152
  %154 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [64 x %struct.service_data_struct], [64 x %struct.service_data_struct]* %12, i64 0, i64 %157
  %159 = getelementptr inbounds %struct.service_data_struct, %struct.service_data_struct* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %138
  %163 = load i8*, i8** @vchiq_dump_service_use_state.nz, align 8
  br label %165

164:                                              ; preds = %138
  br label %165

165:                                              ; preds = %164, %162
  %166 = phi i8* [ %163, %162 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %164 ]
  %167 = call i32 (i32, i8*, i32, ...) @vchiq_log_warning(i32 %139, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %145, i32 %150, i32 %155, i8* %166)
  br label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  br label %134

171:                                              ; preds = %134
  %172 = load i32, i32* @vchiq_susp_log_level, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 (i32, i8*, i32, ...) @vchiq_log_warning(i32 %172, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @vchiq_susp_log_level, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call i32 (i32, i8*, i32, ...) @vchiq_log_warning(i32 %175, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %176)
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %179 = call i32 @vchiq_dump_platform_use_state(%struct.TYPE_10__* %178)
  br label %180

180:                                              ; preds = %171, %18
  ret void
}

declare dso_local %struct.TYPE_12__* @vchiq_platform_get_arm_state(%struct.TYPE_10__*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @vchiq_log_warning(i32, i8*, i32, ...) #1

declare dso_local i32 @VCHIQ_FOURCC_AS_4CHARS(i32) #1

declare dso_local i32 @vchiq_dump_platform_use_state(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
