; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_edns_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_edns_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.lruhash_entry = type { i32, i64, i32 }
%struct.infra_data = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @infra_edns_update(%struct.infra_cache* %0, %struct.sockaddr_storage* %1, i32 %2, i32* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.infra_cache*, align 8
  %10 = alloca %struct.sockaddr_storage*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.lruhash_entry*, align 8
  %17 = alloca %struct.infra_data*, align 8
  %18 = alloca i32, align 4
  store %struct.infra_cache* %0, %struct.infra_cache** %9, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.infra_cache*, %struct.infra_cache** %9, align 8
  %20 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = load i64, i64* %13, align 8
  %24 = call %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache* %19, %struct.sockaddr_storage* %20, i32 %21, i32* %22, i64 %23, i32 1)
  store %struct.lruhash_entry* %24, %struct.lruhash_entry** %16, align 8
  store i32 0, i32* %18, align 4
  %25 = load %struct.lruhash_entry*, %struct.lruhash_entry** %16, align 8
  %26 = icmp ne %struct.lruhash_entry* %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %7
  %28 = load %struct.infra_cache*, %struct.infra_cache** %9, align 8
  %29 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call %struct.lruhash_entry* @new_entry(%struct.infra_cache* %28, %struct.sockaddr_storage* %29, i32 %30, i32* %31, i64 %32, i32 %33)
  store %struct.lruhash_entry* %34, %struct.lruhash_entry** %16, align 8
  %35 = icmp ne %struct.lruhash_entry* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %96

37:                                               ; preds = %27
  store i32 1, i32* %18, align 4
  br label %53

38:                                               ; preds = %7
  %39 = load %struct.lruhash_entry*, %struct.lruhash_entry** %16, align 8
  %40 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.infra_data*
  %43 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.infra_cache*, %struct.infra_cache** %9, align 8
  %49 = load %struct.lruhash_entry*, %struct.lruhash_entry** %16, align 8
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @data_entry_init(%struct.infra_cache* %48, %struct.lruhash_entry* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %38
  br label %53

53:                                               ; preds = %52, %37
  %54 = load %struct.lruhash_entry*, %struct.lruhash_entry** %16, align 8
  %55 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.infra_data*
  store %struct.infra_data* %57, %struct.infra_data** %17, align 8
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.infra_data*, %struct.infra_data** %17, align 8
  %62 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.infra_data*, %struct.infra_data** %17, align 8
  %67 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65, %60, %53
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.infra_data*, %struct.infra_data** %17, align 8
  %73 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.infra_data*, %struct.infra_data** %17, align 8
  %75 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load %struct.infra_cache*, %struct.infra_cache** %9, align 8
  %81 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.lruhash_entry*, %struct.lruhash_entry** %16, align 8
  %84 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.lruhash_entry*, %struct.lruhash_entry** %16, align 8
  %87 = load %struct.lruhash_entry*, %struct.lruhash_entry** %16, align 8
  %88 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @slabhash_insert(i32 %82, i32 %85, %struct.lruhash_entry* %86, i64 %89, i32* null)
  br label %95

91:                                               ; preds = %76
  %92 = load %struct.lruhash_entry*, %struct.lruhash_entry** %16, align 8
  %93 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %92, i32 0, i32 0
  %94 = call i32 @lock_rw_unlock(i32* %93)
  br label %95

95:                                               ; preds = %91, %79
  store i32 1, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %36
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache*, %struct.sockaddr_storage*, i32, i32*, i64, i32) #1

declare dso_local %struct.lruhash_entry* @new_entry(%struct.infra_cache*, %struct.sockaddr_storage*, i32, i32*, i64, i32) #1

declare dso_local i32 @data_entry_init(%struct.infra_cache*, %struct.lruhash_entry*, i32) #1

declare dso_local i32 @slabhash_insert(i32, i32, %struct.lruhash_entry*, i64, i32*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
