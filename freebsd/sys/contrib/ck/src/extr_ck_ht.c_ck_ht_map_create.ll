; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_map_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_map_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_ht_map = type { i32, i32, i32, i32, %struct.ck_ht_entry*, %struct.ck_ht_entry*, i64, i32, i64, i64, i32 }
%struct.ck_ht_entry = type { i32 }
%struct.ck_ht = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ck_ht_map* (i32)* }

@CK_HT_BUCKET_LENGTH = common dso_local global i32 0, align 4
@CK_MD_CACHELINE = common dso_local global i32 0, align 4
@CK_HT_WORKLOAD_DELETE = common dso_local global i32 0, align 4
@CK_HT_BUCKET_SHIFT = common dso_local global i32 0, align 4
@CK_HT_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ck_ht_map* (%struct.ck_ht*, i32)* @ck_ht_map_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ck_ht_map* @ck_ht_map_create(%struct.ck_ht* %0, i32 %1) #0 {
  %3 = alloca %struct.ck_ht_map*, align 8
  %4 = alloca %struct.ck_ht*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ck_ht_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ck_ht* %0, %struct.ck_ht** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @ck_internal_power_2(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @CK_HT_BUCKET_LENGTH, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @CK_HT_BUCKET_LENGTH, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = load i32, i32* @CK_MD_CACHELINE, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = sub i64 %23, 1
  %25 = add i64 72, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ck_ht*, %struct.ck_ht** %4, align 8
  %28 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CK_HT_WORKLOAD_DELETE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %17
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 4, %35
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  br label %43

42:                                               ; preds = %17
  store i64 0, i64* %8, align 8
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.ck_ht*, %struct.ck_ht** %4, align 8
  %45 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.ck_ht_map* (i32)*, %struct.ck_ht_map* (i32)** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.ck_ht_map* %48(i32 %49)
  store %struct.ck_ht_map* %50, %struct.ck_ht_map** %6, align 8
  %51 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %52 = icmp eq %struct.ck_ht_map* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store %struct.ck_ht_map* null, %struct.ck_ht_map** %3, align 8
  br label %141

54:                                               ; preds = %43
  %55 = load %struct.ck_ht*, %struct.ck_ht** %4, align 8
  %56 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %59 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %62 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @CK_HT_BUCKET_SHIFT, align 4
  %65 = add nsw i32 %64, 2
  %66 = ashr i32 %63, %65
  %67 = load i32, i32* @CK_HT_PROBE_DEFAULT, align 4
  %68 = call i32 @ck_internal_max_64(i32 %66, i32 %67)
  %69 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %70 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %72 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %71, i32 0, i32 9
  store i64 0, i64* %72, align 8
  %73 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %74 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %73, i32 0, i32 8
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %77 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %79 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ck_cc_ffsll(i32 %80)
  %82 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %83 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %85 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %89 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %91 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %90, i32 0, i32 6
  store i64 0, i64* %91, align 8
  %92 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %93 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %92, i64 1
  %94 = ptrtoint %struct.ck_ht_map* %93 to i64
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %94, %95
  %97 = load i32, i32* @CK_MD_CACHELINE, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %96, %98
  %100 = sub i64 %99, 1
  %101 = load i32, i32* @CK_MD_CACHELINE, align 4
  %102 = sub nsw i32 %101, 1
  %103 = xor i32 %102, -1
  %104 = sext i32 %103 to i64
  %105 = and i64 %100, %104
  %106 = inttoptr i64 %105 to %struct.ck_ht_entry*
  %107 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %108 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %107, i32 0, i32 4
  store %struct.ck_ht_entry* %106, %struct.ck_ht_entry** %108, align 8
  %109 = load %struct.ck_ht*, %struct.ck_ht** %4, align 8
  %110 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CK_HT_WORKLOAD_DELETE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %54
  %116 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %117 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %116, i64 1
  %118 = bitcast %struct.ck_ht_map* %117 to %struct.ck_ht_entry*
  %119 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %120 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %119, i32 0, i32 5
  store %struct.ck_ht_entry* %118, %struct.ck_ht_entry** %120, align 8
  %121 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %122 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %121, i32 0, i32 5
  %123 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memset(%struct.ck_ht_entry* %123, i32 0, i32 %125)
  br label %130

127:                                              ; preds = %54
  %128 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %129 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %128, i32 0, i32 5
  store %struct.ck_ht_entry* null, %struct.ck_ht_entry** %129, align 8
  br label %130

130:                                              ; preds = %127, %115
  %131 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  %132 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %131, i32 0, i32 4
  %133 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 4, %135
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memset(%struct.ck_ht_entry* %133, i32 0, i32 %137)
  %139 = call i32 (...) @ck_pr_fence_store()
  %140 = load %struct.ck_ht_map*, %struct.ck_ht_map** %6, align 8
  store %struct.ck_ht_map* %140, %struct.ck_ht_map** %3, align 8
  br label %141

141:                                              ; preds = %130, %53
  %142 = load %struct.ck_ht_map*, %struct.ck_ht_map** %3, align 8
  ret %struct.ck_ht_map* %142
}

declare dso_local i32 @ck_internal_power_2(i32) #1

declare dso_local i32 @ck_internal_max_64(i32, i32) #1

declare dso_local i32 @ck_cc_ffsll(i32) #1

declare dso_local i32 @memset(%struct.ck_ht_entry*, i32, i32) #1

declare dso_local i32 @ck_pr_fence_store(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
