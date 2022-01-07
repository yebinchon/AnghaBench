; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-msec_cache.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-msec_cache.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_suite = type { i32 }
%struct.test_fixture = type { i32*, i32 }

@sfix_init = common dso_local global i32 0, align 4
@ifix_init = common dso_local global i32 0, align 4
@cfix_init = common dso_local global i32 0, align 4
@cifix_init = common dso_local global i32 0, align 4
@init_null = common dso_local global i32 0, align 4
@fini_null = common dso_local global i32 0, align 4
@invalidate_null = common dso_local global i32 0, align 4
@read_null = common dso_local global i32 0, align 4
@fill_null = common dso_local global i32 0, align 4
@invalidate = common dso_local global i32 0, align 4
@read_nomap = common dso_local global i32 0, align 4
@read = common dso_local global i32 0, align 4
@fill_nomap = common dso_local global i32 0, align 4
@fill = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ptunit_suite, align 4
  %7 = alloca %struct.test_fixture, align 8
  %8 = alloca %struct.test_fixture, align 8
  %9 = alloca %struct.test_fixture, align 8
  %10 = alloca %struct.test_fixture, align 8
  %11 = alloca %struct.ptunit_suite, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @sfix_init, align 4
  %13 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %7, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @ifix_init, align 4
  %16 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %8, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %8, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @cfix_init, align 4
  %19 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %9, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %9, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @cifix_init, align 4
  %22 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %10, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %10, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @ptunit_mk_suite(i32 %24, i8** %25)
  %27 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %11, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = bitcast %struct.ptunit_suite* %6 to i8*
  %29 = bitcast %struct.ptunit_suite* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load i32, i32* @init_null, align 4
  %31 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ptu_run(i32 %32, i32 %30)
  %34 = load i32, i32* @fini_null, align 4
  %35 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ptu_run(i32 %36, i32 %34)
  %38 = load i32, i32* @invalidate_null, align 4
  %39 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ptu_run(i32 %40, i32 %38)
  %42 = load i32, i32* @read_null, align 4
  %43 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ptu_run(i32 %44, i32 %42)
  %46 = load i32, i32* @fill_null, align 4
  %47 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ptu_run(i32 %48, i32 %46)
  %50 = load i32, i32* @invalidate, align 4
  %51 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = bitcast %struct.test_fixture* %7 to { i32*, i32 }*
  %54 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %53, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ptu_run_f(i32 %52, i32 %50, i32* %55, i32 %57)
  %59 = load i32, i32* @invalidate, align 4
  %60 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = bitcast %struct.test_fixture* %9 to { i32*, i32 }*
  %63 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %62, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ptu_run_f(i32 %61, i32 %59, i32* %64, i32 %66)
  %68 = load i32, i32* @read_nomap, align 4
  %69 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = bitcast %struct.test_fixture* %7 to { i32*, i32 }*
  %72 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %71, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ptu_run_f(i32 %70, i32 %68, i32* %73, i32 %75)
  %77 = load i32, i32* @read_nomap, align 4
  %78 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = bitcast %struct.test_fixture* %8 to { i32*, i32 }*
  %81 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %80, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ptu_run_f(i32 %79, i32 %77, i32* %82, i32 %84)
  %86 = load i32, i32* @read_nomap, align 4
  %87 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = bitcast %struct.test_fixture* %9 to { i32*, i32 }*
  %90 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %89, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ptu_run_f(i32 %88, i32 %86, i32* %91, i32 %93)
  %95 = load i32, i32* @read, align 4
  %96 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = bitcast %struct.test_fixture* %10 to { i32*, i32 }*
  %99 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %98, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ptu_run_f(i32 %97, i32 %95, i32* %100, i32 %102)
  %104 = load i32, i32* @fill_nomap, align 4
  %105 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = bitcast %struct.test_fixture* %7 to { i32*, i32 }*
  %108 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %107, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ptu_run_f(i32 %106, i32 %104, i32* %109, i32 %111)
  %113 = load i32, i32* @fill_nomap, align 4
  %114 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = bitcast %struct.test_fixture* %9 to { i32*, i32 }*
  %117 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %116, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ptu_run_f(i32 %115, i32 %113, i32* %118, i32 %120)
  %122 = load i32, i32* @fill, align 4
  %123 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = bitcast %struct.test_fixture* %8 to { i32*, i32 }*
  %126 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %125, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @ptu_run_f(i32 %124, i32 %122, i32* %127, i32 %129)
  %131 = load i32, i32* @fill, align 4
  %132 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = bitcast %struct.test_fixture* %10 to { i32*, i32 }*
  %135 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %134, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ptu_run_f(i32 %133, i32 %131, i32* %136, i32 %138)
  %140 = call i32 @ptunit_report(%struct.ptunit_suite* %6)
  ret i32 %140
}

declare dso_local i32 @ptunit_mk_suite(i32, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ptu_run(i32, i32) #1

declare dso_local i32 @ptu_run_f(i32, i32, i32*, i32) #1

declare dso_local i32 @ptunit_report(%struct.ptunit_suite*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
