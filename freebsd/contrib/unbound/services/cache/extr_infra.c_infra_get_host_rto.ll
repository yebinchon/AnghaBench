; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_get_host_rto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_get_host_rto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.rtt_info = type { i32 }
%struct.lruhash_entry = type { i32, i64 }
%struct.infra_data = type { i64, i64, i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @infra_get_host_rto(%struct.infra_cache* %0, %struct.sockaddr_storage* %1, i32 %2, i32* %3, i64 %4, %struct.rtt_info* %5, i32* %6, i64 %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca %struct.infra_cache*, align 8
  %14 = alloca %struct.sockaddr_storage*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.rtt_info*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.lruhash_entry*, align 8
  %25 = alloca %struct.infra_data*, align 8
  %26 = alloca i64, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %13, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32* %3, i32** %16, align 8
  store i64 %4, i64* %17, align 8
  store %struct.rtt_info* %5, %struct.rtt_info** %18, align 8
  store i32* %6, i32** %19, align 8
  store i64 %7, i64* %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %27 = load %struct.infra_cache*, %struct.infra_cache** %13, align 8
  %28 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %14, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i32*, i32** %16, align 8
  %31 = load i64, i64* %17, align 8
  %32 = call %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache* %27, %struct.sockaddr_storage* %28, i32 %29, i32* %30, i64 %31, i32 0)
  store %struct.lruhash_entry* %32, %struct.lruhash_entry** %24, align 8
  store i64 -2, i64* %26, align 8
  %33 = load %struct.lruhash_entry*, %struct.lruhash_entry** %24, align 8
  %34 = icmp ne %struct.lruhash_entry* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %11
  store i64 -1, i64* %12, align 8
  br label %92

36:                                               ; preds = %11
  %37 = load %struct.lruhash_entry*, %struct.lruhash_entry** %24, align 8
  %38 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.infra_data*
  store %struct.infra_data* %40, %struct.infra_data** %25, align 8
  %41 = load %struct.infra_data*, %struct.infra_data** %25, align 8
  %42 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %20, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %36
  %47 = load %struct.infra_data*, %struct.infra_data** %25, align 8
  %48 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %20, align 8
  %51 = sub nsw i64 %49, %50
  store i64 %51, i64* %26, align 8
  %52 = load %struct.rtt_info*, %struct.rtt_info** %18, align 8
  %53 = load %struct.infra_data*, %struct.infra_data** %25, align 8
  %54 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %53, i32 0, i32 5
  %55 = call i32 @memmove(%struct.rtt_info* %52, i32* %54, i32 4)
  %56 = load i64, i64* %20, align 8
  %57 = load %struct.infra_data*, %struct.infra_data** %25, align 8
  %58 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %46
  %62 = load %struct.infra_data*, %struct.infra_data** %25, align 8
  %63 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %20, align 8
  %66 = sub nsw i64 %64, %65
  %67 = trunc i64 %66 to i32
  %68 = load i32*, i32** %19, align 8
  store i32 %67, i32* %68, align 4
  br label %71

69:                                               ; preds = %46
  %70 = load i32*, i32** %19, align 8
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %69, %61
  br label %72

72:                                               ; preds = %71, %36
  %73 = load %struct.infra_data*, %struct.infra_data** %25, align 8
  %74 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32*, i32** %21, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.infra_data*, %struct.infra_data** %25, align 8
  %79 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32*, i32** %22, align 8
  store i32 %81, i32* %82, align 4
  %83 = load %struct.infra_data*, %struct.infra_data** %25, align 8
  %84 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32*, i32** %23, align 8
  store i32 %86, i32* %87, align 4
  %88 = load %struct.lruhash_entry*, %struct.lruhash_entry** %24, align 8
  %89 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %88, i32 0, i32 0
  %90 = call i32 @lock_rw_unlock(i32* %89)
  %91 = load i64, i64* %26, align 8
  store i64 %91, i64* %12, align 8
  br label %92

92:                                               ; preds = %72, %35
  %93 = load i64, i64* %12, align 8
  ret i64 %93
}

declare dso_local %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache*, %struct.sockaddr_storage*, i32, i32*, i64, i32) #1

declare dso_local i32 @memmove(%struct.rtt_info*, i32*, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
