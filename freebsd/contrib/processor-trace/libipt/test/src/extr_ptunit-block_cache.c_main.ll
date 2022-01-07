; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-block_cache.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-block_cache.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcache_fixture = type { i8*, i32 }
%struct.ptunit_suite = type { i32 }

@bfix_init = common dso_local global i32 0, align 4
@bfix_fini = common dso_local global i8* null, align 8
@cfix_init = common dso_local global i32 0, align 4
@bcache_entry_size = common dso_local global i32 0, align 4
@bcache_size = common dso_local global i32 0, align 4
@free_null = common dso_local global i32 0, align 4
@add_null = common dso_local global i32 0, align 4
@lookup_null = common dso_local global i32 0, align 4
@alloc = common dso_local global i32 0, align 4
@alloc_min = common dso_local global i32 0, align 4
@alloc_too_big = common dso_local global i32 0, align 4
@alloc_zero = common dso_local global i32 0, align 4
@initially_empty = common dso_local global i32 0, align 4
@add_bad_index = common dso_local global i32 0, align 4
@lookup_bad_index = common dso_local global i32 0, align 4
@add = common dso_local global i32 0, align 4
@bfix_nentries = common dso_local global i64 0, align 8
@stress = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bcache_fixture, align 8
  %7 = alloca %struct.bcache_fixture, align 8
  %8 = alloca %struct.ptunit_suite, align 4
  %9 = alloca %struct.ptunit_suite, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @bfix_init, align 4
  %11 = getelementptr inbounds %struct.bcache_fixture, %struct.bcache_fixture* %6, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = load i8*, i8** @bfix_fini, align 8
  %13 = getelementptr inbounds %struct.bcache_fixture, %struct.bcache_fixture* %6, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* @cfix_init, align 4
  %15 = getelementptr inbounds %struct.bcache_fixture, %struct.bcache_fixture* %7, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load i8*, i8** @bfix_fini, align 8
  %17 = getelementptr inbounds %struct.bcache_fixture, %struct.bcache_fixture* %7, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @ptunit_mk_suite(i32 %18, i8** %19)
  %21 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %9, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = bitcast %struct.ptunit_suite* %8 to i8*
  %23 = bitcast %struct.ptunit_suite* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load i32, i32* @bcache_entry_size, align 4
  %25 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ptu_run(i32 %26, i32 %24)
  %28 = load i32, i32* @bcache_size, align 4
  %29 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ptu_run(i32 %30, i32 %28)
  %32 = load i32, i32* @free_null, align 4
  %33 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ptu_run(i32 %34, i32 %32)
  %36 = load i32, i32* @add_null, align 4
  %37 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ptu_run(i32 %38, i32 %36)
  %40 = load i32, i32* @lookup_null, align 4
  %41 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ptu_run(i32 %42, i32 %40)
  %44 = load i32, i32* @alloc, align 4
  %45 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %struct.bcache_fixture* %7 to { i8*, i32 }*
  %48 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %47, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ptu_run_f(i32 %46, i32 %44, i8* %49, i32 %51)
  %53 = load i32, i32* @alloc_min, align 4
  %54 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = bitcast %struct.bcache_fixture* %7 to { i8*, i32 }*
  %57 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %56, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ptu_run_f(i32 %55, i32 %53, i8* %58, i32 %60)
  %62 = load i32, i32* @alloc_too_big, align 4
  %63 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = bitcast %struct.bcache_fixture* %7 to { i8*, i32 }*
  %66 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %65, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ptu_run_f(i32 %64, i32 %62, i8* %67, i32 %69)
  %71 = load i32, i32* @alloc_zero, align 4
  %72 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = bitcast %struct.bcache_fixture* %7 to { i8*, i32 }*
  %75 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %74, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ptu_run_f(i32 %73, i32 %71, i8* %76, i32 %78)
  %80 = load i32, i32* @initially_empty, align 4
  %81 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = bitcast %struct.bcache_fixture* %6 to { i8*, i32 }*
  %84 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %83, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ptu_run_f(i32 %82, i32 %80, i8* %85, i32 %87)
  %89 = load i32, i32* @add_bad_index, align 4
  %90 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = bitcast %struct.bcache_fixture* %6 to { i8*, i32 }*
  %93 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %92, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ptu_run_f(i32 %91, i32 %89, i8* %94, i32 %96)
  %98 = load i32, i32* @lookup_bad_index, align 4
  %99 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = bitcast %struct.bcache_fixture* %6 to { i8*, i32 }*
  %102 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %101, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @ptu_run_f(i32 %100, i32 %98, i8* %103, i32 %105)
  %107 = load i32, i32* @add, align 4
  %108 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = bitcast %struct.bcache_fixture* %6 to { i8*, i32 }*
  %111 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %110, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @ptu_run_fp(i32 %109, i32 %107, i8* %112, i32 %114, i64 0)
  %116 = load i32, i32* @add, align 4
  %117 = load i64, i64* @bfix_nentries, align 8
  %118 = sub i64 %117, 1
  %119 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = bitcast %struct.bcache_fixture* %6 to { i8*, i32 }*
  %122 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %121, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ptu_run_fp(i32 %120, i32 %116, i8* %123, i32 %125, i64 %118)
  %127 = load i32, i32* @stress, align 4
  %128 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = bitcast %struct.bcache_fixture* %6 to { i8*, i32 }*
  %131 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %130, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ptu_run_f(i32 %129, i32 %127, i8* %132, i32 %134)
  %136 = call i32 @ptunit_report(%struct.ptunit_suite* %8)
  ret i32 %136
}

declare dso_local i32 @ptunit_mk_suite(i32, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ptu_run(i32, i32) #1

declare dso_local i32 @ptu_run_f(i32, i32, i8*, i32) #1

declare dso_local i32 @ptu_run_fp(i32, i32, i8*, i32, i64) #1

declare dso_local i32 @ptunit_report(%struct.ptunit_suite*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
