; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_sync_backward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_sync_backward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_encoder, %struct.pt_query_decoder }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }

@ptem_64bit = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*)* @sync_backward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_backward(%struct.ptu_decoder_fixture* %0) #0 {
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
  %22 = load i32, i32* @ptem_64bit, align 4
  %23 = call i32 @pt_encode_mode_exec(%struct.pt_encoder* %21, i32 %22)
  %24 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %25 = call i32 @pt_encode_psbend(%struct.pt_encoder* %24)
  %26 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %28 = call i32 @pt_enc_get_offset(%struct.pt_encoder* %26, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ptu_int_ge(i32 %29, i32 0)
  %31 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %32 = call i32 @pt_encode_psb(%struct.pt_encoder* %31)
  %33 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %34 = load i32, i32* @ptem_64bit, align 4
  %35 = call i32 @pt_encode_mode_exec(%struct.pt_encoder* %33, i32 %34)
  %36 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %37 = call i32 @pt_encode_psbend(%struct.pt_encoder* %36)
  %38 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %40 = call i32 @pt_enc_get_offset(%struct.pt_encoder* %38, i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @ptu_int_ge(i32 %41, i32 0)
  %43 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %44 = call i32 @pt_encode_psb(%struct.pt_encoder* %43)
  %45 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %46 = load i32, i32* @ptem_64bit, align 4
  %47 = call i32 @pt_encode_mode_exec(%struct.pt_encoder* %45, i32 %46)
  %48 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %49 = call i32 @pt_encode_psbend(%struct.pt_encoder* %48)
  %50 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %51 = call i32 @pt_qry_sync_backward(%struct.pt_query_decoder* %50, i32* %8)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @ptu_int_ge(i32 %52, i32 0)
  %54 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %55 = call i32 @pt_qry_get_sync_offset(%struct.pt_query_decoder* %54, i32* %7)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ptu_int_eq(i32 %56, i32 0)
  %58 = load i32, i32* %7, align 4
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ptu_uint_eq(i32 %58, i32 %60)
  %62 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %63 = call i32 @pt_qry_sync_backward(%struct.pt_query_decoder* %62, i32* %8)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @ptu_int_ge(i32 %64, i32 0)
  %66 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %67 = call i32 @pt_qry_get_sync_offset(%struct.pt_query_decoder* %66, i32* %7)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @ptu_int_eq(i32 %68, i32 0)
  %70 = load i32, i32* %7, align 4
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ptu_uint_eq(i32 %70, i32 %72)
  %74 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %75 = call i32 @pt_qry_sync_backward(%struct.pt_query_decoder* %74, i32* %8)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @ptu_int_ge(i32 %76, i32 0)
  %78 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %79 = call i32 @pt_qry_get_sync_offset(%struct.pt_query_decoder* %78, i32* %7)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @ptu_int_eq(i32 %80, i32 0)
  %82 = load i32, i32* %7, align 4
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ptu_uint_eq(i32 %82, i32 %84)
  %86 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %87 = call i32 @pt_qry_sync_backward(%struct.pt_query_decoder* %86, i32* %8)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @pte_eos, align 4
  %90 = sub nsw i32 0, %89
  %91 = call i32 @ptu_int_eq(i32 %88, i32 %90)
  %92 = call i32 (...) @ptu_passed()
  %93 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  ret i32 %95
}

declare dso_local i32 @pt_enc_get_offset(%struct.pt_encoder*, i32*) #1

declare dso_local i32 @ptu_int_ge(i32, i32) #1

declare dso_local i32 @pt_encode_psb(%struct.pt_encoder*) #1

declare dso_local i32 @pt_encode_mode_exec(%struct.pt_encoder*, i32) #1

declare dso_local i32 @pt_encode_psbend(%struct.pt_encoder*) #1

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
