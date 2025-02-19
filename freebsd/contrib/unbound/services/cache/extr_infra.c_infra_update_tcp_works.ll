; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_update_tcp_works.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_update_tcp_works.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.lruhash_entry = type { i32, i64 }
%struct.infra_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RTT_MAX_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @infra_update_tcp_works(%struct.infra_cache* %0, %struct.sockaddr_storage* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.infra_cache*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.lruhash_entry*, align 8
  %12 = alloca %struct.infra_data*, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %6, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.infra_cache*, %struct.infra_cache** %6, align 8
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache* %13, %struct.sockaddr_storage* %14, i32 %15, i32* %16, i64 %17, i32 1)
  store %struct.lruhash_entry* %18, %struct.lruhash_entry** %11, align 8
  %19 = load %struct.lruhash_entry*, %struct.lruhash_entry** %11, align 8
  %20 = icmp ne %struct.lruhash_entry* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %43

22:                                               ; preds = %5
  %23 = load %struct.lruhash_entry*, %struct.lruhash_entry** %11, align 8
  %24 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.infra_data*
  store %struct.infra_data* %26, %struct.infra_data** %12, align 8
  %27 = load %struct.infra_data*, %struct.infra_data** %12, align 8
  %28 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RTT_MAX_TIMEOUT, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load i64, i64* @RTT_MAX_TIMEOUT, align 8
  %35 = sub nsw i64 %34, 1000
  %36 = load %struct.infra_data*, %struct.infra_data** %12, align 8
  %37 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  br label %39

39:                                               ; preds = %33, %22
  %40 = load %struct.lruhash_entry*, %struct.lruhash_entry** %11, align 8
  %41 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %40, i32 0, i32 0
  %42 = call i32 @lock_rw_unlock(i32* %41)
  br label %43

43:                                               ; preds = %39, %21
  ret void
}

declare dso_local %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache*, %struct.sockaddr_storage*, i32, i32*, i64, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
