; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_copy_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_copy_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.packed_rrset_data*, %struct.ub_packed_rrset_key*, i32 }
%struct.packed_rrset_data = type { i32, i64*, i32**, i64*, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.regional = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_packed_rrset_key* (%struct.ub_packed_rrset_key*, %struct.regional*)* @copy_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_packed_rrset_key* @copy_rrset(%struct.ub_packed_rrset_key* %0, %struct.regional* %1) #0 {
  %3 = alloca %struct.ub_packed_rrset_key*, align 8
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca %struct.regional*, align 8
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca %struct.packed_rrset_data*, align 8
  %8 = alloca %struct.packed_rrset_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %4, align 8
  store %struct.regional* %1, %struct.regional** %5, align 8
  %12 = load %struct.regional*, %struct.regional** %5, align 8
  %13 = call i8* @regional_alloc(%struct.regional* %12, i64 40)
  %14 = bitcast i8* %13 to %struct.ub_packed_rrset_key*
  store %struct.ub_packed_rrset_key* %14, %struct.ub_packed_rrset_key** %6, align 8
  %15 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %16 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %17, align 8
  store %struct.packed_rrset_data* %18, %struct.packed_rrset_data** %8, align 8
  %19 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %20 = icmp ne %struct.ub_packed_rrset_key* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %3, align 8
  br label %217

22:                                               ; preds = %2
  %23 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %24 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %27 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %29 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %28, i32 0, i32 0
  %30 = call i32 @memset(%struct.TYPE_4__* %29, i32 0, i32 24)
  %31 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %32 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %36 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %39 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %40 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %38, %struct.ub_packed_rrset_key** %41, align 8
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %43 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %42, i32 0, i32 1
  %44 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %45 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %44, i32 0, i32 1
  %46 = bitcast %struct.TYPE_3__* %43 to i8*
  %47 = bitcast %struct.TYPE_3__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = load %struct.regional*, %struct.regional** %5, align 8
  %49 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %50 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %54 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @regional_alloc_init(%struct.regional* %48, i32 %52, i32 %56)
  %58 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %59 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %62 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %22
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %3, align 8
  br label %217

67:                                               ; preds = %22
  %68 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %69 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 24
  %73 = add i64 40, %72
  store i64 %73, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %74

74:                                               ; preds = %90, %67
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %77 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = icmp ult i64 %75, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %74
  %82 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %83 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %9, align 8
  br label %90

90:                                               ; preds = %81
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %10, align 8
  br label %74

93:                                               ; preds = %74
  %94 = load %struct.regional*, %struct.regional** %5, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call i8* @regional_alloc(%struct.regional* %94, i64 %95)
  %97 = bitcast i8* %96 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %97, %struct.packed_rrset_data** %7, align 8
  %98 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %99 = icmp ne %struct.packed_rrset_data* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %3, align 8
  br label %217

101:                                              ; preds = %93
  %102 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %103 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %104 = bitcast %struct.packed_rrset_data* %102 to i8*
  %105 = bitcast %struct.packed_rrset_data* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 40, i1 false)
  %106 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %107 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %106, i32 0, i32 4
  store i64 0, i64* %107, align 8
  %108 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %109 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %110 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store %struct.packed_rrset_data* %108, %struct.packed_rrset_data** %111, align 8
  %112 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %113 = bitcast %struct.packed_rrset_data* %112 to i32*
  %114 = getelementptr inbounds i32, i32* %113, i64 40
  %115 = bitcast i32* %114 to i64*
  %116 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %117 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %116, i32 0, i32 1
  store i64* %115, i64** %117, align 8
  %118 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %119 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %122 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %120, i64 %124
  %126 = bitcast i64* %125 to i32**
  %127 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %128 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %127, i32 0, i32 2
  store i32** %126, i32*** %128, align 8
  %129 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %130 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %129, i32 0, i32 2
  %131 = load i32**, i32*** %130, align 8
  %132 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %133 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %131, i64 %135
  %137 = bitcast i32** %136 to i64*
  %138 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %139 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %138, i32 0, i32 3
  store i64* %137, i64** %139, align 8
  %140 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %141 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %140, i32 0, i32 3
  %142 = load i64*, i64** %141, align 8
  %143 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %144 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %142, i64 %146
  %148 = bitcast i64* %147 to i32*
  store i32* %148, i32** %11, align 8
  store i64 0, i64* %10, align 8
  br label %149

149:                                              ; preds = %212, %101
  %150 = load i64, i64* %10, align 8
  %151 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %152 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = icmp ult i64 %150, %154
  br i1 %155, label %156, label %215

156:                                              ; preds = %149
  %157 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %158 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* %10, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %164 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* %10, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  store i64 %162, i64* %167, align 8
  %168 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %169 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %168, i32 0, i32 3
  %170 = load i64*, i64** %169, align 8
  %171 = load i64, i64* %10, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %175 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %174, i32 0, i32 3
  %176 = load i64*, i64** %175, align 8
  %177 = load i64, i64* %10, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  store i64 %173, i64* %178, align 8
  %179 = load i32*, i32** %11, align 8
  %180 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %181 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %180, i32 0, i32 2
  %182 = load i32**, i32*** %181, align 8
  %183 = load i64, i64* %10, align 8
  %184 = getelementptr inbounds i32*, i32** %182, i64 %183
  store i32* %179, i32** %184, align 8
  %185 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %186 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %185, i32 0, i32 2
  %187 = load i32**, i32*** %186, align 8
  %188 = load i64, i64* %10, align 8
  %189 = getelementptr inbounds i32*, i32** %187, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %192 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %191, i32 0, i32 2
  %193 = load i32**, i32*** %192, align 8
  %194 = load i64, i64* %10, align 8
  %195 = getelementptr inbounds i32*, i32** %193, i64 %194
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %8, align 8
  %198 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %197, i32 0, i32 1
  %199 = load i64*, i64** %198, align 8
  %200 = load i64, i64* %10, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @memcpy(i32* %190, i32* %196, i64 %202)
  %204 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %205 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %204, i32 0, i32 1
  %206 = load i64*, i64** %205, align 8
  %207 = load i64, i64* %10, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = load i32*, i32** %11, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 %209
  store i32* %211, i32** %11, align 8
  br label %212

212:                                              ; preds = %156
  %213 = load i64, i64* %10, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %10, align 8
  br label %149

215:                                              ; preds = %149
  %216 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  store %struct.ub_packed_rrset_key* %216, %struct.ub_packed_rrset_key** %3, align 8
  br label %217

217:                                              ; preds = %215, %100, %66, %21
  %218 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %3, align 8
  ret %struct.ub_packed_rrset_key* %218
}

declare dso_local i8* @regional_alloc(%struct.regional*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @regional_alloc_init(%struct.regional*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
