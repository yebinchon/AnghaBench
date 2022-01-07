; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-sync.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-sync.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_fixture = type { i32*, i32 }
%struct.ptunit_suite = type { i32 }

@sfix_init = common dso_local global i32 0, align 4
@sync_fwd_null = common dso_local global i32 0, align 4
@sync_bwd_null = common dso_local global i32 0, align 4
@sync_fwd_empty = common dso_local global i32 0, align 4
@sync_bwd_empty = common dso_local global i32 0, align 4
@sync_fwd_none = common dso_local global i32 0, align 4
@sync_bwd_none = common dso_local global i32 0, align 4
@sync_fwd_here = common dso_local global i32 0, align 4
@sync_bwd_here = common dso_local global i32 0, align 4
@sync_fwd = common dso_local global i32 0, align 4
@sync_bwd = common dso_local global i32 0, align 4
@sync_fwd_past = common dso_local global i32 0, align 4
@sync_bwd_past = common dso_local global i32 0, align 4
@sync_fwd_cutoff = common dso_local global i32 0, align 4
@sync_bwd_cutoff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sync_fixture, align 8
  %7 = alloca %struct.ptunit_suite, align 4
  %8 = alloca %struct.ptunit_suite, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @sfix_init, align 4
  %10 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %6, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.sync_fixture, %struct.sync_fixture* %6, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @ptunit_mk_suite(i32 %12, i8** %13)
  %15 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = bitcast %struct.ptunit_suite* %7 to i8*
  %17 = bitcast %struct.ptunit_suite* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load i32, i32* @sync_fwd_null, align 4
  %19 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = bitcast %struct.sync_fixture* %6 to { i32*, i32 }*
  %22 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %21, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ptu_run_f(i32 %20, i32 %18, i32* %23, i32 %25)
  %27 = load i32, i32* @sync_bwd_null, align 4
  %28 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = bitcast %struct.sync_fixture* %6 to { i32*, i32 }*
  %31 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %30, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ptu_run_f(i32 %29, i32 %27, i32* %32, i32 %34)
  %36 = load i32, i32* @sync_fwd_empty, align 4
  %37 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = bitcast %struct.sync_fixture* %6 to { i32*, i32 }*
  %40 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %39, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ptu_run_f(i32 %38, i32 %36, i32* %41, i32 %43)
  %45 = load i32, i32* @sync_bwd_empty, align 4
  %46 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = bitcast %struct.sync_fixture* %6 to { i32*, i32 }*
  %49 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %48, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ptu_run_f(i32 %47, i32 %45, i32* %50, i32 %52)
  %54 = load i32, i32* @sync_fwd_none, align 4
  %55 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %struct.sync_fixture* %6 to { i32*, i32 }*
  %58 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %57, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ptu_run_f(i32 %56, i32 %54, i32* %59, i32 %61)
  %63 = load i32, i32* @sync_bwd_none, align 4
  %64 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = bitcast %struct.sync_fixture* %6 to { i32*, i32 }*
  %67 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %66, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ptu_run_f(i32 %65, i32 %63, i32* %68, i32 %70)
  %72 = load i32, i32* @sync_fwd_here, align 4
  %73 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = bitcast %struct.sync_fixture* %6 to { i32*, i32 }*
  %76 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %75, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ptu_run_f(i32 %74, i32 %72, i32* %77, i32 %79)
  %81 = load i32, i32* @sync_bwd_here, align 4
  %82 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = bitcast %struct.sync_fixture* %6 to { i32*, i32 }*
  %85 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %84, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ptu_run_f(i32 %83, i32 %81, i32* %86, i32 %88)
  %90 = load i32, i32* @sync_fwd, align 4
  %91 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = bitcast %struct.sync_fixture* %6 to { i32*, i32 }*
  %94 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %93, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ptu_run_f(i32 %92, i32 %90, i32* %95, i32 %97)
  %99 = load i32, i32* @sync_bwd, align 4
  %100 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = bitcast %struct.sync_fixture* %6 to { i32*, i32 }*
  %103 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %102, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @ptu_run_f(i32 %101, i32 %99, i32* %104, i32 %106)
  %108 = load i32, i32* @sync_fwd_past, align 4
  %109 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = bitcast %struct.sync_fixture* %6 to { i32*, i32 }*
  %112 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %111, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ptu_run_f(i32 %110, i32 %108, i32* %113, i32 %115)
  %117 = load i32, i32* @sync_bwd_past, align 4
  %118 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = bitcast %struct.sync_fixture* %6 to { i32*, i32 }*
  %121 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %120, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ptu_run_f(i32 %119, i32 %117, i32* %122, i32 %124)
  %126 = load i32, i32* @sync_fwd_cutoff, align 4
  %127 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = bitcast %struct.sync_fixture* %6 to { i32*, i32 }*
  %130 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %129, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ptu_run_f(i32 %128, i32 %126, i32* %131, i32 %133)
  %135 = load i32, i32* @sync_bwd_cutoff, align 4
  %136 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = bitcast %struct.sync_fixture* %6 to { i32*, i32 }*
  %139 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %138, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @ptu_run_f(i32 %137, i32 %135, i32* %140, i32 %142)
  %144 = call i32 @ptunit_report(%struct.ptunit_suite* %7)
  ret i32 %144
}

declare dso_local i32 @ptunit_mk_suite(i32, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ptu_run_f(i32, i32, i32*, i32) #1

declare dso_local i32 @ptunit_report(%struct.ptunit_suite*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
