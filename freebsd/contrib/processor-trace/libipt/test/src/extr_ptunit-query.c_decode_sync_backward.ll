; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_decode_sync_backward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_decode_sync_backward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_encoder, %struct.pt_query_decoder }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32 }

@ptem_64bit = common dso_local global i32 0, align 4
@ptev_exec_mode = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*)* @decode_sync_backward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_sync_backward(%struct.ptu_decoder_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.ptu_decoder_fixture*, align 8
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca %struct.pt_encoder*, align 8
  %6 = alloca %struct.pt_event, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %3, align 8
  %11 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %11, i32 0, i32 1
  store %struct.pt_query_decoder* %12, %struct.pt_query_decoder** %4, align 8
  %13 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %14 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %13, i32 0, i32 0
  store %struct.pt_encoder* %14, %struct.pt_encoder** %5, align 8
  %15 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %17 = call i32 @pt_enc_get_offset(%struct.pt_encoder* %15, i32* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @ptu_int_ge(i32 %18, i32 0)
  %20 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %21 = call i32 @pt_encode_psb(%struct.pt_encoder* %20)
  %22 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %23 = load i32, i32* @ptem_64bit, align 4
  %24 = call i32 @pt_encode_mode_exec(%struct.pt_encoder* %22, i32 %23)
  %25 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %26 = call i32 @pt_encode_psbend(%struct.pt_encoder* %25)
  %27 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %29 = call i32 @pt_enc_get_offset(%struct.pt_encoder* %27, i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @ptu_int_ge(i32 %30, i32 0)
  %32 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %33 = call i32 @pt_encode_psb(%struct.pt_encoder* %32)
  %34 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %35 = load i32, i32* @ptem_64bit, align 4
  %36 = call i32 @pt_encode_mode_exec(%struct.pt_encoder* %34, i32 %35)
  %37 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %38 = call i32 @pt_encode_psbend(%struct.pt_encoder* %37)
  %39 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %40 = call i32 @pt_qry_sync_forward(%struct.pt_query_decoder* %39, i32* %9)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @ptu_int_ge(i32 %41, i32 0)
  %43 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %44 = call i32 @pt_qry_get_sync_offset(%struct.pt_query_decoder* %43, i32* %8)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ptu_int_eq(i32 %45, i32 0)
  %47 = load i32, i32* %8, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ptu_uint_eq(i32 %47, i32 %49)
  %51 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %52 = call i32 @pt_qry_event(%struct.pt_query_decoder* %51, %struct.pt_event* %6, i32 4)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @ptu_int_ge(i32 %53, i32 0)
  %55 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ptev_exec_mode, align 4
  %58 = call i32 @ptu_int_eq(i32 %56, i32 %57)
  %59 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %60 = call i32 @pt_qry_event(%struct.pt_query_decoder* %59, %struct.pt_event* %6, i32 4)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @ptu_int_ge(i32 %61, i32 0)
  %63 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ptev_exec_mode, align 4
  %66 = call i32 @ptu_int_eq(i32 %64, i32 %65)
  %67 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %68 = call i32 @pt_qry_sync_backward(%struct.pt_query_decoder* %67, i32* %9)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @ptu_int_ge(i32 %69, i32 0)
  %71 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %72 = call i32 @pt_qry_get_sync_offset(%struct.pt_query_decoder* %71, i32* %8)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @ptu_int_eq(i32 %73, i32 0)
  %75 = load i32, i32* %8, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ptu_uint_eq(i32 %75, i32 %77)
  %79 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %80 = call i32 @pt_qry_sync_backward(%struct.pt_query_decoder* %79, i32* %9)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @ptu_int_ge(i32 %81, i32 0)
  %83 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %84 = call i32 @pt_qry_get_sync_offset(%struct.pt_query_decoder* %83, i32* %8)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @ptu_int_eq(i32 %85, i32 0)
  %87 = load i32, i32* %8, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ptu_uint_eq(i32 %87, i32 %89)
  %91 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %92 = call i32 @pt_qry_sync_backward(%struct.pt_query_decoder* %91, i32* %9)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @pte_eos, align 4
  %95 = sub nsw i32 0, %94
  %96 = call i32 @ptu_int_eq(i32 %93, i32 %95)
  %97 = call i32 (...) @ptu_passed()
  %98 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  ret i32 %100
}

declare dso_local i32 @pt_enc_get_offset(%struct.pt_encoder*, i32*) #1

declare dso_local i32 @ptu_int_ge(i32, i32) #1

declare dso_local i32 @pt_encode_psb(%struct.pt_encoder*) #1

declare dso_local i32 @pt_encode_mode_exec(%struct.pt_encoder*, i32) #1

declare dso_local i32 @pt_encode_psbend(%struct.pt_encoder*) #1

declare dso_local i32 @pt_qry_sync_forward(%struct.pt_query_decoder*, i32*) #1

declare dso_local i32 @pt_qry_get_sync_offset(%struct.pt_query_decoder*, i32*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @pt_qry_sync_backward(%struct.pt_query_decoder*, i32*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
