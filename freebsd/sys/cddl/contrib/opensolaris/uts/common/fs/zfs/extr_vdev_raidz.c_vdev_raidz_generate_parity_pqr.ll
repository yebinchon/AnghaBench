; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_vdev_raidz_generate_parity_pqr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_vdev_raidz_generate_parity_pqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.pqr_struct = type { i64*, i64*, i64* }

@VDEV_RAIDZ_P = common dso_local global i64 0, align 8
@VDEV_RAIDZ_Q = common dso_local global i64 0, align 8
@VDEV_RAIDZ_R = common dso_local global i64 0, align 8
@vdev_raidz_pqr_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @vdev_raidz_generate_parity_pqr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_raidz_generate_parity_pqr(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pqr_struct, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* @VDEV_RAIDZ_Q, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %28, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i64, i64* @VDEV_RAIDZ_R, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %45, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %215, %1
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %218

65:                                               ; preds = %59
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %11, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* @VDEV_RAIDZ_P, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i64* @abd_to_buf(i32* %80)
  store i64* %81, i64** %3, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i64, i64* @VDEV_RAIDZ_Q, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i64* @abd_to_buf(i32* %88)
  store i64* %89, i64** %4, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i64, i64* @VDEV_RAIDZ_R, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = call i64* @abd_to_buf(i32* %96)
  store i64* %97, i64** %5, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = udiv i64 %106, 8
  store i64 %107, i64* %7, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %147

113:                                              ; preds = %65
  %114 = load i64*, i64** %3, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @abd_copy_to_buf(i64* %114, i32* %115, i32 %123)
  %125 = load i64*, i64** %4, align 8
  %126 = load i64*, i64** %3, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @memcpy(i64* %125, i64* %126, i32 %134)
  %136 = load i64*, i64** %5, align 8
  %137 = load i64*, i64** %3, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @memcpy(i64* %136, i64* %137, i32 %145)
  br label %165

147:                                              ; preds = %65
  %148 = getelementptr inbounds %struct.pqr_struct, %struct.pqr_struct* %12, i32 0, i32 0
  %149 = load i64*, i64** %3, align 8
  store i64* %149, i64** %148, align 8
  %150 = getelementptr inbounds %struct.pqr_struct, %struct.pqr_struct* %12, i32 0, i32 1
  %151 = load i64*, i64** %4, align 8
  store i64* %151, i64** %150, align 8
  %152 = getelementptr inbounds %struct.pqr_struct, %struct.pqr_struct* %12, i32 0, i32 2
  %153 = load i64*, i64** %5, align 8
  store i64* %153, i64** %152, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @vdev_raidz_pqr_func, align 4
  %164 = call i32 @abd_iterate_func(i32* %154, i32 0, i32 %162, i32 %163, %struct.pqr_struct* %12)
  br label %165

165:                                              ; preds = %147, %113
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %166, %169
  br i1 %170, label %171, label %191

171:                                              ; preds = %165
  %172 = load i64, i64* %7, align 8
  store i64 %172, i64* %9, align 8
  br label %173

173:                                              ; preds = %187, %171
  %174 = load i64, i64* %9, align 8
  %175 = load i64, i64* %6, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  %178 = load i64*, i64** %3, align 8
  %179 = load i64, i64* %9, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  store i64 0, i64* %180, align 8
  %181 = load i64*, i64** %4, align 8
  %182 = load i64, i64* %9, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  store i64 0, i64* %183, align 8
  %184 = load i64*, i64** %5, align 8
  %185 = load i64, i64* %9, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  store i64 0, i64* %186, align 8
  br label %187

187:                                              ; preds = %177
  %188 = load i64, i64* %9, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %9, align 8
  br label %173

190:                                              ; preds = %173
  br label %214

191:                                              ; preds = %165
  %192 = load i64, i64* %7, align 8
  store i64 %192, i64* %9, align 8
  br label %193

193:                                              ; preds = %210, %191
  %194 = load i64, i64* %9, align 8
  %195 = load i64, i64* %6, align 8
  %196 = icmp ult i64 %194, %195
  br i1 %196, label %197, label %213

197:                                              ; preds = %193
  %198 = load i64*, i64** %4, align 8
  %199 = load i64, i64* %9, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %8, align 8
  %203 = call i32 @VDEV_RAIDZ_64MUL_2(i64 %201, i64 %202)
  %204 = load i64*, i64** %5, align 8
  %205 = load i64, i64* %9, align 8
  %206 = getelementptr inbounds i64, i64* %204, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %8, align 8
  %209 = call i32 @VDEV_RAIDZ_64MUL_4(i64 %207, i64 %208)
  br label %210

210:                                              ; preds = %197
  %211 = load i64, i64* %9, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %9, align 8
  br label %193

213:                                              ; preds = %193
  br label %214

214:                                              ; preds = %213, %190
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %10, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %10, align 4
  br label %59

218:                                              ; preds = %59
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64* @abd_to_buf(i32*) #1

declare dso_local i32 @abd_copy_to_buf(i64*, i32*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @abd_iterate_func(i32*, i32, i32, i32, %struct.pqr_struct*) #1

declare dso_local i32 @VDEV_RAIDZ_64MUL_2(i64, i64) #1

declare dso_local i32 @VDEV_RAIDZ_64MUL_4(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
