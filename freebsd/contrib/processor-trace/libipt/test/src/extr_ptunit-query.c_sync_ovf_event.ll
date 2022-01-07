; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_sync_ovf_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_sync_ovf_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.TYPE_9__, i32, %struct.pt_encoder, %struct.pt_query_decoder }
%struct.TYPE_9__ = type { i32 }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_packet_ip = type { i32, i32 }
%struct.pt_event = type { i32, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@pt_dfix_max_ip = common dso_local global i32 0, align 4
@pts_event_pending = common dso_local global i32 0, align 4
@ptev_tsx = common dso_local global i32 0, align 4
@pte_noip = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@ptev_overflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*, i32)* @sync_ovf_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_ovf_event(%struct.ptu_decoder_fixture* %0, i32 %1) #0 {
  %3 = alloca %struct.ptunit_result, align 4
  %4 = alloca %struct.ptu_decoder_fixture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_query_decoder*, align 8
  %7 = alloca %struct.pt_encoder*, align 8
  %8 = alloca %struct.pt_packet_ip, align 4
  %9 = alloca %struct.pt_packet_ip, align 4
  %10 = alloca %struct.pt_event, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %14 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %13, i32 0, i32 3
  store %struct.pt_query_decoder* %14, %struct.pt_query_decoder** %6, align 8
  %15 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %16 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %15, i32 0, i32 2
  store %struct.pt_encoder* %16, %struct.pt_encoder** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %8, i32 0, i32 0
  store i32 132, i32* %17, align 4
  %18 = load i32, i32* @pt_dfix_max_ip, align 4
  %19 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %8, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %9, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %9, i32 0, i32 1
  store i32 204, i32* %22, align 4
  %23 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %24 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %23, i32 0, i32 0
  %25 = call i32 @pt_last_ip_init(%struct.TYPE_9__* %24)
  %26 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %27 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %26, i32 0, i32 0
  %28 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %29 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %28, i32 0, i32 1
  %30 = call i32 @pt_last_ip_update_ip(%struct.TYPE_9__* %27, %struct.pt_packet_ip* %9, i32* %29)
  %31 = load %struct.pt_encoder*, %struct.pt_encoder** %7, align 8
  %32 = call i32 @pt_encode_psb(%struct.pt_encoder* %31)
  %33 = load %struct.pt_encoder*, %struct.pt_encoder** %7, align 8
  %34 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %8, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pt_encode_fup(%struct.pt_encoder* %33, i32 %35, i32 %37)
  %39 = load %struct.pt_encoder*, %struct.pt_encoder** %7, align 8
  %40 = call i32 @pt_encode_mode_tsx(%struct.pt_encoder* %39, i32 0)
  %41 = load %struct.pt_encoder*, %struct.pt_encoder** %7, align 8
  %42 = call i32 @pt_encode_tsc(%struct.pt_encoder* %41, i32 4096)
  %43 = load %struct.pt_encoder*, %struct.pt_encoder** %7, align 8
  %44 = call i32 @pt_encode_ovf(%struct.pt_encoder* %43)
  %45 = load %struct.pt_encoder*, %struct.pt_encoder** %7, align 8
  %46 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %9, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pt_encode_fup(%struct.pt_encoder* %45, i32 %47, i32 %49)
  %51 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %52 = call i32 @pt_qry_sync_forward(%struct.pt_query_decoder* %51, i32* %11)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @pts_event_pending, align 4
  %55 = call i32 @ptu_int_eq(i32 %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %8, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ptu_uint_eq(i32 %56, i32 %58)
  %60 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %61 = call i32 @pt_qry_event(%struct.pt_query_decoder* %60, %struct.pt_event* %10, i32 32)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @pts_event_pending, align 4
  %64 = call i32 @ptu_int_eq(i32 %62, i32 %63)
  %65 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ptu_uint_ne(i32 %66, i32 0)
  %68 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ptev_tsx, align 4
  %71 = call i32 @ptu_int_eq(i32 %69, i32 %70)
  %72 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ptu_int_eq(i32 %75, i32 0)
  %77 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ptu_int_eq(i32 %80, i32 0)
  %82 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %8, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ptu_uint_eq(i32 %85, i32 %87)
  %89 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ptu_int_eq(i32 %90, i32 1)
  %92 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ptu_uint_eq(i32 %93, i32 4096)
  %95 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %96 = call i32 @pt_qry_event(%struct.pt_query_decoder* %95, %struct.pt_event* %10, i32 32)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %5, align 4
  switch i32 %97, label %128 [
    i32 131, label %98
    i32 130, label %105
    i32 129, label %105
    i32 128, label %105
    i32 132, label %105
    i32 133, label %105
  ]

98:                                               ; preds = %2
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @pte_noip, align 4
  %101 = sub nsw i32 0, %100
  %102 = call i32 @ptu_int_eq(i32 %99, i32 %101)
  %103 = call i32 (...) @ptu_passed()
  %104 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  br label %131

105:                                              ; preds = %2, %2, %2, %2, %2
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @pts_eos, align 4
  %108 = call i32 @ptu_int_eq(i32 %106, i32 %107)
  %109 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @ptev_overflow, align 4
  %112 = call i32 @ptu_int_eq(i32 %110, i32 %111)
  %113 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %118 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ptu_uint_eq(i32 %116, i32 %120)
  %122 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ptu_int_eq(i32 %123, i32 1)
  %125 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ptu_uint_eq(i32 %126, i32 4096)
  br label %128

128:                                              ; preds = %2, %105
  %129 = call i32 (...) @ptu_passed()
  %130 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %98
  %132 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  ret i32 %133
}

declare dso_local i32 @pt_last_ip_init(%struct.TYPE_9__*) #1

declare dso_local i32 @pt_last_ip_update_ip(%struct.TYPE_9__*, %struct.pt_packet_ip*, i32*) #1

declare dso_local i32 @pt_encode_psb(%struct.pt_encoder*) #1

declare dso_local i32 @pt_encode_fup(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @pt_encode_mode_tsx(%struct.pt_encoder*, i32) #1

declare dso_local i32 @pt_encode_tsc(%struct.pt_encoder*, i32) #1

declare dso_local i32 @pt_encode_ovf(%struct.pt_encoder*) #1

declare dso_local i32 @pt_qry_sync_forward(%struct.pt_query_decoder*, i32*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @ptu_uint_ne(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
