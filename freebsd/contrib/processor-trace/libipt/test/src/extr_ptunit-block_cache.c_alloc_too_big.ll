; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-block_cache.c_alloc_too_big.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-block_cache.c_alloc_too_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcache_fixture = type { i32 }
%struct.ptunit_result = type { i32 }

@UINT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcache_fixture*)* @alloc_too_big to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_too_big(%struct.bcache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.bcache_fixture*, align 8
  store %struct.bcache_fixture* %0, %struct.bcache_fixture** %3, align 8
  %4 = load i64, i64* @UINT32_MAX, align 8
  %5 = add i64 %4, 1
  %6 = call i32 @pt_bcache_alloc(i64 %5)
  %7 = load %struct.bcache_fixture*, %struct.bcache_fixture** %3, align 8
  %8 = getelementptr inbounds %struct.bcache_fixture, %struct.bcache_fixture* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.bcache_fixture*, %struct.bcache_fixture** %3, align 8
  %10 = getelementptr inbounds %struct.bcache_fixture, %struct.bcache_fixture* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ptu_null(i32 %11)
  %13 = call i32 (...) @ptu_passed()
  %14 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

declare dso_local i32 @pt_bcache_alloc(i64) #1

declare dso_local i32 @ptu_null(i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
