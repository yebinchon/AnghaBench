; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_data_entry_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_data_entry_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i64 }
%struct.lruhash_entry = type { i64 }
%struct.infra_data = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.infra_cache*, %struct.lruhash_entry*, i64)* @data_entry_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_entry_init(%struct.infra_cache* %0, %struct.lruhash_entry* %1, i64 %2) #0 {
  %4 = alloca %struct.infra_cache*, align 8
  %5 = alloca %struct.lruhash_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.infra_data*, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %4, align 8
  store %struct.lruhash_entry* %1, %struct.lruhash_entry** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.lruhash_entry*, %struct.lruhash_entry** %5, align 8
  %9 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.infra_data*
  store %struct.infra_data* %11, %struct.infra_data** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %14 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %18 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %17, i32 0, i32 11
  store i64 %16, i64* %18, align 8
  %19 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %20 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %19, i32 0, i32 10
  %21 = call i32 @rtt_init(i32* %20)
  %22 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %23 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %22, i32 0, i32 9
  store i64 0, i64* %23, align 8
  %24 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %25 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %24, i32 0, i32 8
  store i64 0, i64* %25, align 8
  %26 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %27 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %26, i32 0, i32 7
  store i64 0, i64* %27, align 8
  %28 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %29 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %31 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %33 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %35 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %37 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %39 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.infra_data*, %struct.infra_data** %7, align 8
  %41 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  ret void
}

declare dso_local i32 @rtt_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
