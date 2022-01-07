; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.TYPE_7__, %struct.TYPE_6__** }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @lru_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lru_clear(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %6 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %8, i64 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 8
  %16 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %17 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ptu_uint_eq(i32 %19, i64 0)
  %21 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ptu_null(i32 %24)
  %26 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %27 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %26, i32 0, i32 0
  %28 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %29 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %30, i64 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = call i32 @pt_iscache_add(%struct.TYPE_7__* %27, %struct.TYPE_6__* %32, i32 40960)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ptu_int_gt(i32 %34, i32 0)
  %36 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %37 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call i32 @pt_section_map(%struct.TYPE_6__* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ptu_int_eq(i32 %42, i32 0)
  %44 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %45 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = call i32 @pt_section_unmap(%struct.TYPE_6__* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ptu_int_eq(i32 %50, i32 0)
  %52 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %53 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %52, i32 0, i32 0
  %54 = call i32 @pt_iscache_clear(%struct.TYPE_7__* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ptu_int_eq(i32 %55, i32 0)
  %57 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %58 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ptu_null(i32 %60)
  %62 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %63 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ptu_uint_eq(i32 %65, i64 0)
  %67 = call i32 (...) @ptu_passed()
  %68 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  ret i32 %70
}

declare dso_local i32 @ptu_uint_eq(i32, i64) #1

declare dso_local i32 @ptu_null(i32) #1

declare dso_local i32 @pt_iscache_add(%struct.TYPE_7__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ptu_int_gt(i32, i32) #1

declare dso_local i32 @pt_section_map(%struct.TYPE_6__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_section_unmap(%struct.TYPE_6__*) #1

declare dso_local i32 @pt_iscache_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
