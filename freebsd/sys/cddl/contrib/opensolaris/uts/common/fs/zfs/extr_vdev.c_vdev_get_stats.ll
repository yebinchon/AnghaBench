; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_get_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_15__**, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__*, i32, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, i64*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__* }

@SCL_ALL = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@VDEV_LABEL_START_SIZE = common dso_local global i64 0, align 8
@VDEV_LABEL_END_SIZE = common dso_local global i64 0, align 8
@ZIO_TYPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_get_stats(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 20
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %5, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %6, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 9
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %7, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = load i32, i32* @SCL_ALL, align 4
  %23 = load i32, i32* @RW_READER, align 4
  %24 = call i64 @spa_config_held(%struct.TYPE_17__* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 4
  %30 = call i32 @mutex_enter(i32* %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = call i32 @bcopy(%struct.TYPE_16__* %32, %struct.TYPE_16__* %33, i32 80)
  %35 = call i64 (...) @gethrtime()
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 14
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 14
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 19
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 13
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = call i32 @vdev_get_min_asize(%struct.TYPE_15__* %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 18
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %2
  %58 = load i64, i64* @VDEV_LABEL_START_SIZE, align 8
  %59 = load i64, i64* @VDEV_LABEL_END_SIZE, align 8
  %60 = add nsw i64 %58, %59
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 17
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 11
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 16
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 15
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 14
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %57, %2
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 10
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %119

92:                                               ; preds = %87
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %94 = icmp ne %struct.TYPE_15__* %93, null
  br i1 %94, label %95, label %119

95:                                               ; preds = %92
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %107, %110
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = shl i64 1, %114
  %116 = call i32 @P2ALIGN(i64 %111, i64 %115)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %100, %95, %92, %87
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 9
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = icmp ne %struct.TYPE_15__* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 9
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 13
  %129 = load i32, i32* %128, align 8
  br label %134

130:                                              ; preds = %119
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 13
  %133 = load i32, i32* %132, align 8
  br label %134

134:                                              ; preds = %130, %124
  %135 = phi i32 [ %129, %124 ], [ %133, %130 ]
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 12
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 11
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 10
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %170

152:                                              ; preds = %134
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 9
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = icmp eq %struct.TYPE_15__* %153, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %152
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %160 = call i64 @vdev_is_concrete(%struct.TYPE_15__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %162, %158, %152, %134
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %173 = icmp eq %struct.TYPE_15__* %171, %172
  br i1 %173, label %174, label %239

174:                                              ; preds = %170
  store i32 0, i32* %8, align 4
  br label %175

175:                                              ; preds = %235, %174
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %238

181:                                              ; preds = %175
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 7
  %184 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %184, i64 %186
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %187, align 8
  store %struct.TYPE_15__* %188, %struct.TYPE_15__** %9, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 6
  store %struct.TYPE_16__* %190, %struct.TYPE_16__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %191

191:                                              ; preds = %226, %181
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @ZIO_TYPES, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %229

195:                                              ; preds = %191
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 2
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 2
  %205 = load i64*, i64** %204, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, %202
  store i64 %210, i64* %208, align 8
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 1
  %213 = load i64*, i64** %212, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 1
  %220 = load i64*, i64** %219, align 8
  %221 = load i32, i32* %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, %217
  store i64 %225, i64* %223, align 8
  br label %226

226:                                              ; preds = %195
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %11, align 4
  br label %191

229:                                              ; preds = %191
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  br label %235

235:                                              ; preds = %229
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %8, align 4
  br label %175

238:                                              ; preds = %175
  br label %239

239:                                              ; preds = %238, %170
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 4
  %242 = call i32 @mutex_exit(i32* %241)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @bcopy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @vdev_get_min_asize(%struct.TYPE_15__*) #1

declare dso_local i32 @P2ALIGN(i64, i64) #1

declare dso_local i64 @vdev_is_concrete(%struct.TYPE_15__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
