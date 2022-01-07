; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_exec_mode_tip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_exec_mode_tip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.TYPE_6__, i32, %struct.pt_encoder, %struct.pt_query_decoder }
%struct.TYPE_6__ = type { i64 }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_packet_ip = type { i32, i32 }
%struct.pt_event = type { i64, i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@ptem_16bit = common dso_local global i32 0, align 4
@pt_dfix_max_ip = common dso_local global i32 0, align 4
@ptu_sync_decoder = common dso_local global i32 0, align 4
@pt_ipc_suppressed = common dso_local global i32 0, align 4
@ptev_exec_mode = common dso_local global i32 0, align 4
@pts_ip_suppressed = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*, i32, i64)* @event_exec_mode_tip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_exec_mode_tip(%struct.ptu_decoder_fixture* %0, i32 %1, i64 %2) #0 {
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
  %28 = call i32 @pt_last_ip_update_ip(%struct.TYPE_6__* %25, %struct.pt_packet_ip* %11, i32* %27)
  %29 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @pt_encode_mode_exec(%struct.pt_encoder* %29, i32 %30)
  %32 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %33 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pt_encode_tip(%struct.pt_encoder* %32, i32 %34, i32 %36)
  %38 = load i32, i32* @ptu_sync_decoder, align 4
  %39 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %40 = call i32 @ptu_check(i32 %38, %struct.pt_query_decoder* %39)
  %41 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %42 = call i32 @pt_qry_event(%struct.pt_query_decoder* %41, %struct.pt_event* %12, i32 40)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @ptu_int_eq(i32 %43, i32 0)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @pt_ipc_suppressed, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ptu_uint_ne(i64 %50, i32 0)
  br label %65

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ptu_uint_eq(i64 %54, i64 0)
  %56 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %61 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @ptu_uint_eq(i64 %59, i64 %63)
  br label %65

65:                                               ; preds = %52, %48
  %66 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ptev_exec_mode, align 4
  %69 = call i32 @ptu_int_eq(i32 %67, i32 %68)
  %70 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @ptu_int_eq(i32 %73, i32 %74)
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ptu_int_eq(i32 %80, i32 0)
  br label %90

82:                                               ; preds = %65
  %83 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ptu_int_eq(i32 %84, i32 1)
  %86 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %12, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @ptu_uint_eq(i64 %87, i64 %88)
  br label %90

90:                                               ; preds = %82, %78
  %91 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %92 = call i32 @pt_qry_indirect_branch(%struct.pt_query_decoder* %91, i64* %13)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @pt_ipc_suppressed, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @pts_ip_suppressed, align 4
  %99 = load i32, i32* @pts_eos, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @ptu_int_eq(i32 %97, i32 %100)
  br label %112

102:                                              ; preds = %90
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @pts_eos, align 4
  %105 = call i32 @ptu_int_eq(i32 %103, i32 %104)
  %106 = load i64, i64* %13, align 8
  %107 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %108 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @ptu_uint_eq(i64 %106, i64 %110)
  br label %112

112:                                              ; preds = %102, %96
  %113 = call i32 (...) @ptu_passed()
  %114 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  ret i32 %116
}

declare dso_local i32 @pt_last_ip_update_ip(%struct.TYPE_6__*, %struct.pt_packet_ip*, i32*) #1

declare dso_local i32 @pt_encode_mode_exec(%struct.pt_encoder*, i32) #1

declare dso_local i32 @pt_encode_tip(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @ptu_check(i32, %struct.pt_query_decoder*) #1

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_ne(i64, i32) #1

declare dso_local i32 @ptu_uint_eq(i64, i64) #1

declare dso_local i32 @pt_qry_indirect_branch(%struct.pt_query_decoder*, i64*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
