; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_async_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_async_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.TYPE_6__, i32, %struct.pt_encoder, %struct.pt_query_decoder }
%struct.TYPE_6__ = type { i32 }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_packet_ip = type { i32, i32 }
%struct.pt_event = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@pt_ipc_sext_48 = common dso_local global i32 0, align 4
@pt_dfix_max_ip = common dso_local global i32 0, align 4
@pt_dfix_sext_ip = common dso_local global i32 0, align 4
@ptu_sync_decoder = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@pt_ipc_suppressed = common dso_local global i32 0, align 4
@ptev_async_disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*, i32, i32)* @event_async_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_async_disabled(%struct.ptu_decoder_fixture* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ptunit_result, align 4
  %5 = alloca %struct.ptu_decoder_fixture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_query_decoder*, align 8
  %9 = alloca %struct.pt_encoder*, align 8
  %10 = alloca %struct.pt_packet_ip, align 4
  %11 = alloca %struct.pt_packet_ip, align 4
  %12 = alloca %struct.pt_event, align 4
  %13 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %15 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %14, i32 0, i32 3
  store %struct.pt_query_decoder* %15, %struct.pt_query_decoder** %8, align 8
  %16 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %17 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %16, i32 0, i32 2
  store %struct.pt_encoder* %17, %struct.pt_encoder** %9, align 8
  %18 = load i32, i32* @pt_ipc_sext_48, align 4
  %19 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %10, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @pt_dfix_max_ip, align 4
  %21 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %10, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %23 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %22, i32 0, i32 0
  %24 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %25 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %24, i32 0, i32 1
  %26 = call i32 @pt_last_ip_update_ip(%struct.TYPE_6__* %23, %struct.pt_packet_ip* %10, i32* %25)
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @pt_dfix_sext_ip, align 4
  %30 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %32 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %31, i32 0, i32 0
  %33 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %34 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %33, i32 0, i32 1
  %35 = call i32 @pt_last_ip_update_ip(%struct.TYPE_6__* %32, %struct.pt_packet_ip* %11, i32* %34)
  %36 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %37 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %10, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pt_encode_fup(%struct.pt_encoder* %36, i32 %38, i32 %40)
  %42 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %43 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pt_encode_tip_pgd(%struct.pt_encoder* %42, i32 %44, i32 %46)
  %48 = load i32, i32* @ptu_sync_decoder, align 4
  %49 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %50 = call i32 @ptu_check(i32 %48, %struct.pt_query_decoder* %49)
  %51 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %52 = call i32 @pt_qry_event(%struct.pt_query_decoder* %51, %struct.pt_event* %12, i32 24)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @pts_eos, align 4
  %55 = call i32 @ptu_int_eq(i32 %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @pt_ipc_suppressed, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %3
  %60 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ptu_uint_ne(i32 %61, i32 0)
  br label %76

63:                                               ; preds = %3
  %64 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ptu_uint_eq(i32 %65, i32 0)
  %67 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %72 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ptu_uint_eq(i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %63, %59
  %77 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ptev_async_disabled, align 4
  %80 = call i32 @ptu_int_eq(i32 %78, i32 %79)
  %81 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %10, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ptu_uint_eq(i32 %84, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %76
  %91 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ptu_int_eq(i32 %92, i32 0)
  br label %102

94:                                               ; preds = %76
  %95 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ptu_int_eq(i32 %96, i32 1)
  %98 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @ptu_uint_eq(i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %94, %90
  %103 = call i32 (...) @ptu_passed()
  %104 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  ret i32 %106
}

declare dso_local i32 @pt_last_ip_update_ip(%struct.TYPE_6__*, %struct.pt_packet_ip*, i32*) #1

declare dso_local i32 @pt_encode_fup(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @pt_encode_tip_pgd(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @ptu_check(i32, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_ne(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
