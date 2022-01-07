; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_map_evict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_map_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.TYPE_8__**, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @lru_map_evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lru_map_evict(%struct.iscache_fixture* %0) #0 {
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
  %14 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %15, i64 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %12, %19
  %21 = sub i64 %20, 1
  %22 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %23 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %26 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ptu_uint_eq(i32 %28, i64 0)
  %30 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %31 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = call i32 @ptu_null(%struct.TYPE_9__* %33)
  %35 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %36 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %35, i32 0, i32 1
  %37 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %38 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %39, i64 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = call i32 @pt_iscache_add(%struct.TYPE_10__* %36, %struct.TYPE_8__* %41, i32 40960)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ptu_int_gt(i32 %43, i32 0)
  %45 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %46 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %45, i32 0, i32 1
  %47 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %48 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %49, i64 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = call i32 @pt_iscache_add(%struct.TYPE_10__* %46, %struct.TYPE_8__* %51, i32 40960)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ptu_int_gt(i32 %53, i32 0)
  %55 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %56 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %57, i64 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = call i32 @pt_section_map(%struct.TYPE_8__* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @ptu_int_eq(i32 %61, i32 0)
  %63 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %64 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %65, i64 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = call i32 @pt_section_unmap(%struct.TYPE_8__* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @ptu_int_eq(i32 %69, i32 0)
  %71 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %72 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %73, i64 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = call i32 @pt_section_map(%struct.TYPE_8__* %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @ptu_int_eq(i32 %77, i32 0)
  %79 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %80 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %81, i64 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = call i32 @pt_section_unmap(%struct.TYPE_8__* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @ptu_int_eq(i32 %85, i32 0)
  %87 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %88 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = call i32 @ptu_ptr(%struct.TYPE_9__* %90)
  %92 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %93 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %99 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %100, i64 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = call i32 @ptu_ptr_eq(i32 %97, %struct.TYPE_8__* %102)
  %104 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %105 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = call i32 @ptu_null(%struct.TYPE_9__* %109)
  %111 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %112 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %116 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %117, i64 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @ptu_uint_eq(i32 %114, i64 %121)
  %123 = call i32 (...) @ptu_passed()
  %124 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %123, i32* %124, align 4
  %125 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  ret i32 %126
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
