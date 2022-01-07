; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_insert_or_retrieve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_insert_or_retrieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash = type { i64 (i32, i8*)*, i64, i64, i64, i64, i64, i32 (i8*, i8*)*, i32 (i32, i8*)*, i32, %struct.lruhash_bin*, i8*, i32, i32 }
%struct.lruhash_bin = type { i32, %struct.lruhash_entry* }
%struct.lruhash_entry = type { i32, i8*, %struct.lruhash_entry*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lruhash_entry* @lruhash_insert_or_retrieve(%struct.lruhash* %0, i64 %1, %struct.lruhash_entry* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.lruhash*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lruhash_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.lruhash_bin*, align 8
  %12 = alloca %struct.lruhash_entry*, align 8
  %13 = alloca %struct.lruhash_entry*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.lruhash_entry*, align 8
  %16 = alloca i8*, align 8
  store %struct.lruhash* %0, %struct.lruhash** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.lruhash_entry* %2, %struct.lruhash_entry** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store %struct.lruhash_entry* null, %struct.lruhash_entry** %13, align 8
  %17 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %18 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %17, i32 0, i32 0
  %19 = load i64 (i32, i8*)*, i64 (i32, i8*)** %18, align 8
  %20 = call i32 @fptr_whitelist_hash_sizefunc(i64 (i32, i8*)* %19)
  %21 = call i32 @fptr_ok(i32 %20)
  %22 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %23 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %22, i32 0, i32 7
  %24 = load i32 (i32, i8*)*, i32 (i32, i8*)** %23, align 8
  %25 = call i32 @fptr_whitelist_hash_delkeyfunc(i32 (i32, i8*)* %24)
  %26 = call i32 @fptr_ok(i32 %25)
  %27 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %28 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %27, i32 0, i32 6
  %29 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %28, align 8
  %30 = call i32 @fptr_whitelist_hash_deldatafunc(i32 (i8*, i8*)* %29)
  %31 = call i32 @fptr_ok(i32 %30)
  %32 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %33 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @fptr_whitelist_hash_compfunc(i32 %34)
  %36 = call i32 @fptr_ok(i32 %35)
  %37 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %38 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @fptr_whitelist_hash_markdelfunc(i32 %39)
  %41 = call i32 @fptr_ok(i32 %40)
  %42 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %43 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %42, i32 0, i32 0
  %44 = load i64 (i32, i8*)*, i64 (i32, i8*)** %43, align 8
  %45 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %46 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i64 %44(i32 %47, i8* %48)
  store i64 %49, i64* %14, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %5
  %53 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %54 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %53, i32 0, i32 10
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %10, align 8
  br label %56

56:                                               ; preds = %52, %5
  %57 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %58 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %57, i32 0, i32 8
  %59 = call i32 @lock_quick_lock(i32* %58)
  %60 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %61 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %60, i32 0, i32 9
  %62 = load %struct.lruhash_bin*, %struct.lruhash_bin** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %65 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = and i64 %63, %66
  %68 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %62, i64 %67
  store %struct.lruhash_bin* %68, %struct.lruhash_bin** %11, align 8
  %69 = load %struct.lruhash_bin*, %struct.lruhash_bin** %11, align 8
  %70 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %69, i32 0, i32 0
  %71 = call i32 @lock_quick_lock(i32* %70)
  %72 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %73 = load %struct.lruhash_bin*, %struct.lruhash_bin** %11, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %76 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.lruhash_entry* @bin_find_entry(%struct.lruhash* %72, %struct.lruhash_bin* %73, i64 %74, i32 %77)
  store %struct.lruhash_entry* %78, %struct.lruhash_entry** %12, align 8
  %79 = icmp ne %struct.lruhash_entry* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %56
  %81 = load %struct.lruhash_entry*, %struct.lruhash_entry** %12, align 8
  %82 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %81, i32 0, i32 3
  %83 = call i32 @lock_rw_wrlock(i32* %82)
  br label %109

84:                                               ; preds = %56
  %85 = load %struct.lruhash_bin*, %struct.lruhash_bin** %11, align 8
  %86 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %85, i32 0, i32 1
  %87 = load %struct.lruhash_entry*, %struct.lruhash_entry** %86, align 8
  %88 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %89 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %88, i32 0, i32 2
  store %struct.lruhash_entry* %87, %struct.lruhash_entry** %89, align 8
  %90 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %91 = load %struct.lruhash_bin*, %struct.lruhash_bin** %11, align 8
  %92 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %91, i32 0, i32 1
  store %struct.lruhash_entry* %90, %struct.lruhash_entry** %92, align 8
  %93 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %94 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %95 = call i32 @lru_front(%struct.lruhash* %93, %struct.lruhash_entry* %94)
  %96 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %97 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %102 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, %100
  store i64 %104, i64* %102, align 8
  %105 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  store %struct.lruhash_entry* %105, %struct.lruhash_entry** %12, align 8
  %106 = load %struct.lruhash_entry*, %struct.lruhash_entry** %12, align 8
  %107 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %106, i32 0, i32 3
  %108 = call i32 @lock_rw_wrlock(i32* %107)
  br label %109

109:                                              ; preds = %84, %80
  %110 = load %struct.lruhash_bin*, %struct.lruhash_bin** %11, align 8
  %111 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %110, i32 0, i32 0
  %112 = call i32 @lock_quick_unlock(i32* %111)
  %113 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %114 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %117 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %115, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %109
  %121 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %122 = call i32 @reclaim_space(%struct.lruhash* %121, %struct.lruhash_entry** %13)
  br label %123

123:                                              ; preds = %120, %109
  %124 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %125 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %128 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp sge i64 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %133 = call i32 @table_grow(%struct.lruhash* %132)
  br label %134

134:                                              ; preds = %131, %123
  %135 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %136 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %135, i32 0, i32 8
  %137 = call i32 @lock_quick_unlock(i32* %136)
  br label %138

138:                                              ; preds = %141, %134
  %139 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %140 = icmp ne %struct.lruhash_entry* %139, null
  br i1 %140, label %141, label %163

141:                                              ; preds = %138
  %142 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %143 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %142, i32 0, i32 2
  %144 = load %struct.lruhash_entry*, %struct.lruhash_entry** %143, align 8
  store %struct.lruhash_entry* %144, %struct.lruhash_entry** %15, align 8
  %145 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %146 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** %16, align 8
  %148 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %149 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %148, i32 0, i32 7
  %150 = load i32 (i32, i8*)*, i32 (i32, i8*)** %149, align 8
  %151 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %152 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = call i32 %150(i32 %153, i8* %154)
  %156 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %157 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %156, i32 0, i32 6
  %158 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %157, align 8
  %159 = load i8*, i8** %16, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = call i32 %158(i8* %159, i8* %160)
  %162 = load %struct.lruhash_entry*, %struct.lruhash_entry** %15, align 8
  store %struct.lruhash_entry* %162, %struct.lruhash_entry** %13, align 8
  br label %138

163:                                              ; preds = %138
  %164 = load %struct.lruhash_entry*, %struct.lruhash_entry** %12, align 8
  ret %struct.lruhash_entry* %164
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_hash_sizefunc(i64 (i32, i8*)*) #1

declare dso_local i32 @fptr_whitelist_hash_delkeyfunc(i32 (i32, i8*)*) #1

declare dso_local i32 @fptr_whitelist_hash_deldatafunc(i32 (i8*, i8*)*) #1

declare dso_local i32 @fptr_whitelist_hash_compfunc(i32) #1

declare dso_local i32 @fptr_whitelist_hash_markdelfunc(i32) #1

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local %struct.lruhash_entry* @bin_find_entry(%struct.lruhash*, %struct.lruhash_bin*, i64, i32) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @lru_front(%struct.lruhash*, %struct.lruhash_entry*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

declare dso_local i32 @reclaim_space(%struct.lruhash*, %struct.lruhash_entry**) #1

declare dso_local i32 @table_grow(%struct.lruhash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
