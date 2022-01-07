; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32, i32, i32*, i32, i32* }

@MAXPHYS = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vdev_geom_io\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*, i32*, i8**, i32*, i32*, i32*, i32)* @vdev_geom_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_geom_io(%struct.g_consumer* %0, i32* %1, i8** %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.g_consumer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.bio**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %25 = load i32, i32* @MAXPHYS, align 4
  %26 = load i32, i32* @MAXPHYS, align 4
  %27 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %28 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %26, %31
  %33 = sub nsw i32 %25, %32
  store i32 %33, i32* %18, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %34

34:                                               ; preds = %51, %7
  %35 = load i32, i32* %21, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %21, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %18, align 4
  %45 = add nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* %18, align 4
  %48 = sdiv i32 %46, %47
  %49 = load i32, i32* %22, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %22, align 4
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %21, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %21, align 4
  br label %34

54:                                               ; preds = %34
  %55 = load i32, i32* %22, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 8
  store i64 %57, i64* %24, align 8
  %58 = load i64, i64* %24, align 8
  %59 = load i32, i32* @KM_SLEEP, align 4
  %60 = call %struct.bio** @kmem_zalloc(i64 %58, i32 %59)
  store %struct.bio** %60, %struct.bio*** %15, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %61

61:                                               ; preds = %176, %54
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %179

65:                                               ; preds = %61
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %21, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %17, align 4
  %71 = load i8**, i8*** %10, align 8
  %72 = load i32, i32* %21, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = bitcast i8* %75 to i32*
  store i32* %76, i32** %16, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %21, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %19, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %87 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = srem i32 %85, %90
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  %95 = load i32, i32* %19, align 4
  %96 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %97 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = srem i32 %95, %100
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @ASSERT(i32 %103)
  br label %105

105:                                              ; preds = %162, %65
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %20, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %175

109:                                              ; preds = %105
  %110 = call %struct.bio* (...) @g_alloc_bio()
  %111 = load %struct.bio**, %struct.bio*** %15, align 8
  %112 = load i32, i32* %23, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.bio*, %struct.bio** %111, i64 %113
  store %struct.bio* %110, %struct.bio** %114, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %21, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.bio**, %struct.bio*** %15, align 8
  %121 = load i32, i32* %23, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.bio*, %struct.bio** %120, i64 %122
  %124 = load %struct.bio*, %struct.bio** %123, align 8
  %125 = getelementptr inbounds %struct.bio, %struct.bio* %124, i32 0, i32 0
  store i32 %119, i32* %125, align 8
  %126 = load %struct.bio**, %struct.bio*** %15, align 8
  %127 = load i32, i32* %23, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.bio*, %struct.bio** %126, i64 %128
  %130 = load %struct.bio*, %struct.bio** %129, align 8
  %131 = getelementptr inbounds %struct.bio, %struct.bio* %130, i32 0, i32 4
  store i32* null, i32** %131, align 8
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.bio**, %struct.bio*** %15, align 8
  %134 = load i32, i32* %23, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.bio*, %struct.bio** %133, i64 %135
  %137 = load %struct.bio*, %struct.bio** %136, align 8
  %138 = getelementptr inbounds %struct.bio, %struct.bio* %137, i32 0, i32 1
  store i32 %132, i32* %138, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %18, align 4
  %141 = call i32 @MIN(i32 %139, i32 %140)
  %142 = load %struct.bio**, %struct.bio*** %15, align 8
  %143 = load i32, i32* %23, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.bio*, %struct.bio** %142, i64 %144
  %146 = load %struct.bio*, %struct.bio** %145, align 8
  %147 = getelementptr inbounds %struct.bio, %struct.bio* %146, i32 0, i32 3
  store i32 %141, i32* %147, align 8
  %148 = load i32*, i32** %16, align 8
  %149 = load %struct.bio**, %struct.bio*** %15, align 8
  %150 = load i32, i32* %23, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.bio*, %struct.bio** %149, i64 %151
  %153 = load %struct.bio*, %struct.bio** %152, align 8
  %154 = getelementptr inbounds %struct.bio, %struct.bio* %153, i32 0, i32 2
  store i32* %148, i32** %154, align 8
  %155 = load %struct.bio**, %struct.bio*** %15, align 8
  %156 = load i32, i32* %23, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.bio*, %struct.bio** %155, i64 %157
  %159 = load %struct.bio*, %struct.bio** %158, align 8
  %160 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %161 = call i32 @g_io_request(%struct.bio* %159, %struct.g_consumer* %160)
  br label %162

162:                                              ; preds = %109
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %17, align 4
  %166 = load i32, i32* %18, align 4
  %167 = load i32*, i32** %16, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %16, align 8
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %19, align 4
  %172 = sub nsw i32 %171, %170
  store i32 %172, i32* %19, align 4
  %173 = load i32, i32* %23, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %23, align 4
  br label %105

175:                                              ; preds = %105
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %21, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %21, align 4
  br label %61

179:                                              ; preds = %61
  %180 = load i32, i32* %23, align 4
  %181 = load i32, i32* %22, align 4
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 @ASSERT(i32 %183)
  store i32 0, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %185

185:                                              ; preds = %245, %179
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* %14, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %248

189:                                              ; preds = %185
  %190 = load i32*, i32** %11, align 8
  %191 = load i32, i32* %21, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %17, align 4
  %195 = load i32*, i32** %12, align 8
  %196 = load i32, i32* %21, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %19, align 4
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %19, align 4
  %202 = add nsw i32 %200, %201
  store i32 %202, i32* %20, align 4
  br label %203

203:                                              ; preds = %235, %189
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* %20, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %244

207:                                              ; preds = %203
  %208 = load %struct.bio**, %struct.bio*** %15, align 8
  %209 = load i32, i32* %23, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.bio*, %struct.bio** %208, i64 %210
  %212 = load %struct.bio*, %struct.bio** %211, align 8
  %213 = call i64 @biowait(%struct.bio* %212, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %207
  %216 = load i32*, i32** %13, align 8
  %217 = load i32, i32* %21, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br label %222

222:                                              ; preds = %215, %207
  %223 = phi i1 [ true, %207 ], [ %221, %215 ]
  %224 = zext i1 %223 to i32
  %225 = load i32*, i32** %13, align 8
  %226 = load i32, i32* %21, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %224, i32* %228, align 4
  %229 = load %struct.bio**, %struct.bio*** %15, align 8
  %230 = load i32, i32* %23, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.bio*, %struct.bio** %229, i64 %231
  %233 = load %struct.bio*, %struct.bio** %232, align 8
  %234 = call i32 @g_destroy_bio(%struct.bio* %233)
  br label %235

235:                                              ; preds = %222
  %236 = load i32, i32* %18, align 4
  %237 = load i32, i32* %17, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* %18, align 4
  %240 = load i32, i32* %19, align 4
  %241 = sub nsw i32 %240, %239
  store i32 %241, i32* %19, align 4
  %242 = load i32, i32* %23, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %23, align 4
  br label %203

244:                                              ; preds = %203
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %21, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %21, align 4
  br label %185

248:                                              ; preds = %185
  %249 = load %struct.bio**, %struct.bio*** %15, align 8
  %250 = load i64, i64* %24, align 8
  %251 = call i32 @kmem_free(%struct.bio** %249, i64 %250)
  ret void
}

declare dso_local %struct.bio** @kmem_zalloc(i64, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

declare dso_local i64 @biowait(%struct.bio*, i8*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @kmem_free(%struct.bio**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
