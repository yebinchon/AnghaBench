; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash = type { i64 (i32, i8*)*, i64, i64, i64, i64, i64, i32 (i8*, i8*)*, i32 (i32, i8*)*, i32, %struct.lruhash_bin*, i8*, i32, i32 }
%struct.lruhash_bin = type { i32, %struct.lruhash_entry* }
%struct.lruhash_entry = type { i8*, i32, %struct.lruhash_entry*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lruhash_insert(%struct.lruhash* %0, i64 %1, %struct.lruhash_entry* %2, i8* %3, i8* %4) #0 {
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
  %46 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %45, i32 0, i32 1
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
  %76 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.lruhash_entry* @bin_find_entry(%struct.lruhash* %72, %struct.lruhash_bin* %73, i64 %74, i32 %77)
  store %struct.lruhash_entry* %78, %struct.lruhash_entry** %12, align 8
  %79 = icmp ne %struct.lruhash_entry* %78, null
  br i1 %79, label %101, label %80

80:                                               ; preds = %56
  %81 = load %struct.lruhash_bin*, %struct.lruhash_bin** %11, align 8
  %82 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %81, i32 0, i32 1
  %83 = load %struct.lruhash_entry*, %struct.lruhash_entry** %82, align 8
  %84 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %85 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %84, i32 0, i32 2
  store %struct.lruhash_entry* %83, %struct.lruhash_entry** %85, align 8
  %86 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %87 = load %struct.lruhash_bin*, %struct.lruhash_bin** %11, align 8
  %88 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %87, i32 0, i32 1
  store %struct.lruhash_entry* %86, %struct.lruhash_entry** %88, align 8
  %89 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %90 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %91 = call i32 @lru_front(%struct.lruhash* %89, %struct.lruhash_entry* %90)
  %92 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %93 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %98 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, %96
  store i64 %100, i64* %98, align 8
  br label %146

101:                                              ; preds = %56
  %102 = load i64, i64* %14, align 8
  %103 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %104 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %103, i32 0, i32 0
  %105 = load i64 (i32, i8*)*, i64 (i32, i8*)** %104, align 8
  %106 = load %struct.lruhash_entry*, %struct.lruhash_entry** %12, align 8
  %107 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.lruhash_entry*, %struct.lruhash_entry** %12, align 8
  %110 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 %105(i32 %108, i8* %111)
  %113 = sub i64 %102, %112
  %114 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %115 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %119 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %118, i32 0, i32 7
  %120 = load i32 (i32, i8*)*, i32 (i32, i8*)** %119, align 8
  %121 = load %struct.lruhash_entry*, %struct.lruhash_entry** %8, align 8
  %122 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 %120(i32 %123, i8* %124)
  %126 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %127 = load %struct.lruhash_entry*, %struct.lruhash_entry** %12, align 8
  %128 = call i32 @lru_touch(%struct.lruhash* %126, %struct.lruhash_entry* %127)
  %129 = load %struct.lruhash_entry*, %struct.lruhash_entry** %12, align 8
  %130 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %129, i32 0, i32 3
  %131 = call i32 @lock_rw_wrlock(i32* %130)
  %132 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %133 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %132, i32 0, i32 6
  %134 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %133, align 8
  %135 = load %struct.lruhash_entry*, %struct.lruhash_entry** %12, align 8
  %136 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 %134(i8* %137, i8* %138)
  %140 = load i8*, i8** %9, align 8
  %141 = load %struct.lruhash_entry*, %struct.lruhash_entry** %12, align 8
  %142 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  %143 = load %struct.lruhash_entry*, %struct.lruhash_entry** %12, align 8
  %144 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %143, i32 0, i32 3
  %145 = call i32 @lock_rw_unlock(i32* %144)
  br label %146

146:                                              ; preds = %101, %80
  %147 = load %struct.lruhash_bin*, %struct.lruhash_bin** %11, align 8
  %148 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %147, i32 0, i32 0
  %149 = call i32 @lock_quick_unlock(i32* %148)
  %150 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %151 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %154 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = icmp ugt i64 %152, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %146
  %158 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %159 = call i32 @reclaim_space(%struct.lruhash* %158, %struct.lruhash_entry** %13)
  br label %160

160:                                              ; preds = %157, %146
  %161 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %162 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %165 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = icmp sge i64 %163, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %160
  %169 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %170 = call i32 @table_grow(%struct.lruhash* %169)
  br label %171

171:                                              ; preds = %168, %160
  %172 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %173 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %172, i32 0, i32 8
  %174 = call i32 @lock_quick_unlock(i32* %173)
  br label %175

175:                                              ; preds = %178, %171
  %176 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %177 = icmp ne %struct.lruhash_entry* %176, null
  br i1 %177, label %178, label %200

178:                                              ; preds = %175
  %179 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %180 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %179, i32 0, i32 2
  %181 = load %struct.lruhash_entry*, %struct.lruhash_entry** %180, align 8
  store %struct.lruhash_entry* %181, %struct.lruhash_entry** %15, align 8
  %182 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %183 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  store i8* %184, i8** %16, align 8
  %185 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %186 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %185, i32 0, i32 7
  %187 = load i32 (i32, i8*)*, i32 (i32, i8*)** %186, align 8
  %188 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %189 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i8*, i8** %10, align 8
  %192 = call i32 %187(i32 %190, i8* %191)
  %193 = load %struct.lruhash*, %struct.lruhash** %6, align 8
  %194 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %193, i32 0, i32 6
  %195 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %194, align 8
  %196 = load i8*, i8** %16, align 8
  %197 = load i8*, i8** %10, align 8
  %198 = call i32 %195(i8* %196, i8* %197)
  %199 = load %struct.lruhash_entry*, %struct.lruhash_entry** %15, align 8
  store %struct.lruhash_entry* %199, %struct.lruhash_entry** %13, align 8
  br label %175

200:                                              ; preds = %175
  ret void
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_hash_sizefunc(i64 (i32, i8*)*) #1

declare dso_local i32 @fptr_whitelist_hash_delkeyfunc(i32 (i32, i8*)*) #1

declare dso_local i32 @fptr_whitelist_hash_deldatafunc(i32 (i8*, i8*)*) #1

declare dso_local i32 @fptr_whitelist_hash_compfunc(i32) #1

declare dso_local i32 @fptr_whitelist_hash_markdelfunc(i32) #1

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local %struct.lruhash_entry* @bin_find_entry(%struct.lruhash*, %struct.lruhash_bin*, i64, i32) #1

declare dso_local i32 @lru_front(%struct.lruhash*, %struct.lruhash_entry*) #1

declare dso_local i32 @lru_touch(%struct.lruhash*, %struct.lruhash_entry*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

declare dso_local i32 @reclaim_space(%struct.lruhash*, %struct.lruhash_entry**) #1

declare dso_local i32 @table_grow(%struct.lruhash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
