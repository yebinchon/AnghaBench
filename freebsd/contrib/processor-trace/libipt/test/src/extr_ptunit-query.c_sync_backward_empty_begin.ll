; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_sync_backward_empty_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_sync_backward_empty_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_encoder, %struct.pt_query_decoder }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }

@ptem_64bit = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*)* @sync_backward_empty_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_backward_empty_begin(%struct.ptu_decoder_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.ptu_decoder_fixture*, align 8
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca %struct.pt_encoder*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %3, align 8
  %10 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %10, i32 0, i32 1
  store %struct.pt_query_decoder* %11, %struct.pt_query_decoder** %4, align 8
  %12 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %13 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %12, i32 0, i32 0
  store %struct.pt_encoder* %13, %struct.pt_encoder** %5, align 8
  %14 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %16 = call i32 @pt_enc_get_offset(%struct.pt_encoder* %14, i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @ptu_int_ge(i32 %17, i32 0)
  %19 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %20 = call i32 @pt_encode_psb(%struct.pt_encoder* %19)
  %21 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %22 = call i32 @pt_encode_psbend(%struct.pt_encoder* %21)
  %23 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %25 = call i32 @pt_enc_get_offset(%struct.pt_encoder* %23, i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ptu_int_ge(i32 %26, i32 0)
  %28 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %29 = call i32 @pt_encode_psb(%struct.pt_encoder* %28)
  %30 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %31 = load i32, i32* @ptem_64bit, align 4
  %32 = call i32 @pt_encode_mode_exec(%struct.pt_encoder* %30, i32 %31)
  %33 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %34 = call i32 @pt_encode_psbend(%struct.pt_encoder* %33)
  %35 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %37 = call i32 @pt_enc_get_offset(%struct.pt_encoder* %35, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @ptu_int_ge(i32 %38, i32 0)
  %40 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %41 = call i32 @pt_encode_psb(%struct.pt_encoder* %40)
  %42 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %43 = load i32, i32* @ptem_64bit, align 4
  %44 = call i32 @pt_encode_mode_exec(%struct.pt_encoder* %42, i32 %43)
  %45 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %46 = call i32 @pt_encode_psbend(%struct.pt_encoder* %45)
  %47 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %48 = call i32 @pt_qry_sync_backward(%struct.pt_query_decoder* %47, i32* %8)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ptu_int_ge(i32 %49, i32 0)
  %51 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %52 = call i32 @pt_qry_get_sync_offset(%struct.pt_query_decoder* %51, i32* %7)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @ptu_int_eq(i32 %53, i32 0)
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ptu_uint_eq(i32 %55, i32 %57)
  %59 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %60 = call i32 @pt_qry_sync_backward(%struct.pt_query_decoder* %59, i32* %8)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @ptu_int_ge(i32 %61, i32 0)
  %63 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %64 = call i32 @pt_qry_get_sync_offset(%struct.pt_query_decoder* %63, i32* %7)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @ptu_int_eq(i32 %65, i32 0)
  %67 = load i32, i32* %7, align 4
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ptu_uint_eq(i32 %67, i32 %69)
  %71 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %72 = call i32 @pt_qry_sync_backward(%struct.pt_query_decoder* %71, i32* %8)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @pte_eos, align 4
  %75 = sub nsw i32 0, %74
  %76 = call i32 @ptu_int_eq(i32 %73, i32 %75)
  %77 = call i32 (...) @ptu_passed()
  %78 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  ret i32 %80
}

declare dso_local i32 @pt_enc_get_offset(%struct.pt_encoder*, i32*) #1

declare dso_local i32 @ptu_int_ge(i32, i32) #1

declare dso_local i32 @pt_encode_psb(%struct.pt_encoder*) #1

declare dso_local i32 @pt_encode_psbend(%struct.pt_encoder*) #1

declare dso_local i32 @pt_encode_mode_exec(%struct.pt_encoder*, i32) #1

declare dso_local i32 @pt_qry_sync_backward(%struct.pt_query_decoder*, i32*) #1

declare dso_local i32 @pt_qry_get_sync_offset(%struct.pt_query_decoder*, i32*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
