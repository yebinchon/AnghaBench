; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_dump_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_dump_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"State %d: %s\00", align 1
@conn_state_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"  tx_pos=%x(@%x), rx_pos=%x(@%x)\00", align 1
@VCHIQ_SLOT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"  Version: %d (min %d)\00", align 1
@VCHIQ_VERSION = common dso_local global i32 0, align 4
@VCHIQ_VERSION_MIN = common dso_local global i32 0, align 4
@VCHIQ_ENABLE_STATS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"  Stats: ctrl_tx_count=%d, ctrl_rx_count=%d, error_count=%d\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"  Slots: %d available (%d data), %d recyclable, %d stalls (%d data)\00", align 1
@VCHIQ_SLOT_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Remote\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiq_dump_state(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i8**, i8*** @conn_state_names, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i8*, i8** %13, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %9, i32 80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @vchiq_dump(i8* %20, i8* %21, i32 %23)
  %25 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 9
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 12
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @VCHIQ_SLOT_MASK, align 4
  %39 = and i32 %37, %38
  %40 = add nsw i32 %34, %39
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 11
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @VCHIQ_SLOT_MASK, align 4
  %52 = and i32 %50, %51
  %53 = add nsw i32 %47, %52
  %54 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %25, i32 80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %40, i32 %43, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @vchiq_dump(i8* %55, i8* %56, i32 %58)
  %60 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %61 = load i32, i32* @VCHIQ_VERSION, align 4
  %62 = load i32, i32* @VCHIQ_VERSION_MIN, align 4
  %63 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %60, i32 80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @vchiq_dump(i8* %64, i8* %65, i32 %67)
  %69 = load i64, i64* @VCHIQ_ENABLE_STATS, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %2
  %72 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 10
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 10
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 10
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %72, i32 80, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %80, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @vchiq_dump(i8* %86, i8* %87, i32 %89)
  br label %91

91:                                               ; preds = %71, %2
  %92 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @VCHIQ_SLOT_SIZE, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %97, %100
  %102 = load i32, i32* @VCHIQ_SLOT_SIZE, align 4
  %103 = sdiv i32 %101, %102
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %106, %109
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 9
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %115, %118
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 10
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 10
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %92, i32 80, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %110, i32 %119, i32 %123, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i8*, i8** %3, align 8
  %130 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  %133 = call i32 @vchiq_dump(i8* %129, i8* %130, i32 %132)
  %134 = load i8*, i8** %3, align 8
  %135 = call i32 @vchiq_dump_platform_state(i8* %134)
  %136 = load i8*, i8** %3, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 9
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = call i32 @vchiq_dump_shared_state(i8* %136, %struct.TYPE_8__* %137, %struct.TYPE_9__* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i8*, i8** %3, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = call i32 @vchiq_dump_shared_state(i8* %142, %struct.TYPE_8__* %143, %struct.TYPE_9__* %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %148 = load i8*, i8** %3, align 8
  %149 = call i32 @vchiq_dump_platform_instances(i8* %148)
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %169, %91
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %172

156:                                              ; preds = %150
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = load i32, i32* %7, align 4
  %159 = call i32* @find_service_by_port(%struct.TYPE_8__* %157, i32 %158)
  store i32* %159, i32** %8, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load i8*, i8** %3, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = call i32 @vchiq_dump_service_state(i8* %163, i32* %164)
  %166 = load i32*, i32** %8, align 8
  %167 = call i32 @unlock_service(i32* %166)
  br label %168

168:                                              ; preds = %162, %156
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  br label %150

172:                                              ; preds = %150
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @vchiq_dump(i8*, i8*, i32) #1

declare dso_local i32 @vchiq_dump_platform_state(i8*) #1

declare dso_local i32 @vchiq_dump_shared_state(i8*, %struct.TYPE_8__*, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @vchiq_dump_platform_instances(i8*) #1

declare dso_local i32* @find_service_by_port(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vchiq_dump_service_state(i8*, i32*) #1

declare dso_local i32 @unlock_service(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
