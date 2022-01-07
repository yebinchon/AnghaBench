; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_put_spmc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_put_spmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_ht = type { i32, %struct.ck_ht_map* }
%struct.ck_ht_map = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.ck_ht_entry = type { i64, i64, i32, i32 }

@CK_HT_MODE_BYTESTRING = common dso_local global i32 0, align 4
@CK_HT_KEY_EMPTY = common dso_local global i64 0, align 8
@CK_HT_KEY_TOMBSTONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_ht_put_spmc(%struct.ck_ht* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ck_ht*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.ck_ht_entry, align 8
  %9 = alloca %struct.ck_ht_entry*, align 8
  %10 = alloca %struct.ck_ht_entry*, align 8
  %11 = alloca %struct.ck_ht_map*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ck_ht* %0, %struct.ck_ht** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  br label %14

14:                                               ; preds = %56, %3
  %15 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %16 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %15, i32 0, i32 1
  %17 = load %struct.ck_ht_map*, %struct.ck_ht_map** %16, align 8
  store %struct.ck_ht_map* %17, %struct.ck_ht_map** %11, align 8
  %18 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %19 = getelementptr inbounds %struct.ck_ht, %struct.ck_ht* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CK_HT_MODE_BYTESTRING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %14
  %25 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = call i8* @ck_ht_entry_key(%struct.TYPE_5__* %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = call i32 @ck_ht_entry_key_length(%struct.TYPE_5__* %29)
  %31 = call %struct.ck_ht_entry* @ck_ht_map_probe_wr(%struct.ck_ht_map* %25, i32 %26, %struct.ck_ht_entry* %8, %struct.ck_ht_entry** %10, i8* %28, i32 %30, i32* %12, i32* %13)
  store %struct.ck_ht_entry* %31, %struct.ck_ht_entry** %9, align 8
  br label %40

32:                                               ; preds = %14
  %33 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call %struct.ck_ht_entry* @ck_ht_map_probe_wr(%struct.ck_ht_map* %33, i32 %34, %struct.ck_ht_entry* %8, %struct.ck_ht_entry** %10, i8* %38, i32 8, i32* %12, i32* %13)
  store %struct.ck_ht_entry* %39, %struct.ck_ht_entry** %9, align 8
  br label %40

40:                                               ; preds = %32, %24
  %41 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %42 = icmp ne %struct.ck_ht_entry* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  %45 = icmp ne %struct.ck_ht_entry* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40
  br label %57

47:                                               ; preds = %43
  %48 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %49 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %50 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 1
  %53 = call i32 @ck_ht_grow_spmc(%struct.ck_ht* %48, i32 %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %140

56:                                               ; preds = %47
  br label %14

57:                                               ; preds = %46
  %58 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  %59 = icmp ne %struct.ck_ht_entry* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %62 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %61, i32 0, i32 1
  %63 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %64 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i32 @CK_HT_TYPE_STORE(i32* %62, i32 %66)
  %68 = call i32 (...) @ck_pr_fence_store()
  %69 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %10, align 8
  store %struct.ck_ht_entry* %69, %struct.ck_ht_entry** %9, align 8
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %12, align 4
  br label %85

71:                                               ; preds = %57
  %72 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %73 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CK_HT_KEY_EMPTY, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %79 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CK_HT_KEY_TOMBSTONE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %140

84:                                               ; preds = %77, %71
  br label %85

85:                                               ; preds = %84, %60
  %86 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @ck_ht_map_bound_set(%struct.ck_ht_map* %86, i32 %87, i32 %88)
  %90 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %91 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %90, i32 0, i32 2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @CK_HT_TYPE_STORE(i32* %91, i32 %94)
  %96 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %97 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %96, i32 0, i32 3
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @CK_HT_TYPE_STORE(i32* %97, i32 %100)
  %102 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %103 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 @ck_pr_store_ptr_unsafe(i64* %103, i8* %107)
  %109 = call i32 (...) @ck_pr_fence_store()
  %110 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %9, align 8
  %111 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 @ck_pr_store_ptr_unsafe(i64* %111, i8* %115)
  %117 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %118 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %117, i32 0, i32 2
  %119 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %120 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  %123 = call i32 @CK_HT_TYPE_STORE(i32* %118, i32 %122)
  %124 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %125 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %126, 2
  %128 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %129 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %127, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %85
  %133 = load %struct.ck_ht*, %struct.ck_ht** %5, align 8
  %134 = load %struct.ck_ht_map*, %struct.ck_ht_map** %11, align 8
  %135 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 1
  %138 = call i32 @ck_ht_grow_spmc(%struct.ck_ht* %133, i32 %137)
  br label %139

139:                                              ; preds = %132, %85
  store i32 1, i32* %4, align 4
  br label %140

140:                                              ; preds = %139, %83, %55
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.ck_ht_entry* @ck_ht_map_probe_wr(%struct.ck_ht_map*, i32, %struct.ck_ht_entry*, %struct.ck_ht_entry**, i8*, i32, i32*, i32*) #1

declare dso_local i8* @ck_ht_entry_key(%struct.TYPE_5__*) #1

declare dso_local i32 @ck_ht_entry_key_length(%struct.TYPE_5__*) #1

declare dso_local i32 @ck_ht_grow_spmc(%struct.ck_ht*, i32) #1

declare dso_local i32 @CK_HT_TYPE_STORE(i32*, i32) #1

declare dso_local i32 @ck_pr_fence_store(...) #1

declare dso_local i32 @ck_ht_map_bound_set(%struct.ck_ht_map*, i32, i32) #1

declare dso_local i32 @ck_pr_store_ptr_unsafe(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
