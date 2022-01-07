; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_big_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_big_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_encoder, %struct.pt_query_decoder }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%union.anon = type { [1024 x i32] }
%struct.pt_event = type { i32 }

@pt_ipc_sext_48 = common dso_local global i32 0, align 4
@ptu_sync_decoder = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@ptev_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*)* @event_big_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_big_size(%struct.ptu_decoder_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.ptu_decoder_fixture*, align 8
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca %struct.pt_encoder*, align 8
  %6 = alloca %union.anon, align 4
  %7 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %3, align 8
  %8 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %9 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %8, i32 0, i32 1
  store %struct.pt_query_decoder* %9, %struct.pt_query_decoder** %4, align 8
  %10 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %11 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %10, i32 0, i32 0
  store %struct.pt_encoder* %11, %struct.pt_encoder** %5, align 8
  %12 = bitcast %union.anon* %6 to [1024 x i32]*
  %13 = getelementptr inbounds [1024 x i32], [1024 x i32]* %12, i64 0, i64 0
  %14 = call i32 @memset(i32* %13, i32 205, i32 4096)
  %15 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %16 = load i32, i32* @pt_ipc_sext_48, align 4
  %17 = call i32 @pt_encode_tip_pge(%struct.pt_encoder* %15, i64 0, i32 %16)
  %18 = load i32, i32* @ptu_sync_decoder, align 4
  %19 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %20 = call i32 @ptu_check(i32 %18, %struct.pt_query_decoder* %19)
  %21 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %22 = bitcast %union.anon* %6 to %struct.pt_event*
  %23 = call i32 @pt_qry_event(%struct.pt_query_decoder* %21, %struct.pt_event* %22, i32 4096)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @pts_eos, align 4
  %26 = call i32 @ptu_int_eq(i32 %24, i32 %25)
  %27 = bitcast %union.anon* %6 to %struct.pt_event*
  %28 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ptev_enabled, align 4
  %31 = call i32 @ptu_int_eq(i32 %29, i32 %30)
  %32 = bitcast %union.anon* %6 to [1024 x i32]*
  %33 = getelementptr inbounds [1024 x i32], [1024 x i32]* %32, i64 0, i64 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ptu_uint_eq(i32 %34, i32 205)
  %36 = call i32 (...) @ptu_passed()
  %37 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  ret i32 %39
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pt_encode_tip_pge(%struct.pt_encoder*, i64, i32) #1

declare dso_local i32 @ptu_check(i32, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
