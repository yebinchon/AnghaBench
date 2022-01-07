; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_map_add_front.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_lru_map_add_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.TYPE_8__**, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32 }
%struct.ptunit_result = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscache_fixture*)* @lru_map_add_front to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lru_map_add_front(%struct.iscache_fixture* %0) #0 {
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
  %21 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %22 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %25 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ptu_uint_eq(i32 %27, i64 0)
  %29 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %30 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call i32 @ptu_null(%struct.TYPE_9__* %32)
  %34 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %35 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %34, i32 0, i32 1
  %36 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %37 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %38, i64 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = call i32 @pt_iscache_add(%struct.TYPE_10__* %35, %struct.TYPE_8__* %40, i32 40960)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ptu_int_gt(i32 %42, i32 0)
  %44 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %45 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %44, i32 0, i32 1
  %46 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %47 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %48, i64 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = call i32 @pt_iscache_add(%struct.TYPE_10__* %45, %struct.TYPE_8__* %50, i32 40960)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ptu_int_gt(i32 %52, i32 0)
  %54 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %55 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %56, i64 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call i32 @pt_section_map(%struct.TYPE_8__* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @ptu_int_eq(i32 %60, i32 0)
  %62 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %63 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %64, i64 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = call i32 @pt_section_unmap(%struct.TYPE_8__* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @ptu_int_eq(i32 %68, i32 0)
  %70 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %71 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %72, i64 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = call i32 @pt_section_map(%struct.TYPE_8__* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @ptu_int_eq(i32 %76, i32 0)
  %78 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %79 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %80, i64 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = call i32 @pt_section_unmap(%struct.TYPE_8__* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @ptu_int_eq(i32 %84, i32 0)
  %86 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %87 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = call i32 @ptu_ptr(%struct.TYPE_9__* %89)
  %91 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %92 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %98 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %99, i64 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = call i32 @ptu_ptr_eq(i32 %96, %struct.TYPE_8__* %101)
  %103 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %104 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = call i32 @ptu_ptr(%struct.TYPE_9__* %108)
  %110 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %111 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %119 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %120, i64 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = call i32 @ptu_ptr_eq(i32 %117, %struct.TYPE_8__* %122)
  %124 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %125 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = call i32 @ptu_null(%struct.TYPE_9__* %131)
  %133 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %134 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %138 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %139, i64 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.iscache_fixture*, %struct.iscache_fixture** %3, align 8
  %145 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %146, i64 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %143, %150
  %152 = call i32 @ptu_uint_eq(i32 %136, i64 %151)
  %153 = call i32 (...) @ptu_passed()
  %154 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %153, i32* %154, align 4
  %155 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  ret i32 %156
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
