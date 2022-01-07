; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_bigkey.c___big_return.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_bigkey.c___big_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i32* }

@PARTIAL_KEY = common dso_local global i32 0, align 4
@FULL_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__big_return(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1, i32 %2, %struct.TYPE_14__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %13, align 8
  br label %22

22:                                               ; preds = %47, %5
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PARTIAL_KEY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %22
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = call i8* @__get_buf(%struct.TYPE_13__* %32, i32 %40, %struct.TYPE_15__* %41, i32 0)
  %43 = bitcast i8* %42 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %8, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %45 = icmp ne %struct.TYPE_15__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %254

47:                                               ; preds = %31
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %13, align 8
  store i32 1, i32* %9, align 4
  br label %22

52:                                               ; preds = %22
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FULL_KEY, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %52
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = call i8* @__get_buf(%struct.TYPE_13__* %62, i32 %70, %struct.TYPE_15__* %71, i32 0)
  %73 = bitcast i8* %72 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %73, %struct.TYPE_15__** %8, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %75 = icmp ne %struct.TYPE_15__* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %61
  store i32 -1, i32* %6, align 4
  br label %254

77:                                               ; preds = %61
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %13, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %12, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %16, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %213

89:                                               ; preds = %52
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @FREESPACE(i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %130, label %93

93:                                               ; preds = %89
  %94 = load i32*, i32** %13, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %15, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %15, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %14, align 4
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %106, %struct.TYPE_15__** %12, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %16, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %120 = call i8* @__get_buf(%struct.TYPE_13__* %110, i32 %118, %struct.TYPE_15__* %119, i32 0)
  %121 = bitcast i8* %120 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %121, %struct.TYPE_15__** %8, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %123 = icmp ne %struct.TYPE_15__* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %93
  store i32 -1, i32* %6, align 4
  br label %254

125:                                              ; preds = %93
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i32*
  store i32* %129, i32** %13, align 8
  br label %212

130:                                              ; preds = %89
  %131 = load i32*, i32** %13, align 8
  %132 = bitcast i32* %131 to i8*
  store i8* %132, i8** %17, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %15, align 4
  %140 = load i8*, i8** %17, align 8
  %141 = bitcast i8* %140 to i32*
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  store i32* %144, i32** %146, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %15, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %211

156:                                              ; preds = %130
  %157 = load i32*, i32** %13, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %170

161:                                              ; preds = %156
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %163, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  br label %210

170:                                              ; preds = %156
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %172 = load i32*, i32** %13, align 8
  %173 = load i32*, i32** %13, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %172, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %181 = call i8* @__get_buf(%struct.TYPE_13__* %171, i32 %179, %struct.TYPE_15__* %180, i32 0)
  %182 = bitcast i8* %181 to %struct.TYPE_12__*
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 2
  store %struct.TYPE_12__* %182, %struct.TYPE_12__** %184, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = icmp ne %struct.TYPE_12__* %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %170
  store i32 -1, i32* %6, align 4
  br label %254

190:                                              ; preds = %170
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  store i32 1, i32* %192, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = inttoptr i64 %197 to i32*
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %209, label %202

202:                                              ; preds = %190
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %208, align 8
  br label %209

209:                                              ; preds = %202, %190
  br label %210

210:                                              ; preds = %209, %161
  br label %211

211:                                              ; preds = %210, %130
  store i32 0, i32* %6, align 4
  br label %254

212:                                              ; preds = %125
  br label %213

213:                                              ; preds = %212, %77
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %216 = load i32, i32* %14, align 4
  %217 = load i32, i32* %11, align 4
  %218 = call i64 @collect_data(%struct.TYPE_13__* %214, %struct.TYPE_15__* %215, i32 %216, i32 %217)
  %219 = trunc i64 %218 to i32
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = icmp eq i64 %225, -1
  br i1 %226, label %227, label %228

227:                                              ; preds = %213
  store i32 -1, i32* %6, align 4
  br label %254

228:                                              ; preds = %213
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %16, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %228
  %235 = load i32, i32* @EINVAL, align 4
  store i32 %235, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %254

236:                                              ; preds = %228
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %242, %244
  %246 = load i32, i32* %14, align 4
  %247 = call i32 @memmove(i64 %239, i64 %245, i32 %246)
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = inttoptr i64 %250 to i32*
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 1
  store i32* %251, i32** %253, align 8
  store i32 0, i32* %6, align 4
  br label %254

254:                                              ; preds = %236, %234, %227, %211, %189, %124, %76, %46
  %255 = load i32, i32* %6, align 4
  ret i32 %255
}

declare dso_local i8* @__get_buf(%struct.TYPE_13__*, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @FREESPACE(i32*) #1

declare dso_local i64 @collect_data(%struct.TYPE_13__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
