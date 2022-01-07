; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.TYPE_8__**, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @lru_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lru_map(%struct.iscache_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.iscache_fixture*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iscache_fixture* %0, %struct.iscache_fixture** %3, align 8
  %6 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %7 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %8, i64 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %17 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ptu_uint_eq(i32 %19, i64 0)
  %21 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = call i32 @ptu_null(%struct.TYPE_9__* %24)
  %26 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %27 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %26, i32 0, i32 1
  %28 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %29 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = call i32 @pt_iscache_add(%struct.TYPE_10__* %27, %struct.TYPE_8__* %32, i32 40960)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ptu_int_gt(i32 %34, i32 0)
  %36 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %37 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %38, i64 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = call i32 @pt_section_map(%struct.TYPE_8__* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ptu_int_eq(i32 %42, i32 0)
  %44 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %45 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %46, i64 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i32 @pt_section_unmap(%struct.TYPE_8__* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ptu_int_eq(i32 %50, i32 0)
  %52 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %53 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = call i32 @ptu_ptr(%struct.TYPE_9__* %55)
  %57 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %58 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %64 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %65, i64 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = call i32 @ptu_ptr_eq(i32 %62, %struct.TYPE_8__* %67)
  %69 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %70 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = call i32 @ptu_null(%struct.TYPE_9__* %74)
  %76 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %77 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %81 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %82, i64 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @ptu_uint_eq(i32 %79, i64 %86)
  %88 = call i32 (...) @ptu_passed()
  %89 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  ret i32 %91
}

declare dso_local i32 @ptu_uint_eq(i32, i64) #1

declare dso_local i32 @ptu_null(%struct.TYPE_9__*) #1

declare dso_local i32 @pt_iscache_add(%struct.TYPE_10__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @ptu_int_gt(i32, i32) #1

declare dso_local i32 @pt_section_map(%struct.TYPE_8__*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @pt_section_unmap(%struct.TYPE_8__*) #1

declare dso_local i32 @ptu_ptr(%struct.TYPE_9__*) #1

declare dso_local i32 @ptu_ptr_eq(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
