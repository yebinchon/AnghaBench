; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_overflow_tip_pge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_event_overflow_tip_pge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.TYPE_7__, i32, %struct.pt_encoder, %struct.pt_query_decoder }
%struct.TYPE_7__ = type { i32 }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pt_packet_ip = type { i32, i32 }

@ptu_sync_decoder = common dso_local global i32 0, align 4
@pts_event_pending = common dso_local global i32 0, align 4
@ptev_overflow = common dso_local global i32 0, align 4
@pte_bad_packet = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@ptev_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*, i32, i32)* @event_overflow_tip_pge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_overflow_tip_pge(%struct.ptu_decoder_fixture* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ptunit_result, align 4
  %5 = alloca %struct.ptu_decoder_fixture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_query_decoder*, align 8
  %9 = alloca %struct.pt_encoder*, align 8
  %10 = alloca %struct.pt_event, align 4
  %11 = alloca %struct.pt_packet_ip, align 4
  %12 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %14 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %13, i32 0, i32 3
  store %struct.pt_query_decoder* %14, %struct.pt_query_decoder** %8, align 8
  %15 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %16 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %15, i32 0, i32 2
  store %struct.pt_encoder* %16, %struct.pt_encoder** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 1
  store i32 204, i32* %19, align 4
  %20 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %21 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %20, i32 0, i32 0
  %22 = call i32 @pt_last_ip_init(%struct.TYPE_7__* %21)
  %23 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %24 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %23, i32 0, i32 0
  %25 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %26 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %25, i32 0, i32 1
  %27 = call i32 @pt_last_ip_update_ip(%struct.TYPE_7__* %24, %struct.pt_packet_ip* %11, i32* %26)
  %28 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %29 = call i32 @pt_encode_ovf(%struct.pt_encoder* %28)
  %30 = load %struct.pt_encoder*, %struct.pt_encoder** %9, align 8
  %31 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %11, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pt_encode_tip_pge(%struct.pt_encoder* %30, i32 %32, i32 %34)
  %36 = load i32, i32* @ptu_sync_decoder, align 4
  %37 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %38 = call i32 @ptu_check(i32 %36, %struct.pt_query_decoder* %37)
  %39 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %40 = call i32 @pt_qry_event(%struct.pt_query_decoder* %39, %struct.pt_event* %10, i32 20)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @pts_event_pending, align 4
  %43 = call i32 @ptu_int_eq(i32 %41, i32 %42)
  %44 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ptev_overflow, align 4
  %47 = call i32 @ptu_int_eq(i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ptu_uint_ne(i32 %49, i32 0)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %3
  %54 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ptu_int_eq(i32 %55, i32 0)
  br label %65

57:                                               ; preds = %3
  %58 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ptu_int_eq(i32 %59, i32 1)
  %61 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ptu_uint_eq(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %53
  %66 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %8, align 8
  %67 = call i32 @pt_qry_event(%struct.pt_query_decoder* %66, %struct.pt_event* %10, i32 20)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %6, align 4
  switch i32 %68, label %106 [
    i32 131, label %69
    i32 130, label %74
    i32 129, label %74
    i32 128, label %74
    i32 132, label %74
    i32 133, label %74
  ]

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @pte_bad_packet, align 4
  %72 = sub nsw i32 0, %71
  %73 = call i32 @ptu_int_eq(i32 %70, i32 %72)
  br label %106

74:                                               ; preds = %65, %65, %65, %65, %65
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @pts_eos, align 4
  %77 = call i32 @ptu_int_eq(i32 %75, i32 %76)
  %78 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ptev_enabled, align 4
  %81 = call i32 @ptu_int_eq(i32 %79, i32 %80)
  %82 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %5, align 8
  %87 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ptu_uint_eq(i32 %85, i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %74
  %94 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ptu_int_eq(i32 %95, i32 0)
  br label %105

97:                                               ; preds = %74
  %98 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ptu_int_eq(i32 %99, i32 1)
  %101 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %10, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @ptu_uint_eq(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %97, %93
  br label %106

106:                                              ; preds = %65, %105, %69
  %107 = call i32 (...) @ptu_passed()
  %108 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  ret i32 %110
}

declare dso_local i32 @pt_last_ip_init(%struct.TYPE_7__*) #1

declare dso_local i32 @pt_last_ip_update_ip(%struct.TYPE_7__*, %struct.pt_packet_ip*, i32*) #1

declare dso_local i32 @pt_encode_ovf(%struct.pt_encoder*) #1

declare dso_local i32 @pt_encode_tip_pge(%struct.pt_encoder*, i32, i32) #1

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
