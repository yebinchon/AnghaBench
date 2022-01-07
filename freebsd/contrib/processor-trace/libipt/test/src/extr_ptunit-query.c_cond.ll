; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_cond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_encoder, %struct.pt_query_decoder }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }

@ptu_sync_decoder = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*)* @cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cond(%struct.ptu_decoder_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.ptu_decoder_fixture*, align 8
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca %struct.pt_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %3, align 8
  %9 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %10 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %9, i32 0, i32 1
  store %struct.pt_query_decoder* %10, %struct.pt_query_decoder** %4, align 8
  %11 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %11, i32 0, i32 0
  store %struct.pt_encoder* %12, %struct.pt_encoder** %5, align 8
  store i32 188, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %15 = call i32 @pt_encode_tnt_8(%struct.pt_encoder* %14, i32 2, i32 3)
  %16 = load i32, i32* @ptu_sync_decoder, align 4
  %17 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %18 = call i32 @ptu_check(i32 %16, %struct.pt_query_decoder* %17)
  %19 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %20 = call i32 @pt_qry_cond_branch(%struct.pt_query_decoder* %19, i32* %8)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ptu_int_eq(i32 %21, i32 0)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ptu_int_eq(i32 %23, i32 0)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %27 = call i32 @pt_qry_cond_branch(%struct.pt_query_decoder* %26, i32* %8)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ptu_int_eq(i32 %28, i32 0)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ptu_int_eq(i32 %30, i32 1)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %34 = call i32 @pt_qry_cond_branch(%struct.pt_query_decoder* %33, i32* %8)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @pts_eos, align 4
  %37 = call i32 @ptu_int_eq(i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ptu_int_eq(i32 %38, i32 0)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %8, align 4
  %41 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %42 = call i32 @pt_qry_cond_branch(%struct.pt_query_decoder* %41, i32* %8)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @pte_eos, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @ptu_int_eq(i32 %43, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ptu_int_eq(i32 %47, i32 %48)
  %50 = call i32 (...) @ptu_passed()
  %51 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  ret i32 %53
}

declare dso_local i32 @pt_encode_tnt_8(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @ptu_check(i32, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_cond_branch(%struct.pt_query_decoder*, i32*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
