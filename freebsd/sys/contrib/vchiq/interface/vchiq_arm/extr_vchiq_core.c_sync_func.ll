; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_sync_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_sync_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.vchiq_openack_payload = type { i32 }

@vchiq_sync_log_level = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"%d: sf %s@%x (%d->%d) - invalid/closed service %d\00", align 1
@VCHIQ_LOG_TRACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Rcvd Msg %s from %c%c%c%c s:%d d:%d len:%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Rcvd\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%d: sf OPENACK@%x,%x (%d->%d) v:%d\00", align 1
@VCHIQ_SRVSTATE_OPENING = common dso_local global i32 0, align 4
@VCHIQ_SRVSTATE_OPENSYNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"%d: sf DATA@%x,%x (%d->%d)\00", align 1
@VCHIQ_MESSAGE_AVAILABLE = common dso_local global i32 0, align 4
@VCHIQ_RETRY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"synchronous callback to service %d returns VCHIQ_RETRY\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"%d: sf unexpected msgid %x@%x,%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sync_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vchiq_openack_payload*, align 8
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %3, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %4, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @SLOT_DATA_FROM_INDEX(%struct.TYPE_18__* %19, i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %5, align 8
  br label %27

27:                                               ; preds = %1, %49, %199
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = call i32 @remote_event_wait(i32* %29)
  %31 = call i32 (...) @rmb()
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @VCHIQ_MSG_TYPE(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @VCHIQ_MSG_DSTPORT(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @VCHIQ_MSG_SRCPORT(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call %struct.TYPE_20__* @find_service_by_port(%struct.TYPE_18__* %44, i32 %45)
  store %struct.TYPE_20__* %46, %struct.TYPE_20__** %6, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %48 = icmp ne %struct.TYPE_20__* %47, null
  br i1 %48, label %65, label %49

49:                                               ; preds = %27
  %50 = load i64, i64* @vchiq_sync_log_level, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @msg_type_str(i32 %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %57 = ptrtoint %struct.TYPE_21__* %56 to i32
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (i64, i8*, i32, ...) @vchiq_log_error(i64 %50, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %55, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = call i32 @release_message_sync(%struct.TYPE_18__* %62, %struct.TYPE_21__* %63)
  br label %27

65:                                               ; preds = %27
  %66 = load i64, i64* @vchiq_sync_log_level, align 8
  %67 = load i64, i64* @VCHIQ_LOG_TRACE, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %65
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = icmp ne %struct.TYPE_20__* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  br label %79

77:                                               ; preds = %69
  %78 = call i32 @VCHIQ_MAKE_FOURCC(i8 signext 63, i8 signext 63, i8 signext 63, i8 signext 63)
  br label %79

79:                                               ; preds = %77, %72
  %80 = phi i32 [ %76, %72 ], [ %78, %77 ]
  store i32 %80, i32* %12, align 4
  %81 = load i64, i64* @vchiq_sync_log_level, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @msg_type_str(i32 %82)
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @VCHIQ_FOURCC_AS_4CHARS(i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @vchiq_log_trace(i64 %81, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %79
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @min(i32 16, i32 %96)
  %98 = call i32 @vchiq_log_dump_mem(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i64 %95, i32 %97)
  br label %99

99:                                               ; preds = %92, %79
  br label %100

100:                                              ; preds = %99, %65
  %101 = load i32, i32* %9, align 4
  switch i32 %101, label %186 [
    i32 128, label %102
    i32 129, label %151
  ]

102:                                              ; preds = %100
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp uge i64 %104, 4
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.vchiq_openack_payload*
  store %struct.vchiq_openack_payload* %110, %struct.vchiq_openack_payload** %13, align 8
  %111 = load %struct.vchiq_openack_payload*, %struct.vchiq_openack_payload** %13, align 8
  %112 = getelementptr inbounds %struct.vchiq_openack_payload, %struct.vchiq_openack_payload* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %106, %102
  %117 = load i64, i64* @vchiq_sync_log_level, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %122 = ptrtoint %struct.TYPE_21__* %121 to i32
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @vchiq_log_info(i64 %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %122, i32 %123, i32 %124, i32 %125, i32 %128)
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @VCHIQ_SRVSTATE_OPENING, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %116
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %140 = load i32, i32* @VCHIQ_SRVSTATE_OPENSYNC, align 4
  %141 = call i32 @vchiq_set_service_state(%struct.TYPE_20__* %139, i32 %140)
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 1
  store i32 1, i32* %143, align 4
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 3
  %146 = call i32 @up(i32* %145)
  br label %147

147:                                              ; preds = %135, %116
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %150 = call i32 @release_message_sync(%struct.TYPE_18__* %148, %struct.TYPE_21__* %149)
  br label %199

151:                                              ; preds = %100
  %152 = load i64, i64* @vchiq_sync_log_level, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %157 = ptrtoint %struct.TYPE_21__* %156 to i32
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @vchiq_log_trace(i64 %152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %155, i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %151
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @VCHIQ_SRVSTATE_OPENSYNC, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %167
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %175 = load i32, i32* @VCHIQ_MESSAGE_AVAILABLE, align 4
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %177 = call i32 @make_service_callback(%struct.TYPE_20__* %174, i32 %175, %struct.TYPE_21__* %176, i32* null)
  %178 = load i32, i32* @VCHIQ_RETRY, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load i64, i64* @vchiq_sync_log_level, align 8
  %182 = load i32, i32* %10, align 4
  %183 = call i32 (i64, i8*, i32, ...) @vchiq_log_error(i64 %181, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %180, %173
  br label %185

185:                                              ; preds = %184, %167, %151
  br label %199

186:                                              ; preds = %100
  %187 = load i64, i64* @vchiq_sync_log_level, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %193 = ptrtoint %struct.TYPE_21__* %192 to i32
  %194 = load i32, i32* %8, align 4
  %195 = call i32 (i64, i8*, i32, ...) @vchiq_log_error(i64 %187, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %190, i32 %191, i32 %193, i32 %194)
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %198 = call i32 @release_message_sync(%struct.TYPE_18__* %196, %struct.TYPE_21__* %197)
  br label %199

199:                                              ; preds = %186, %185, %147
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %201 = call i32 @unlock_service(%struct.TYPE_20__* %200)
  br label %27
}

declare dso_local i64 @SLOT_DATA_FROM_INDEX(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @remote_event_wait(i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @VCHIQ_MSG_TYPE(i32) #1

declare dso_local i32 @VCHIQ_MSG_DSTPORT(i32) #1

declare dso_local i32 @VCHIQ_MSG_SRCPORT(i32) #1

declare dso_local %struct.TYPE_20__* @find_service_by_port(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @vchiq_log_error(i64, i8*, i32, ...) #1

declare dso_local i32 @msg_type_str(i32) #1

declare dso_local i32 @release_message_sync(%struct.TYPE_18__*, %struct.TYPE_21__*) #1

declare dso_local i32 @VCHIQ_MAKE_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @vchiq_log_trace(i64, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VCHIQ_FOURCC_AS_4CHARS(i32) #1

declare dso_local i32 @vchiq_log_dump_mem(i8*, i32, i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @vchiq_log_info(i64, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vchiq_set_service_state(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @make_service_callback(%struct.TYPE_20__*, i32, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @unlock_service(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
