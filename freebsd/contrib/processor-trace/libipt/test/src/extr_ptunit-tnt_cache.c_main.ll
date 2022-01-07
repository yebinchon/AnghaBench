; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-tnt_cache.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-tnt_cache.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_suite = type { i32 }

@init = common dso_local global i32 0, align 4
@init_null = common dso_local global i32 0, align 4
@is_empty_initial = common dso_local global i32 0, align 4
@is_empty_no = common dso_local global i32 0, align 4
@is_empty_yes = common dso_local global i32 0, align 4
@is_empty_null = common dso_local global i32 0, align 4
@query_taken = common dso_local global i32 0, align 4
@query_not_taken = common dso_local global i32 0, align 4
@query_empty = common dso_local global i32 0, align 4
@query_null = common dso_local global i32 0, align 4
@update_tnt = common dso_local global i32 0, align 4
@update_tnt_not_empty = common dso_local global i32 0, align 4
@update_tnt_null_tnt = common dso_local global i32 0, align 4
@update_tnt_null_packet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ptunit_suite, align 4
  %7 = alloca %struct.ptunit_suite, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @ptunit_mk_suite(i32 %8, i8** %9)
  %11 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = bitcast %struct.ptunit_suite* %6 to i8*
  %13 = bitcast %struct.ptunit_suite* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load i32, i32* @init, align 4
  %15 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ptu_run(i32 %16, i32 %14)
  %18 = load i32, i32* @init_null, align 4
  %19 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ptu_run(i32 %20, i32 %18)
  %22 = load i32, i32* @is_empty_initial, align 4
  %23 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ptu_run(i32 %24, i32 %22)
  %26 = load i32, i32* @is_empty_no, align 4
  %27 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ptu_run(i32 %28, i32 %26)
  %30 = load i32, i32* @is_empty_yes, align 4
  %31 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ptu_run(i32 %32, i32 %30)
  %34 = load i32, i32* @is_empty_null, align 4
  %35 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ptu_run(i32 %36, i32 %34)
  %38 = load i32, i32* @query_taken, align 4
  %39 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ptu_run(i32 %40, i32 %38)
  %42 = load i32, i32* @query_not_taken, align 4
  %43 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ptu_run(i32 %44, i32 %42)
  %46 = load i32, i32* @query_empty, align 4
  %47 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ptu_run(i32 %48, i32 %46)
  %50 = load i32, i32* @query_null, align 4
  %51 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ptu_run(i32 %52, i32 %50)
  %54 = load i32, i32* @update_tnt, align 4
  %55 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ptu_run(i32 %56, i32 %54)
  %58 = load i32, i32* @update_tnt_not_empty, align 4
  %59 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ptu_run(i32 %60, i32 %58)
  %62 = load i32, i32* @update_tnt_null_tnt, align 4
  %63 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ptu_run(i32 %64, i32 %62)
  %66 = load i32, i32* @update_tnt_null_packet, align 4
  %67 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ptu_run(i32 %68, i32 %66)
  %70 = call i32 @ptunit_report(%struct.ptunit_suite* %6)
  ret i32 %70
}

declare dso_local i32 @ptunit_mk_suite(i32, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ptu_run(i32, i32) #1

declare dso_local i32 @ptunit_report(%struct.ptunit_suite*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
