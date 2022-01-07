; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_new_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_new_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash_entry = type { i8*, i8*, i32, i32 }
%struct.infra_cache = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.infra_data = type { i64, %struct.lruhash_entry, i32, i32, i32 }
%struct.infra_key = type { i64, %struct.lruhash_entry, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lruhash_entry* (%struct.infra_cache*, %struct.sockaddr_storage*, i32, i32*, i64, i32)* @new_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lruhash_entry* @new_entry(%struct.infra_cache* %0, %struct.sockaddr_storage* %1, i32 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.lruhash_entry*, align 8
  %8 = alloca %struct.infra_cache*, align 8
  %9 = alloca %struct.sockaddr_storage*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.infra_data*, align 8
  %15 = alloca %struct.infra_key*, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %8, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = call i64 @malloc(i32 48)
  %17 = inttoptr i64 %16 to %struct.infra_key*
  store %struct.infra_key* %17, %struct.infra_key** %15, align 8
  %18 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %19 = icmp ne %struct.infra_key* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store %struct.lruhash_entry* null, %struct.lruhash_entry** %7, align 8
  br label %85

21:                                               ; preds = %6
  %22 = call i64 @malloc(i32 48)
  %23 = inttoptr i64 %22 to %struct.infra_data*
  store %struct.infra_data* %23, %struct.infra_data** %14, align 8
  %24 = load %struct.infra_data*, %struct.infra_data** %14, align 8
  %25 = icmp ne %struct.infra_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %28 = call i32 @free(%struct.infra_key* %27)
  store %struct.lruhash_entry* null, %struct.lruhash_entry** %7, align 8
  br label %85

29:                                               ; preds = %21
  %30 = load i32*, i32** %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @memdup(i32* %30, i64 %31)
  %33 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %34 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %36 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %41 = call i32 @free(%struct.infra_key* %40)
  %42 = load %struct.infra_data*, %struct.infra_data** %14, align 8
  %43 = bitcast %struct.infra_data* %42 to %struct.infra_key*
  %44 = call i32 @free(%struct.infra_key* %43)
  store %struct.lruhash_entry* null, %struct.lruhash_entry** %7, align 8
  br label %85

45:                                               ; preds = %29
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %48 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %50 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %50, i32 0, i32 3
  %52 = call i32 @lock_rw_init(i32* %51)
  %53 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @hash_infra(%struct.sockaddr_storage* %53, i32 %54, i32* %55)
  %57 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %58 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %61 = bitcast %struct.infra_key* %60 to i8*
  %62 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %63 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load %struct.infra_data*, %struct.infra_data** %14, align 8
  %66 = bitcast %struct.infra_data* %65 to i8*
  %67 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %68 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %72 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %74 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %73, i32 0, i32 2
  %75 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @memcpy(i32* %74, %struct.sockaddr_storage* %75, i32 %76)
  %78 = load %struct.infra_cache*, %struct.infra_cache** %8, align 8
  %79 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %80 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %79, i32 0, i32 1
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @data_entry_init(%struct.infra_cache* %78, %struct.lruhash_entry* %80, i32 %81)
  %83 = load %struct.infra_key*, %struct.infra_key** %15, align 8
  %84 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %83, i32 0, i32 1
  store %struct.lruhash_entry* %84, %struct.lruhash_entry** %7, align 8
  br label %85

85:                                               ; preds = %45, %39, %26, %20
  %86 = load %struct.lruhash_entry*, %struct.lruhash_entry** %7, align 8
  ret %struct.lruhash_entry* %86
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(%struct.infra_key*) #1

declare dso_local i32 @memdup(i32*, i64) #1

declare dso_local i32 @lock_rw_init(i32*) #1

declare dso_local i32 @hash_infra(%struct.sockaddr_storage*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @data_entry_init(%struct.infra_cache*, %struct.lruhash_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
