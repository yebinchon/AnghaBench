; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash = type { i64, i32, i32 (i8*, i32)*, i32 (i32, i32)*, i32 (i32)*, i32, i64 (i32, i8*)*, i32, i32, %struct.lruhash_bin*, i32 }
%struct.lruhash_bin = type { i32 }
%struct.lruhash_entry = type { i32, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lruhash_remove(%struct.lruhash* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.lruhash*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lruhash_entry*, align 8
  %8 = alloca %struct.lruhash_bin*, align 8
  %9 = alloca i8*, align 8
  store %struct.lruhash* %0, %struct.lruhash** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %11 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %10, i32 0, i32 6
  %12 = load i64 (i32, i8*)*, i64 (i32, i8*)** %11, align 8
  %13 = call i32 @fptr_whitelist_hash_sizefunc(i64 (i32, i8*)* %12)
  %14 = call i32 @fptr_ok(i32 %13)
  %15 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %16 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %15, i32 0, i32 3
  %17 = load i32 (i32, i32)*, i32 (i32, i32)** %16, align 8
  %18 = call i32 @fptr_whitelist_hash_delkeyfunc(i32 (i32, i32)* %17)
  %19 = call i32 @fptr_ok(i32 %18)
  %20 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %21 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %20, i32 0, i32 2
  %22 = load i32 (i8*, i32)*, i32 (i8*, i32)** %21, align 8
  %23 = call i32 @fptr_whitelist_hash_deldatafunc(i32 (i8*, i32)* %22)
  %24 = call i32 @fptr_ok(i32 %23)
  %25 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %26 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @fptr_whitelist_hash_compfunc(i32 %27)
  %29 = call i32 @fptr_ok(i32 %28)
  %30 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %31 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %30, i32 0, i32 4
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = call i32 @fptr_whitelist_hash_markdelfunc(i32 (i32)* %32)
  %34 = call i32 @fptr_ok(i32 %33)
  %35 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %36 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %35, i32 0, i32 5
  %37 = call i32 @lock_quick_lock(i32* %36)
  %38 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %39 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %38, i32 0, i32 9
  %40 = load %struct.lruhash_bin*, %struct.lruhash_bin** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %43 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = and i64 %41, %44
  %46 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %40, i64 %45
  store %struct.lruhash_bin* %46, %struct.lruhash_bin** %8, align 8
  %47 = load %struct.lruhash_bin*, %struct.lruhash_bin** %8, align 8
  %48 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %47, i32 0, i32 0
  %49 = call i32 @lock_quick_lock(i32* %48)
  %50 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %51 = load %struct.lruhash_bin*, %struct.lruhash_bin** %8, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call %struct.lruhash_entry* @bin_find_entry(%struct.lruhash* %50, %struct.lruhash_bin* %51, i64 %52, i8* %53)
  store %struct.lruhash_entry* %54, %struct.lruhash_entry** %7, align 8
  %55 = icmp ne %struct.lruhash_entry* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %3
  %57 = load %struct.lruhash_bin*, %struct.lruhash_bin** %8, align 8
  %58 = load %struct.lruhash_entry*, %struct.lruhash_entry** %7, align 8
  %59 = call i32 @bin_overflow_remove(%struct.lruhash_bin* %57, %struct.lruhash_entry* %58)
  %60 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %61 = load %struct.lruhash_entry*, %struct.lruhash_entry** %7, align 8
  %62 = call i32 @lru_remove(%struct.lruhash* %60, %struct.lruhash_entry* %61)
  br label %70

63:                                               ; preds = %3
  %64 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %65 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %64, i32 0, i32 5
  %66 = call i32 @lock_quick_unlock(i32* %65)
  %67 = load %struct.lruhash_bin*, %struct.lruhash_bin** %8, align 8
  %68 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %67, i32 0, i32 0
  %69 = call i32 @lock_quick_unlock(i32* %68)
  br label %137

70:                                               ; preds = %56
  %71 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %72 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %76 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %75, i32 0, i32 6
  %77 = load i64 (i32, i8*)*, i64 (i32, i8*)** %76, align 8
  %78 = load %struct.lruhash_entry*, %struct.lruhash_entry** %7, align 8
  %79 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.lruhash_entry*, %struct.lruhash_entry** %7, align 8
  %82 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 %77(i32 %80, i8* %83)
  %85 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %86 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  %91 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %92 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %91, i32 0, i32 5
  %93 = call i32 @lock_quick_unlock(i32* %92)
  %94 = load %struct.lruhash_entry*, %struct.lruhash_entry** %7, align 8
  %95 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %94, i32 0, i32 2
  %96 = call i32 @lock_rw_wrlock(i32* %95)
  %97 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %98 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %97, i32 0, i32 4
  %99 = load i32 (i32)*, i32 (i32)** %98, align 8
  %100 = icmp ne i32 (i32)* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %70
  %102 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %103 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %102, i32 0, i32 4
  %104 = load i32 (i32)*, i32 (i32)** %103, align 8
  %105 = load %struct.lruhash_entry*, %struct.lruhash_entry** %7, align 8
  %106 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 %104(i32 %107)
  br label %109

109:                                              ; preds = %101, %70
  %110 = load %struct.lruhash_entry*, %struct.lruhash_entry** %7, align 8
  %111 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %110, i32 0, i32 2
  %112 = call i32 @lock_rw_unlock(i32* %111)
  %113 = load %struct.lruhash_bin*, %struct.lruhash_bin** %8, align 8
  %114 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %113, i32 0, i32 0
  %115 = call i32 @lock_quick_unlock(i32* %114)
  %116 = load %struct.lruhash_entry*, %struct.lruhash_entry** %7, align 8
  %117 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %9, align 8
  %119 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %120 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %119, i32 0, i32 3
  %121 = load i32 (i32, i32)*, i32 (i32, i32)** %120, align 8
  %122 = load %struct.lruhash_entry*, %struct.lruhash_entry** %7, align 8
  %123 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %126 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 %121(i32 %124, i32 %127)
  %129 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %130 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %129, i32 0, i32 2
  %131 = load i32 (i8*, i32)*, i32 (i8*, i32)** %130, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %134 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 %131(i8* %132, i32 %135)
  br label %137

137:                                              ; preds = %109, %63
  ret void
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_hash_sizefunc(i64 (i32, i8*)*) #1

declare dso_local i32 @fptr_whitelist_hash_delkeyfunc(i32 (i32, i32)*) #1

declare dso_local i32 @fptr_whitelist_hash_deldatafunc(i32 (i8*, i32)*) #1

declare dso_local i32 @fptr_whitelist_hash_compfunc(i32) #1

declare dso_local i32 @fptr_whitelist_hash_markdelfunc(i32 (i32)*) #1

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local %struct.lruhash_entry* @bin_find_entry(%struct.lruhash*, %struct.lruhash_bin*, i64, i8*) #1

declare dso_local i32 @bin_overflow_remove(%struct.lruhash_bin*, %struct.lruhash_entry*) #1

declare dso_local i32 @lru_remove(%struct.lruhash*, %struct.lruhash_entry*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
