; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_close_service_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_close_service_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@VCHIQ_SUCCESS = common dso_local global i32 0, align 4
@VCHIQ_FOURCC_INVALID = common dso_local global i64 0, align 8
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%d: csi:%d,%d (%s)\00", align 1
@srvstate_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"vchiq_close_service_internal(1) called in state %s\00", align 1
@VCHIQ_ERROR = common dso_local global i32 0, align 4
@VCHIQ_PORT_FREE = common dso_local global i32 0, align 4
@VCHIQ_MSG_CLOSE = common dso_local global i32 0, align 4
@VCHIQ_RETRY = common dso_local global i32 0, align 4
@QMFLAGS_NO_MUTEX_UNLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"vchiq_close_service_internal(%d) called in state %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_close_service_internal(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 7
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %5, align 8
  %11 = load i32, i32* @VCHIQ_SUCCESS, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VCHIQ_FOURCC_INVALID, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @vchiq_core_log_level, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 7
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32*, i32** @srvstate_names, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vchiq_log_info(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %27, i32 %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  switch i64 %37, label %231 [
    i64 136, label %38
    i64 132, label %38
    i64 131, label %38
    i64 133, label %38
    i64 129, label %83
    i64 128, label %106
    i64 130, label %110
    i64 134, label %195
    i64 135, label %219
  ]

38:                                               ; preds = %2, %2, %2, %2
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* @vchiq_core_log_level, align 4
  %43 = load i32*, i32** @srvstate_names, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, i32, ...) @vchiq_log_error(i32 %42, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %82

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %50
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 131
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %59, i32* %6, align 4
  br label %74

60:                                               ; preds = %53
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 6
  store i32 0, i32* %62, align 8
  %63 = load i32, i32* @VCHIQ_PORT_FREE, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 133
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = call i32 @vchiq_set_service_state(%struct.TYPE_12__* %71, i32 131)
  br label %73

73:                                               ; preds = %70, %60
  br label %74

74:                                               ; preds = %73, %58
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 5
  %77 = call i32 @up(i32* %76)
  br label %81

78:                                               ; preds = %50
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = call i32 @vchiq_free_service_internal(%struct.TYPE_12__* %79)
  br label %81

81:                                               ; preds = %78, %74
  br label %82

82:                                               ; preds = %81, %41
  br label %241

83:                                               ; preds = %2
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = call i32 @vchiq_set_service_state(%struct.TYPE_12__* %87, i32 133)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 5
  %91 = call i32 @up(i32* %90)
  br label %105

92:                                               ; preds = %83
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %95 = load i32, i32* @VCHIQ_MSG_CLOSE, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @VCHIQ_MSG_DSTPORT(i32 %101)
  %103 = call i32 @VCHIQ_MAKE_MSG(i32 %95, i32 %98, i32 %102)
  %104 = call i32 @queue_message(%struct.TYPE_11__* %93, %struct.TYPE_12__* %94, i32 %103, i32* null, i32 0, i32 0, i32 0)
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %92, %86
  br label %241

106:                                              ; preds = %2
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = call i32 @lmutex_lock(i32* %108)
  br label %110

110:                                              ; preds = %2, %106
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115, %110
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %120 = call i32 @do_abort_bulks(%struct.TYPE_12__* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* @VCHIQ_RETRY, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %122, %118
  br label %125

125:                                              ; preds = %124, %115
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = call i32 @release_service_messages(%struct.TYPE_12__* %126)
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @VCHIQ_SUCCESS, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %125
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %134 = load i32, i32* @VCHIQ_MSG_CLOSE, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @VCHIQ_MSG_DSTPORT(i32 %140)
  %142 = call i32 @VCHIQ_MAKE_MSG(i32 %134, i32 %137, i32 %141)
  %143 = load i32, i32* @QMFLAGS_NO_MUTEX_UNLOCK, align 4
  %144 = call i32 @queue_message(%struct.TYPE_11__* %132, %struct.TYPE_12__* %133, i32 %142, i32* null, i32 0, i32 0, i32 %143)
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %131, %125
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @VCHIQ_SUCCESS, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %168

149:                                              ; preds = %145
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %167, label %152

152:                                              ; preds = %149
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %154 = call i32 @vchiq_set_service_state(%struct.TYPE_12__* %153, i32 134)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = call i32 @lmutex_unlock(i32* %156)
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %152
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = call i32 @lmutex_unlock(i32* %164)
  br label %166

166:                                              ; preds = %162, %152
  br label %241

167:                                              ; preds = %149
  br label %178

168:                                              ; preds = %145
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %171, 128
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = call i32 @lmutex_unlock(i32* %175)
  br label %241

177:                                              ; preds = %168
  br label %241

178:                                              ; preds = %167
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %180 = call i32 @vchiq_set_service_state(%struct.TYPE_12__* %179, i32 135)
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  %183 = call i32 @lmutex_unlock(i32* %182)
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %178
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = call i32 @lmutex_unlock(i32* %190)
  br label %192

192:                                              ; preds = %188, %178
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %194 = call i32 @close_service_complete(%struct.TYPE_12__* %193, i32 135)
  store i32 %194, i32* %6, align 4
  br label %241

195:                                              ; preds = %2
  %196 = load i32, i32* %4, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  br label %241

199:                                              ; preds = %195
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %211, label %204

204:                                              ; preds = %199
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %206 = call i32 @do_abort_bulks(%struct.TYPE_12__* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* @VCHIQ_RETRY, align 4
  store i32 %209, i32* %6, align 4
  br label %241

210:                                              ; preds = %204
  br label %211

211:                                              ; preds = %210, %199
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* @VCHIQ_SUCCESS, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %217 = call i32 @close_service_complete(%struct.TYPE_12__* %216, i32 135)
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %215, %211
  br label %241

219:                                              ; preds = %2
  %220 = load i32, i32* %4, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %219
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %227 = call i32 @vchiq_set_service_state(%struct.TYPE_12__* %226, i32 131)
  br label %228

228:                                              ; preds = %225, %222, %219
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %230 = call i32 @close_service_complete(%struct.TYPE_12__* %229, i32 135)
  store i32 %230, i32* %6, align 4
  br label %241

231:                                              ; preds = %2
  %232 = load i32, i32* @vchiq_core_log_level, align 4
  %233 = load i32, i32* %4, align 4
  %234 = load i32*, i32** @srvstate_names, align 8
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i32, i8*, i32, ...) @vchiq_log_error(i32 %232, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %233, i32 %239)
  br label %241

241:                                              ; preds = %231, %228, %218, %208, %198, %192, %177, %173, %166, %105, %82
  %242 = load i32, i32* %6, align 4
  ret i32 %242
}

declare dso_local i32 @vchiq_log_info(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @vchiq_log_error(i32, i8*, i32, ...) #1

declare dso_local i32 @vchiq_set_service_state(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @vchiq_free_service_internal(%struct.TYPE_12__*) #1

declare dso_local i32 @queue_message(%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @VCHIQ_MAKE_MSG(i32, i32, i32) #1

declare dso_local i32 @VCHIQ_MSG_DSTPORT(i32) #1

declare dso_local i32 @lmutex_lock(i32*) #1

declare dso_local i32 @do_abort_bulks(%struct.TYPE_12__*) #1

declare dso_local i32 @release_service_messages(%struct.TYPE_12__*) #1

declare dso_local i32 @lmutex_unlock(i32*) #1

declare dso_local i32 @close_service_complete(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
