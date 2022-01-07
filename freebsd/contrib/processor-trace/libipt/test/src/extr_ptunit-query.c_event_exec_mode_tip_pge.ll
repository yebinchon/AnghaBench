; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_exec_mode_tip_pge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_exec_mode_tip_pge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.TYPE_8__, i32, %struct.pt_encoder, %struct.pt_query_decoder }
%struct.TYPE_8__ = type { i64 }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i64 }
%struct.ptunit_result = type { i32 }
%struct.pt_packet_ip = type { i32, i32 }
%struct.pt_event = type { i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64 }

@ptem_16bit = common dso_local global i32 0, align 4
@pt_dfix_max_ip = common dso_local global i32 0, align 4
@ptu_sync_decoder = common dso_local global i32 0, align 4
@pt_ipc_suppressed = common dso_local global i32 0, align 4
@pte_bad_packet = common dso_local global i32 0, align 4
@pts_event_pending = common dso_local global i32 0, align 4
@ptev_enabled = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@ptev_exec_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*, i32, i64)* @event_exec_mode_tip_pge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_exec_mode_tip_pge(%struct.ptu_decoder_fixture* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ptunit_result, align 4
  %5 = alloca %struct.ptu_decoder_fixture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pt_query_decoder*, align 8
  %9 = alloca %struct.pt_encoder*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pt_packet_ip, align 4
  %12 = alloca %struct.pt_event, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %16 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %15, i32 0, i32 3
  store %struct.pt_query_decoder* %16, %struct.pt_query_decoder** %8, align 8
  %17 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %18 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %17, i32 0, i32 2
  store %struct.pt_encoder* %18, %struct.pt_encoder** %9, align 8
  %19 = load i32, i32* @ptem_16bit, align 4
  store i32 %19, i32* %10, align 4
  store i64 0, i64* %13, align 8
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @pt_dfix_max_ip, align 4
  %23 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %25 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %24, i32 0, i32 0
  %26 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %27 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %26, i32 0, i32 1
  %28 = call i32 @pt_last_ip_update_ip(%struct.TYPE_8__* %25, %struct.pt_packet_ip* %11, i32* %27)
  %29 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @pt_encode_mode_exec(%struct.pt_encoder* %29, i32 %30)
  %32 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %33 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pt_encode_tip_pge(%struct.pt_encoder* %32, i32 %34, i32 %36)
  %38 = load i32, i32* @ptu_sync_decoder, align 4
  %39 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %40 = call i32 @ptu_check(i32 %38, %struct.pt_query_decoder* %39)
  %41 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %42 = getelementptr inbounds %struct.pt_query_decoder, %struct.pt_query_decoder* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %44 = call i32 @pt_qry_event(%struct.pt_query_decoder* %43, %struct.pt_event* %12, i32 40)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @pt_ipc_suppressed, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %3
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @pte_bad_packet, align 4
  %51 = sub nsw i32 0, %50
  %52 = call i32 @ptu_int_eq(i32 %49, i32 %51)
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @ptu_uint_eq(i64 %53, i64 0)
  br label %126

55:                                               ; preds = %3
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @pts_event_pending, align 4
  %58 = call i32 @ptu_int_eq(i32 %56, i32 %57)
  %59 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ptev_enabled, align 4
  %62 = call i32 @ptu_int_eq(i32 %60, i32 %61)
  %63 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %68 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ptu_uint_eq(i64 %66, i64 %70)
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %55
  %75 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ptu_int_eq(i32 %76, i32 0)
  br label %86

78:                                               ; preds = %55
  %79 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ptu_int_eq(i32 %80, i32 1)
  %82 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @ptu_uint_eq(i64 %83, i64 %84)
  br label %86

86:                                               ; preds = %78, %74
  %87 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %88 = call i32 @pt_qry_event(%struct.pt_query_decoder* %87, %struct.pt_event* %12, i32 40)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @pts_eos, align 4
  %91 = call i32 @ptu_int_eq(i32 %89, i32 %90)
  %92 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ptev_exec_mode, align 4
  %95 = call i32 @ptu_int_eq(i32 %93, i32 %94)
  %96 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @ptu_int_eq(i32 %99, i32 %100)
  %102 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %107 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @ptu_uint_eq(i64 %105, i64 %109)
  %111 = load i64, i64* %7, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %86
  %114 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ptu_int_eq(i32 %115, i32 0)
  br label %125

117:                                              ; preds = %86
  %118 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ptu_int_eq(i32 %119, i32 1)
  %121 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %7, align 8
  %124 = call i32 @ptu_uint_eq(i64 %122, i64 %123)
  br label %125

125:                                              ; preds = %117, %113
  br label %126

126:                                              ; preds = %125, %48
  %127 = call i32 (...) @ptu_passed()
  %128 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  store i32 %127, i32* %128, align 4
  %129 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  ret i32 %130
}

declare dso_local i32 @pt_last_ip_update_ip(%struct.TYPE_8__*, %struct.pt_packet_ip*, i32*) #1

declare dso_local i32 @pt_encode_mode_exec(%struct.pt_encoder*, i32) #1

declare dso_local i32 @pt_encode_tip_pge(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @ptu_check(i32, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i64, i64) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
