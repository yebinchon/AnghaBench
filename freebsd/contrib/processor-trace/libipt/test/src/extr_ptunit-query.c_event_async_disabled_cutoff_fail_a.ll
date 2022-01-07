; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_async_disabled_cutoff_fail_a.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_async_disabled_cutoff_fail_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.pt_encoder, %struct.pt_query_decoder }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32 }

@pt_dfix_sext_ip = common dso_local global i32 0, align 4
@pt_ipc_sext_48 = common dso_local global i32 0, align 4
@pt_ipc_update_16 = common dso_local global i32 0, align 4
@cutoff = common dso_local global i32 0, align 4
@ptu_sync_decoder = common dso_local global i32 0, align 4
@pte_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*)* @event_async_disabled_cutoff_fail_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_async_disabled_cutoff_fail_a(%struct.ptu_decoder_fixture* %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca %struct.ptu_decoder_fixture*, align 8
  %4 = alloca %struct.pt_query_decoder*, align 8
  %5 = alloca %struct.pt_encoder*, align 8
  %6 = alloca %struct.pt_event, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %3, align 8
  %9 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %10 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %9, i32 0, i32 1
  store %struct.pt_query_decoder* %10, %struct.pt_query_decoder** %4, align 8
  %11 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %3, align 8
  %12 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %11, i32 0, i32 0
  store %struct.pt_encoder* %12, %struct.pt_encoder** %5, align 8
  %13 = load i32, i32* @pt_dfix_sext_ip, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @pt_ipc_sext_48, align 4
  %17 = call i32 @pt_encode_fup(%struct.pt_encoder* %14, i32 %15, i32 %16)
  %18 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %19 = load i32, i32* @pt_ipc_update_16, align 4
  %20 = call i32 @pt_encode_tip_pgd(%struct.pt_encoder* %18, i32 0, i32 %19)
  %21 = load i32, i32* @cutoff, align 4
  %22 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %23 = load %struct.pt_encoder*, %struct.pt_encoder** %5, align 8
  %24 = call i32 (i32, %struct.pt_query_decoder*, ...) @ptu_check(i32 %21, %struct.pt_query_decoder* %22, %struct.pt_encoder* %23)
  %25 = load i32, i32* @ptu_sync_decoder, align 4
  %26 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %27 = call i32 (i32, %struct.pt_query_decoder*, ...) @ptu_check(i32 %25, %struct.pt_query_decoder* %26)
  %28 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %4, align 8
  %29 = call i32 @pt_qry_event(%struct.pt_query_decoder* %28, %struct.pt_event* %6, i32 4)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @pte_eos, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @ptu_int_eq(i32 %30, i32 %32)
  %34 = call i32 (...) @ptu_passed()
  %35 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  ret i32 %37
}

declare dso_local i32 @pt_encode_fup(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @pt_encode_tip_pgd(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @ptu_check(i32, %struct.pt_query_decoder*, ...) #1

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
