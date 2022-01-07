; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-encoder.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-encoder.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_fixture = type { i32*, i32 }
%struct.ptunit_suite = type { i32 }

@tfix_init = common dso_local global i32 0, align 4
@encoder_init_null = common dso_local global i32 0, align 4
@encoder_fini_null = common dso_local global i32 0, align 4
@alloc_encoder_null = common dso_local global i32 0, align 4
@free_encoder_null = common dso_local global i32 0, align 4
@sync_set_null = common dso_local global i32 0, align 4
@sync_set_eos = common dso_local global i32 0, align 4
@get_offset_null = common dso_local global i32 0, align 4
@get_offset_init = common dso_local global i32 0, align 4
@sync_set_get_offset = common dso_local global i32 0, align 4
@get_config_null = common dso_local global i32 0, align 4
@get_config = common dso_local global i32 0, align 4
@next_null = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.test_fixture, align 8
  %7 = alloca %struct.ptunit_suite, align 4
  %8 = alloca %struct.ptunit_suite, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @tfix_init, align 4
  %10 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %6, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.test_fixture, %struct.test_fixture* %6, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @ptunit_mk_suite(i32 %12, i8** %13)
  %15 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = bitcast %struct.ptunit_suite* %7 to i8*
  %17 = bitcast %struct.ptunit_suite* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load i32, i32* @encoder_init_null, align 4
  %19 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ptu_run(i32 %20, i32 %18)
  %22 = load i32, i32* @encoder_fini_null, align 4
  %23 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ptu_run(i32 %24, i32 %22)
  %26 = load i32, i32* @alloc_encoder_null, align 4
  %27 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ptu_run(i32 %28, i32 %26)
  %30 = load i32, i32* @free_encoder_null, align 4
  %31 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ptu_run(i32 %32, i32 %30)
  %34 = load i32, i32* @sync_set_null, align 4
  %35 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ptu_run(i32 %36, i32 %34)
  %38 = load i32, i32* @sync_set_eos, align 4
  %39 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %struct.test_fixture* %6 to { i32*, i32 }*
  %42 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %41, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ptu_run_f(i32 %40, i32 %38, i32* %43, i32 %45)
  %47 = load i32, i32* @get_offset_null, align 4
  %48 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ptu_run(i32 %49, i32 %47)
  %51 = load i32, i32* @get_offset_init, align 4
  %52 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = bitcast %struct.test_fixture* %6 to { i32*, i32 }*
  %55 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %54, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ptu_run_f(i32 %53, i32 %51, i32* %56, i32 %58)
  %60 = load i32, i32* @sync_set_get_offset, align 4
  %61 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = bitcast %struct.test_fixture* %6 to { i32*, i32 }*
  %64 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %63, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ptu_run_f(i32 %62, i32 %60, i32* %65, i32 %67)
  %69 = load i32, i32* @get_config_null, align 4
  %70 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ptu_run(i32 %71, i32 %69)
  %73 = load i32, i32* @get_config, align 4
  %74 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = bitcast %struct.test_fixture* %6 to { i32*, i32 }*
  %77 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %76, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ptu_run_f(i32 %75, i32 %73, i32* %78, i32 %80)
  %82 = load i32, i32* @next_null, align 4
  %83 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ptu_run(i32 %84, i32 %82)
  %86 = call i32 @ptunit_report(%struct.ptunit_suite* %7)
  ret i32 %86
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
