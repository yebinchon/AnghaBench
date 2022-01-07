; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-config.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-config.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_suite = type { i32 }

@from_user_null = common dso_local global i32 0, align 4
@from_user_too_small = common dso_local global i32 0, align 4
@from_user_bad_buffer = common dso_local global i32 0, align 4
@from_user = common dso_local global i32 0, align 4
@from_user_small = common dso_local global i32 0, align 4
@from_user_big = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@addr_filter_size = common dso_local global i32 0, align 4
@addr_filter_none = common dso_local global i32 0, align 4
@addr_filter_0 = common dso_local global i32 0, align 4
@addr_filter_1_3 = common dso_local global i32 0, align 4
@addr_filter_oob = common dso_local global i32 0, align 4
@addr_filter_ip_in = common dso_local global i32 0, align 4
@addr_filter_ip_out = common dso_local global i32 0, align 4
@addr_filter_stop_in = common dso_local global i32 0, align 4
@addr_filter_stop_out = common dso_local global i32 0, align 4
@addr_filter_ip_out_stop_in = common dso_local global i32 0, align 4
@addr_filter_ip_in_stop_in = common dso_local global i32 0, align 4
@cpu_errata_null = common dso_local global i32 0, align 4
@cpu_errata_unknown = common dso_local global i32 0, align 4
@cpu_errata_bad_vendor = common dso_local global i32 0, align 4
@cpu_errata_bad_cpuid = common dso_local global i32 0, align 4

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
  %14 = load i32, i32* @from_user_null, align 4
  %15 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ptu_run(i32 %16, i32 %14)
  %18 = load i32, i32* @from_user_too_small, align 4
  %19 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ptu_run(i32 %20, i32 %18)
  %22 = load i32, i32* @from_user_bad_buffer, align 4
  %23 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ptu_run(i32 %24, i32 %22)
  %26 = load i32, i32* @from_user, align 4
  %27 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ptu_run(i32 %28, i32 %26)
  %30 = load i32, i32* @from_user_small, align 4
  %31 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ptu_run(i32 %32, i32 %30)
  %34 = load i32, i32* @from_user_big, align 4
  %35 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ptu_run(i32 %36, i32 %34)
  %38 = load i32, i32* @size, align 4
  %39 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ptu_run(i32 %40, i32 %38)
  %42 = load i32, i32* @addr_filter_size, align 4
  %43 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ptu_run(i32 %44, i32 %42)
  %46 = load i32, i32* @addr_filter_none, align 4
  %47 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ptu_run(i32 %48, i32 %46)
  %50 = load i32, i32* @addr_filter_0, align 4
  %51 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ptu_run(i32 %52, i32 %50)
  %54 = load i32, i32* @addr_filter_1_3, align 4
  %55 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ptu_run(i32 %56, i32 %54)
  %58 = load i32, i32* @addr_filter_oob, align 4
  %59 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ptu_run_p(i32 %60, i32 %58, i32 255)
  %62 = load i32, i32* @addr_filter_oob, align 4
  %63 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ptu_run_p(i32 %64, i32 %62, i32 8)
  %66 = load i32, i32* @addr_filter_ip_in, align 4
  %67 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ptu_run(i32 %68, i32 %66)
  %70 = load i32, i32* @addr_filter_ip_out, align 4
  %71 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ptu_run(i32 %72, i32 %70)
  %74 = load i32, i32* @addr_filter_stop_in, align 4
  %75 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ptu_run(i32 %76, i32 %74)
  %78 = load i32, i32* @addr_filter_stop_out, align 4
  %79 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ptu_run(i32 %80, i32 %78)
  %82 = load i32, i32* @addr_filter_ip_out_stop_in, align 4
  %83 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ptu_run(i32 %84, i32 %82)
  %86 = load i32, i32* @addr_filter_ip_in_stop_in, align 4
  %87 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ptu_run(i32 %88, i32 %86)
  %90 = load i32, i32* @cpu_errata_null, align 4
  %91 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ptu_run(i32 %92, i32 %90)
  %94 = load i32, i32* @cpu_errata_unknown, align 4
  %95 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ptu_run(i32 %96, i32 %94)
  %98 = load i32, i32* @cpu_errata_bad_vendor, align 4
  %99 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ptu_run(i32 %100, i32 %98)
  %102 = load i32, i32* @cpu_errata_bad_cpuid, align 4
  %103 = getelementptr inbounds %struct.ptunit_suite, %struct.ptunit_suite* %6, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ptu_run(i32 %104, i32 %102)
  %106 = call i32 @ptunit_report(%struct.ptunit_suite* %6)
  ret i32 %106
}

declare dso_local i32 @ptunit_mk_suite(i32, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ptu_run(i32, i32) #1

declare dso_local i32 @ptu_run_p(i32, i32, i32) #1

declare dso_local i32 @ptunit_report(%struct.ptunit_suite*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
