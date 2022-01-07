; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_skip_tip_fail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_skip_tip_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_encoder, %struct.pt_query_decoder }
%struct.pt_encoder = type { i32* }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32 }

@pt_ipc_sext_48 = common dso_local global i32 0, align 4
@ptu_sync_decoder = common dso_local global i32 0, align 4
@pte_bad_query = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*)* @event_skip_tip_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_skip_tip_fail(%struct.ptu_decoder_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.ptu_decoder_fixture*, align 8
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca %struct.pt_encoder*, align 8
  %6 = alloca %struct.pt_event, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %3, align 8
  %9 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %10 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %9, i32 0, i32 1
  store %struct.pt_query_decoder* %10, %struct.pt_query_decoder** %4, align 8
  %11 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %11, i32 0, i32 0
  store %struct.pt_encoder* %12, %struct.pt_encoder** %5, align 8
  %13 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %14 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %17 = load i32, i32* @pt_ipc_sext_48, align 4
  %18 = call i32 @pt_encode_tip(%struct.pt_encoder* %16, i32 0, i32 %17)
  %19 = load i32, i32* @ptu_sync_decoder, align 4
  %20 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %21 = call i32 @ptu_check(i32 %19, %struct.pt_query_decoder* %20)
  %22 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %23 = call i32 @pt_qry_event(%struct.pt_query_decoder* %22, %struct.pt_event* %6, i32 4)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @pte_bad_query, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @ptu_int_eq(i32 %24, i32 %26)
  %28 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %29 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @ptu_ptr_eq(i32 %30, i32* %31)
  %33 = call i32 (...) @ptu_passed()
  %34 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  ret i32 %36
}

declare dso_local i32 @pt_encode_tip(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @ptu_check(i32, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_ptr_eq(i32, i32*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
