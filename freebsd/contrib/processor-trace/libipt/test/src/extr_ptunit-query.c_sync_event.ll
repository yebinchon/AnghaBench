; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_sync_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-query.c_sync_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptu_decoder_fixture = type { %struct.TYPE_7__, i32, %struct.pt_encoder, %struct.pt_query_decoder }
%struct.TYPE_7__ = type { i32 }
%struct.pt_encoder = type { i32 }
%struct.pt_query_decoder = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_packet_ip = type { i32, i32 }
%struct.pt_event = type { i64, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }

@pt_mob_tsx_intx = common dso_local global i32 0, align 4
@pts_event_pending = common dso_local global i32 0, align 4
@pts_ip_suppressed = common dso_local global i32 0, align 4
@pts_eos = common dso_local global i32 0, align 4
@ptev_tsx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptu_decoder_fixture*, i32)* @sync_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_event(%struct.ptu_decoder_fixture* %0, i32 %1) #0 {
  %3 = alloca %struct.ptunit_result, align 4
  %4 = alloca %struct.ptu_decoder_fixture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_query_decoder*, align 8
  %7 = alloca %struct.pt_encoder*, align 8
  %8 = alloca %struct.pt_packet_ip, align 4
  %9 = alloca %struct.pt_event, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ptu_decoder_fixture* %0, %struct.ptu_decoder_fixture** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %13 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %12, i32 0, i32 3
  store %struct.pt_query_decoder* %13, %struct.pt_query_decoder** %6, align 8
  %14 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %15 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %14, i32 0, i32 2
  store %struct.pt_encoder* %15, %struct.pt_encoder** %7, align 8
  store i64 0, i64* %10, align 8
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %8, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %8, i32 0, i32 1
  store i32 204, i32* %18, align 4
  %19 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %20 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %19, i32 0, i32 0
  %21 = call i32 @pt_last_ip_init(%struct.TYPE_7__* %20)
  %22 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %23 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %22, i32 0, i32 0
  %24 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %25 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %24, i32 0, i32 1
  %26 = call i32 @pt_last_ip_update_ip(%struct.TYPE_7__* %23, %struct.pt_packet_ip* %8, i32* %25)
  %27 = load %struct.pt_encoder*, %struct.pt_encoder** %7, align 8
  %28 = call i32 @pt_encode_psb(%struct.pt_encoder* %27)
  %29 = load %struct.pt_encoder*, %struct.pt_encoder** %7, align 8
  %30 = load i32, i32* @pt_mob_tsx_intx, align 4
  %31 = call i32 @pt_encode_mode_tsx(%struct.pt_encoder* %29, i32 %30)
  %32 = load %struct.pt_encoder*, %struct.pt_encoder** %7, align 8
  %33 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %8, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.pt_packet_ip, %struct.pt_packet_ip* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pt_encode_fup(%struct.pt_encoder* %32, i32 %34, i32 %36)
  %38 = load %struct.pt_encoder*, %struct.pt_encoder** %7, align 8
  %39 = call i32 @pt_encode_psbend(%struct.pt_encoder* %38)
  %40 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %41 = call i32 @pt_qry_sync_forward(%struct.pt_query_decoder* %40, i64* %10)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %59 [
    i32 131, label %43
    i32 130, label %49
    i32 129, label %49
    i32 128, label %49
    i32 132, label %49
    i32 133, label %49
  ]

43:                                               ; preds = %2
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @pts_event_pending, align 4
  %46 = load i32, i32* @pts_ip_suppressed, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @ptu_int_eq(i32 %44, i32 %47)
  br label %59

49:                                               ; preds = %2, %2, %2, %2, %2
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @pts_event_pending, align 4
  %52 = call i32 @ptu_int_eq(i32 %50, i32 %51)
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %55 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ptu_uint_eq(i64 %53, i32 %57)
  br label %59

59:                                               ; preds = %2, %49, %43
  %60 = load %struct.pt_query_decoder*, %struct.pt_query_decoder** %6, align 8
  %61 = call i32 @pt_qry_event(%struct.pt_query_decoder* %60, %struct.pt_event* %9, i32 40)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @pts_eos, align 4
  %64 = call i32 @ptu_int_eq(i32 %62, i32 %63)
  %65 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %9, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @ptu_uint_ne(i64 %66, i32 0)
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 131
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %9, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ptu_uint_ne(i64 %72, i32 0)
  br label %87

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %9, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @ptu_uint_eq(i64 %76, i32 0)
  %78 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %9, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ptu_decoder_fixture*, %struct.ptu_decoder_fixture** %4, align 8
  %83 = getelementptr inbounds %struct.ptu_decoder_fixture, %struct.ptu_decoder_fixture* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ptu_uint_eq(i64 %81, i32 %85)
  br label %87

87:                                               ; preds = %74, %70
  %88 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %9, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ptev_tsx, align 4
  %91 = call i32 @ptu_int_eq(i32 %89, i32 %90)
  %92 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %9, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ptu_int_eq(i32 %95, i32 1)
  %97 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %9, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ptu_int_eq(i32 %100, i32 0)
  %102 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %9, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ptu_int_eq(i32 %103, i32 0)
  %105 = call i32 (...) @ptu_passed()
  %106 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %3, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  ret i32 %108
}

declare dso_local i32 @pt_last_ip_init(%struct.TYPE_7__*) #1

declare dso_local i32 @pt_last_ip_update_ip(%struct.TYPE_7__*, %struct.pt_packet_ip*, i32*) #1

declare dso_local i32 @pt_encode_psb(%struct.pt_encoder*) #1

declare dso_local i32 @pt_encode_mode_tsx(%struct.pt_encoder*, i32) #1

declare dso_local i32 @pt_encode_fup(%struct.pt_encoder*, i32, i32) #1

declare dso_local i32 @pt_encode_psbend(%struct.pt_encoder*) #1

declare dso_local i32 @pt_qry_sync_forward(%struct.pt_query_decoder*, i64*) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_uint_eq(i64, i32) #1

declare dso_local i32 @pt_qry_event(%struct.pt_query_decoder*, %struct.pt_event*, i32) #1

declare dso_local i32 @ptu_uint_ne(i64, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
