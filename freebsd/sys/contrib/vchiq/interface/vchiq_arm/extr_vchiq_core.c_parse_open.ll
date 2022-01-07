; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_parse_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_parse_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, i32, i64 }
%struct.TYPE_17__ = type { i16, i16, i16, i64, i32, i32, i64, i32 }
%struct.vchiq_open_payload = type { i32, i16, i16 }
%struct.vchiq_openack_payload = type { i16 }
%struct.TYPE_19__ = type { i32, %struct.vchiq_openack_payload* }

@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%d: prs OPEN@%x (%d->'%c%c%c%c')\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"%d: service %d (%c%c%c%c) version mismatch - local (%d, min %d) vs. remote (%d, min %d)\00", align 1
@VCHIQ_SRVSTATE_LISTENING = common dso_local global i64 0, align 8
@VCHIQ_VERSION_SYNCHRONOUS_MODE = common dso_local global i64 0, align 8
@VCHIQ_MSG_OPENACK = common dso_local global i32 0, align 4
@VCHIQ_RETRY = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_OPENSYNC = common dso_local global i32 0, align 4
@VCHIQ_SRVSTATE_OPEN = common dso_local global i32 0, align 4
@VCHIQ_SERVICE_OPENED = common dso_local global i32 0, align 4
@VCHIQ_PORT_FREE = common dso_local global i32 0, align 4
@VCHIQ_MSG_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_18__*)* @parse_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_open(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vchiq_open_payload*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca %struct.vchiq_openack_payload, align 2
  %16 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @VCHIQ_MSG_DSTPORT(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @VCHIQ_MSG_SRCPORT(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %28, 8
  br i1 %29, label %30, label %197

30:                                               ; preds = %2
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.vchiq_open_payload*
  store %struct.vchiq_open_payload* %34, %struct.vchiq_open_payload** %11, align 8
  %35 = load %struct.vchiq_open_payload*, %struct.vchiq_open_payload** %11, align 8
  %36 = getelementptr inbounds %struct.vchiq_open_payload, %struct.vchiq_open_payload* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* @vchiq_core_log_level, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %43 = ptrtoint %struct.TYPE_18__* %42 to i32
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @VCHIQ_FOURCC_AS_4CHARS(i32 %45)
  %47 = call i32 @vchiq_log_info(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %43, i32 %44, i32 %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call %struct.TYPE_17__* @get_listening_service(%struct.TYPE_16__* %48, i32 %49)
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %6, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = icmp ne %struct.TYPE_17__* %51, null
  br i1 %52, label %53, label %196

53:                                               ; preds = %30
  %54 = load %struct.vchiq_open_payload*, %struct.vchiq_open_payload** %11, align 8
  %55 = getelementptr inbounds %struct.vchiq_open_payload, %struct.vchiq_open_payload* %54, i32 0, i32 1
  %56 = load i16, i16* %55, align 4
  store i16 %56, i16* %13, align 2
  %57 = load %struct.vchiq_open_payload*, %struct.vchiq_open_payload** %11, align 8
  %58 = getelementptr inbounds %struct.vchiq_open_payload, %struct.vchiq_open_payload* %57, i32 0, i32 2
  %59 = load i16, i16* %58, align 2
  store i16 %59, i16* %14, align 2
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i16, i16* %61, align 8
  %63 = sext i16 %62 to i32
  %64 = load i16, i16* %14, align 2
  %65 = sext i16 %64 to i32
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %53
  %68 = load i16, i16* %13, align 2
  %69 = sext i16 %68 to i32
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i16, i16* %71, align 2
  %73 = sext i16 %72 to i32
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %67, %53
  %76 = call i32 (...) @vchiq_loud_error_header()
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @VCHIQ_FOURCC_AS_4CHARS(i32 %83)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i16, i16* %86, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i16, i16* %89, align 2
  %91 = load i16, i16* %13, align 2
  %92 = load i16, i16* %14, align 2
  %93 = call i32 @vchiq_loud_error(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82, i32 %84, i16 signext %87, i16 signext %90, i16 signext %91, i16 signext %92)
  %94 = call i32 (...) @vchiq_loud_error_footer()
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %96 = call i32 @unlock_service(%struct.TYPE_17__* %95)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  br label %198

97:                                               ; preds = %67
  %98 = load i16, i16* %13, align 2
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  store i16 %98, i16* %100, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @VCHIQ_SRVSTATE_LISTENING, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %172

106:                                              ; preds = %97
  %107 = getelementptr inbounds %struct.vchiq_openack_payload, %struct.vchiq_openack_payload* %15, i32 0, i32 0
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i16, i16* %109, align 8
  store i16 %110, i16* %107, align 2
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %112 = ptrtoint %struct.vchiq_openack_payload* %15 to i32
  store i32 %112, i32* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  store %struct.vchiq_openack_payload* inttoptr (i64 2 to %struct.vchiq_openack_payload*), %struct.vchiq_openack_payload** %113, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @VCHIQ_VERSION_SYNCHRONOUS_MODE, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %106
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 6
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %119, %106
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %122
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @VCHIQ_VERSION_SYNCHRONOUS_MODE, align 8
  %132 = icmp sge i64 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %127
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = load i32, i32* @VCHIQ_MSG_OPENACK, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @VCHIQ_MAKE_MSG(i32 %135, i32 %138, i32 %139)
  %141 = call i64 @queue_message_sync(%struct.TYPE_16__* %134, i32* null, i32 %140, %struct.TYPE_19__* %16, i32 1, i32 2, i32 0)
  %142 = load i64, i64* @VCHIQ_RETRY, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  br label %209

145:                                              ; preds = %133
  br label %159

146:                                              ; preds = %127, %122
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %148 = load i32, i32* @VCHIQ_MSG_OPENACK, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @VCHIQ_MAKE_MSG(i32 %148, i32 %151, i32 %152)
  %154 = call i64 @queue_message(%struct.TYPE_16__* %147, i32* null, i32 %153, %struct.TYPE_19__* %16, i32 1, i32 2, i32 0)
  %155 = load i64, i64* @VCHIQ_RETRY, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %146
  br label %209

158:                                              ; preds = %146
  br label %159

159:                                              ; preds = %158, %145
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* @VCHIQ_SRVSTATE_OPENSYNC, align 4
  br label %169

167:                                              ; preds = %159
  %168 = load i32, i32* @VCHIQ_SRVSTATE_OPEN, align 4
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i32 [ %166, %165 ], [ %168, %167 ]
  %171 = call i32 @vchiq_set_service_state(%struct.TYPE_17__* %160, i32 %170)
  br label %172

172:                                              ; preds = %169, %97
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = inttoptr i64 %178 to i32*
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 4
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %185 = load i32, i32* @VCHIQ_SERVICE_OPENED, align 4
  %186 = call i64 @make_service_callback(%struct.TYPE_17__* %184, i32 %185, i32* null, i32* null)
  %187 = load i64, i64* @VCHIQ_RETRY, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %172
  %190 = load i32, i32* @VCHIQ_PORT_FREE, align 4
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 4
  store i32 %190, i32* %192, align 8
  br label %209

193:                                              ; preds = %172
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %195 = call i32 @unlock_service(%struct.TYPE_17__* %194)
  store i32 1, i32* %3, align 4
  br label %216

196:                                              ; preds = %30
  br label %197

197:                                              ; preds = %196, %2
  br label %198

198:                                              ; preds = %197, %75
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %200 = load i32, i32* @VCHIQ_MSG_CLOSE, align 4
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @VCHIQ_MSG_SRCPORT(i32 %201)
  %203 = call i32 @VCHIQ_MAKE_MSG(i32 %200, i32 0, i32 %202)
  %204 = call i64 @queue_message(%struct.TYPE_16__* %199, i32* null, i32 %203, %struct.TYPE_19__* null, i32 0, i32 0, i32 0)
  %205 = load i64, i64* @VCHIQ_RETRY, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %198
  br label %209

208:                                              ; preds = %198
  store i32 1, i32* %3, align 4
  br label %216

209:                                              ; preds = %207, %189, %157, %144
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %211 = icmp ne %struct.TYPE_17__* %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %214 = call i32 @unlock_service(%struct.TYPE_17__* %213)
  br label %215

215:                                              ; preds = %212, %209
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %215, %208, %193
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @VCHIQ_MSG_DSTPORT(i32) #1

declare dso_local i32 @VCHIQ_MSG_SRCPORT(i32) #1

declare dso_local i32 @vchiq_log_info(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @VCHIQ_FOURCC_AS_4CHARS(i32) #1

declare dso_local %struct.TYPE_17__* @get_listening_service(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vchiq_loud_error_header(...) #1

declare dso_local i32 @vchiq_loud_error(i8*, i32, i32, i32, i16 signext, i16 signext, i16 signext, i16 signext) #1

declare dso_local i32 @vchiq_loud_error_footer(...) #1

declare dso_local i32 @unlock_service(%struct.TYPE_17__*) #1

declare dso_local i64 @queue_message_sync(%struct.TYPE_16__*, i32*, i32, %struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @VCHIQ_MAKE_MSG(i32, i32, i32) #1

declare dso_local i64 @queue_message(%struct.TYPE_16__*, i32*, i32, %struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @vchiq_set_service_state(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @make_service_callback(%struct.TYPE_17__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
