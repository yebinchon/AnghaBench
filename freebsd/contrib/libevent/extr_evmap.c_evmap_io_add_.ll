; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evmap.c_evmap_io_add_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evmap.c_evmap_io_add_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.event_io_map, %struct.eventop* }
%struct.event_io_map = type { i64 }
%struct.eventop = type { i32 (%struct.event_base.0*, i64, i16, i16, i8*)*, i32 }
%struct.event_base.0 = type opaque
%struct.event = type { i64, i16 }
%struct.evmap_io = type { i32, i32, i32, i32 }

@evmap_io = common dso_local global i32 0, align 4
@evmap_io_init = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@EV_CLOSED = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [44 x i8] c"Too many events reading or writing on fd %d\00", align 1
@EV_ET = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [67 x i8] c"Tried to mix edge-triggered and non-edge-triggered events on fd %d\00", align 1
@ev_io_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evmap_io_add_(%struct.event_base* %0, i64 %1, %struct.event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.event*, align 8
  %8 = alloca %struct.eventop*, align 8
  %9 = alloca %struct.event_io_map*, align 8
  %10 = alloca %struct.evmap_io*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca %struct.event*, align 8
  %18 = alloca i8*, align 8
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.event* %2, %struct.event** %7, align 8
  %19 = load %struct.event_base*, %struct.event_base** %5, align 8
  %20 = getelementptr inbounds %struct.event_base, %struct.event_base* %19, i32 0, i32 1
  %21 = load %struct.eventop*, %struct.eventop** %20, align 8
  store %struct.eventop* %21, %struct.eventop** %8, align 8
  %22 = load %struct.event_base*, %struct.event_base** %5, align 8
  %23 = getelementptr inbounds %struct.event_base, %struct.event_base* %22, i32 0, i32 0
  store %struct.event_io_map* %23, %struct.event_io_map** %9, align 8
  store %struct.evmap_io* null, %struct.evmap_io** %10, align 8
  store i32 0, i32* %14, align 4
  store i16 0, i16* %15, align 2
  store i16 0, i16* %16, align 2
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.event*, %struct.event** %7, align 8
  %26 = getelementptr inbounds %struct.event, %struct.event* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @EVUTIL_ASSERT(i32 %29)
  %31 = load i64, i64* %6, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %261

34:                                               ; preds = %3
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.event_io_map*, %struct.event_io_map** %9, align 8
  %37 = getelementptr inbounds %struct.event_io_map, %struct.event_io_map* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.event_io_map*, %struct.event_io_map** %9, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @evmap_make_space(%struct.event_io_map* %41, i64 %42, i32 8)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %261

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %34
  %48 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %49 = load %struct.event_io_map*, %struct.event_io_map** %9, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* @evmap_io, align 4
  %52 = load i32, i32* @evmap_io_init, align 4
  %53 = load %struct.eventop*, %struct.eventop** %8, align 8
  %54 = getelementptr inbounds %struct.eventop, %struct.eventop* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @GET_IO_SLOT_AND_CTOR(%struct.evmap_io* %48, %struct.event_io_map* %49, i64 %50, i32 %51, i32 %52, i32 %55)
  %57 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %58 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %61 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %64 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %47
  %69 = load i16, i16* @EV_READ, align 2
  %70 = sext i16 %69 to i32
  %71 = load i16, i16* %16, align 2
  %72 = sext i16 %71 to i32
  %73 = or i32 %72, %70
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %16, align 2
  br label %75

75:                                               ; preds = %68, %47
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i16, i16* @EV_WRITE, align 2
  %80 = sext i16 %79 to i32
  %81 = load i16, i16* %16, align 2
  %82 = sext i16 %81 to i32
  %83 = or i32 %82, %80
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %16, align 2
  br label %85

85:                                               ; preds = %78, %75
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i16, i16* @EV_CLOSED, align 2
  %90 = sext i16 %89 to i32
  %91 = load i16, i16* %16, align 2
  %92 = sext i16 %91 to i32
  %93 = or i32 %92, %90
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %16, align 2
  br label %95

95:                                               ; preds = %88, %85
  %96 = load %struct.event*, %struct.event** %7, align 8
  %97 = getelementptr inbounds %struct.event, %struct.event* %96, i32 0, i32 1
  %98 = load i16, i16* %97, align 8
  %99 = sext i16 %98 to i32
  %100 = load i16, i16* @EV_READ, align 2
  %101 = sext i16 %100 to i32
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %95
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i16, i16* @EV_READ, align 2
  %110 = sext i16 %109 to i32
  %111 = load i16, i16* %15, align 2
  %112 = sext i16 %111 to i32
  %113 = or i32 %112, %110
  %114 = trunc i32 %113 to i16
  store i16 %114, i16* %15, align 2
  br label %115

115:                                              ; preds = %108, %104
  br label %116

116:                                              ; preds = %115, %95
  %117 = load %struct.event*, %struct.event** %7, align 8
  %118 = getelementptr inbounds %struct.event, %struct.event* %117, i32 0, i32 1
  %119 = load i16, i16* %118, align 8
  %120 = sext i16 %119 to i32
  %121 = load i16, i16* @EV_WRITE, align 2
  %122 = sext i16 %121 to i32
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %116
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load i16, i16* @EV_WRITE, align 2
  %131 = sext i16 %130 to i32
  %132 = load i16, i16* %15, align 2
  %133 = sext i16 %132 to i32
  %134 = or i32 %133, %131
  %135 = trunc i32 %134 to i16
  store i16 %135, i16* %15, align 2
  br label %136

136:                                              ; preds = %129, %125
  br label %137

137:                                              ; preds = %136, %116
  %138 = load %struct.event*, %struct.event** %7, align 8
  %139 = getelementptr inbounds %struct.event, %struct.event* %138, i32 0, i32 1
  %140 = load i16, i16* %139, align 8
  %141 = sext i16 %140 to i32
  %142 = load i16, i16* @EV_CLOSED, align 2
  %143 = sext i16 %142 to i32
  %144 = and i32 %141, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %137
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = load i16, i16* @EV_CLOSED, align 2
  %152 = sext i16 %151 to i32
  %153 = load i16, i16* %15, align 2
  %154 = sext i16 %153 to i32
  %155 = or i32 %154, %152
  %156 = trunc i32 %155 to i16
  store i16 %156, i16* %15, align 2
  br label %157

157:                                              ; preds = %150, %146
  br label %158

158:                                              ; preds = %157, %137
  %159 = load i32, i32* %11, align 4
  %160 = icmp sgt i32 %159, 65535
  br i1 %160, label %167, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %12, align 4
  %163 = icmp sgt i32 %162, 65535
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %13, align 4
  %166 = icmp sgt i32 %165, 65535
  br label %167

167:                                              ; preds = %164, %161, %158
  %168 = phi i1 [ true, %161 ], [ true, %158 ], [ %166, %164 ]
  %169 = zext i1 %168 to i32
  %170 = call i64 @EVUTIL_UNLIKELY(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load i64, i64* %6, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 @event_warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %174)
  store i32 -1, i32* %4, align 4
  br label %261

176:                                              ; preds = %167
  %177 = call i64 (...) @EVENT_DEBUG_MODE_IS_ON()
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %204

179:                                              ; preds = %176
  %180 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %181 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %180, i32 0, i32 3
  %182 = call %struct.event* @LIST_FIRST(i32* %181)
  store %struct.event* %182, %struct.event** %17, align 8
  %183 = icmp ne %struct.event* %182, null
  br i1 %183, label %184, label %204

184:                                              ; preds = %179
  %185 = load %struct.event*, %struct.event** %17, align 8
  %186 = getelementptr inbounds %struct.event, %struct.event* %185, i32 0, i32 1
  %187 = load i16, i16* %186, align 8
  %188 = sext i16 %187 to i32
  %189 = load i16, i16* @EV_ET, align 2
  %190 = sext i16 %189 to i32
  %191 = and i32 %188, %190
  %192 = load %struct.event*, %struct.event** %7, align 8
  %193 = getelementptr inbounds %struct.event, %struct.event* %192, i32 0, i32 1
  %194 = load i16, i16* %193, align 8
  %195 = sext i16 %194 to i32
  %196 = load i16, i16* @EV_ET, align 2
  %197 = sext i16 %196 to i32
  %198 = and i32 %195, %197
  %199 = icmp ne i32 %191, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %184
  %201 = load i64, i64* %6, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @event_warnx(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %202)
  store i32 -1, i32* %4, align 4
  br label %261

204:                                              ; preds = %184, %179, %176
  %205 = load i16, i16* %15, align 2
  %206 = icmp ne i16 %205, 0
  br i1 %206, label %207, label %236

207:                                              ; preds = %204
  %208 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %209 = bitcast %struct.evmap_io* %208 to i8*
  %210 = getelementptr inbounds i8, i8* %209, i64 16
  store i8* %210, i8** %18, align 8
  %211 = load %struct.eventop*, %struct.eventop** %8, align 8
  %212 = getelementptr inbounds %struct.eventop, %struct.eventop* %211, i32 0, i32 0
  %213 = load i32 (%struct.event_base.0*, i64, i16, i16, i8*)*, i32 (%struct.event_base.0*, i64, i16, i16, i8*)** %212, align 8
  %214 = load %struct.event_base*, %struct.event_base** %5, align 8
  %215 = bitcast %struct.event_base* %214 to %struct.event_base.0*
  %216 = load %struct.event*, %struct.event** %7, align 8
  %217 = getelementptr inbounds %struct.event, %struct.event* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i16, i16* %16, align 2
  %220 = load %struct.event*, %struct.event** %7, align 8
  %221 = getelementptr inbounds %struct.event, %struct.event* %220, i32 0, i32 1
  %222 = load i16, i16* %221, align 8
  %223 = sext i16 %222 to i32
  %224 = load i16, i16* @EV_ET, align 2
  %225 = sext i16 %224 to i32
  %226 = and i32 %223, %225
  %227 = load i16, i16* %15, align 2
  %228 = sext i16 %227 to i32
  %229 = or i32 %226, %228
  %230 = trunc i32 %229 to i16
  %231 = load i8*, i8** %18, align 8
  %232 = call i32 %213(%struct.event_base.0* %215, i64 %218, i16 signext %219, i16 signext %230, i8* %231)
  %233 = icmp eq i32 %232, -1
  br i1 %233, label %234, label %235

234:                                              ; preds = %207
  store i32 -1, i32* %4, align 4
  br label %261

235:                                              ; preds = %207
  store i32 1, i32* %14, align 4
  br label %236

236:                                              ; preds = %235, %204
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = inttoptr i64 %238 to i8*
  %240 = ptrtoint i8* %239 to i32
  %241 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %242 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = inttoptr i64 %244 to i8*
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %248 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = inttoptr i64 %250 to i8*
  %252 = ptrtoint i8* %251 to i32
  %253 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %254 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 4
  %255 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %256 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %255, i32 0, i32 3
  %257 = load %struct.event*, %struct.event** %7, align 8
  %258 = load i32, i32* @ev_io_next, align 4
  %259 = call i32 @LIST_INSERT_HEAD(i32* %256, %struct.event* %257, i32 %258)
  %260 = load i32, i32* %14, align 4
  store i32 %260, i32* %4, align 4
  br label %261

261:                                              ; preds = %236, %234, %200, %172, %45, %33
  %262 = load i32, i32* %4, align 4
  ret i32 %262
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evmap_make_space(%struct.event_io_map*, i64, i32) #1

declare dso_local i32 @GET_IO_SLOT_AND_CTOR(%struct.evmap_io*, %struct.event_io_map*, i64, i32, i32, i32) #1

declare dso_local i64 @EVUTIL_UNLIKELY(i32) #1

declare dso_local i32 @event_warnx(i8*, i32) #1

declare dso_local i64 @EVENT_DEBUG_MODE_IS_ON(...) #1

declare dso_local %struct.event* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
