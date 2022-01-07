; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_indir_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_indir_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_query_decoder }
%struct.pt_query_decoder = type { i32, %struct.pt_config }
%struct.pt_config = type { i32 }
%struct.ptunit_result = type { i32 }

@pt_dfix_bad_ip = common dso_local global i32 0, align 4
@pte_invalid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*)* @indir_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @indir_null(%struct.ptu_decoder_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.ptu_decoder_fixture*, align 8
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca %struct.pt_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %3, align 8
  %9 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %10 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %9, i32 0, i32 0
  store %struct.pt_query_decoder* %10, %struct.pt_query_decoder** %4, align 8
  %11 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %12 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %11, i32 0, i32 1
  store %struct.pt_config* %12, %struct.pt_config** %5, align 8
  %13 = load i32, i32* @pt_dfix_bad_ip, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %7, align 4
  %15 = call i32 @pt_qry_indirect_branch(%struct.pt_query_decoder* null, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @pte_invalid, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @ptu_int_eq(i32 %16, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ptu_uint_eq(i32 %20, i32 %21)
  %23 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %24 = call i32 @pt_qry_indirect_branch(%struct.pt_query_decoder* %23, i32* null)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @pte_invalid, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @ptu_int_eq(i32 %25, i32 %27)
  %29 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %30 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pt_config*, %struct.pt_config** %5, align 8
  %33 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ptu_ptr_eq(i32 %31, i32 %34)
  %36 = call i32 (...) @ptu_passed()
  %37 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  ret i32 %39
}

declare dso_local i32 @pt_qry_indirect_branch(%struct.pt_query_decoder*, i32*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_ptr_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
